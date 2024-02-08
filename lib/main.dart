// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/loadpage.dart';
import 'package:flutter_application_1/myrooms.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_application_1/room.dart';
import 'package:flutter_application_1/Anouncement.dart';
import 'package:flutter_application_1/joinroom.dart';
import 'package:flutter_application_1/createroom.dart';
import 'package:flutter_application_1/Events.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://aiadfhpajrtlxjiypkuk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFpYWRmaHBhanJ0bHhqaXlwa3VrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkwMTQ2NjcsImV4cCI6MjAxNDU5MDY2N30.7XfE2XuXcueNRp8nbgXN52z3CYvpe7PeVXf4pB_V8t8',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: supabase.auth.currentSession != null ? '/register' : '/',
      home: MyWidget(),
    );
  }
}

final supabase = Supabase.instance.client;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  User? _user;
  @override
  void initState() {
    _getAuth();
    super.initState();
  }

  Future<void> _getAuth() async {
    setState(() {
      _user = Supabase.instance.client.auth.currentUser;
    });
    Supabase.instance.client.auth.onAuthStateChange.listen((event) {
      setState(() {
        _user = event.session?.user;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: LoadingPage(),
      routes: {
        '/Sports': (context) => room(),
        '/Anouncement': (context) => aListScreen(),
        '/Events': (context) => EventListScreen(),
        '/Create Room': (context) => createRoom(),
        '/Join Room': (context) => joinroom(),
        '/my Room': (context) => myrooms(
              roomId: 1,
              userId: 1,
            ),
      },
    ));
  }
}
