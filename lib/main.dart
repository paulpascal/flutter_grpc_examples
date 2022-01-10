import 'package:flutter/material.dart';
import 'package:flutter_grpc_examples/services/greet_service.dart';
import 'package:flutter_grpc_examples/services/sum_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grpc/grpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grpc Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      home: const MyHomePage(title: 'Flutter Grpc Examples Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _greetingFormKey = GlobalKey<FormState>();
  final _sumFormKey = GlobalKey<FormState>();
  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();
  final _firstNumberCtrl = TextEditingController();
  final _secondNumberCtrl = TextEditingController();

  String _sumResult = '0';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //
    _firstNameCtrl.dispose();
    _lastNameCtrl.dispose();
    //
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.mail_outline),
                text: 'Greet !',
              ),
              Tab(
                icon: Icon(Icons.add_box_outlined),
                text: 'Sum !',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildGreetViewWidget(),
            _buildSumViewWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildGreetViewWidget() {
    return Card(
      color: Colors.teal[50],
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _greetingFormKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Fill this form to greet the GRPC Word !'),
                const SizedBox(height: 16.0),
                TextFormField(
                    controller: _firstNameCtrl,
                    decoration: const InputDecoration(
                      labelText: 'First name',
                    ),
                    validator: (val) => val != null && val.isNotEmpty
                        ? null
                        : 'Please be kind enter your first name :)'),
                const SizedBox(height: 16.0),
                TextFormField(
                    controller: _lastNameCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Last name',
                    ),
                    validator: (val) => val != null && val.isNotEmpty
                        ? null
                        : 'Please be kind enter your last name :)'),
                const SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: _greetGrpcWord,
                  icon: const Icon(Icons.send_outlined),
                  label: const Text('Greet !'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSumViewWidget() {
    return Card(
      color: Colors.pink[50],
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _sumFormKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Fill this form to test the GRPC SUPER SUM  !'),
                const SizedBox(height: 16.0),
                Container(
                  height: 86.0,
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'RESULT',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        _sumResult,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                    controller: _firstNumberCtrl,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'First number',
                    ),
                    validator: (val) => val != null && val.isNotEmpty
                        ? null
                        : 'Please enter a valid number :)'),
                const SizedBox(height: 16.0),
                TextFormField(
                    controller: _secondNumberCtrl,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Second number',
                    ),
                    validator: (val) => val != null && val.isNotEmpty
                        ? null
                        : 'Please enter a valid number :)'),
                const SizedBox(height: 16.0),
                ElevatedButton.icon(
                  onPressed: _testGrpcSuperSum,
                  icon: const Icon(Icons.send_outlined),
                  label: const Text('SUM UP !'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _greetGrpcWord() async {
    if (!_greetingFormKey.currentState!.validate()) {
      return;
    }
    try {
      //
      final _greetingResponse = await GreetService.greet(
        _firstNameCtrl.text,
        _lastNameCtrl.text,
      );
      //
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(_greetingResponse.result),
        ),
      );
    } catch (e, s) {
      if (e is GrpcError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            content: Text('Could not greet ! ${e.message} [Code: ${e.code}]'),
          ),
        );
      }
    }
  }

  Future<void> _testGrpcSuperSum() async {
    if (!_sumFormKey.currentState!.validate()) {
      return;
    }
    //
    final _sumResponse = await SumService.sum(
      int.tryParse(_firstNumberCtrl.text) ?? 0,
      int.tryParse(_secondNumberCtrl.text) ?? 0,
    );
    setState(() {
      _sumResult = _sumResponse.result.toString();
    });
    //
  }
}
