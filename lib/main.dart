import 'package:flutter/material.dart';
import 'package:moviles_demo/U1/providers/contacts_provider.dart';
import 'package:moviles_demo/U1/screens/contact_form.dart';
import 'package:moviles_demo/U1/screens/contacts_screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo TEST',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 129, 17),
          ),
        ),
        routes: {
          '/': (_) => ContactsScreen(),
          '/newcontact': (_) => ContactForm(),
        },
        initialRoute: '/',
      ),
    );
  }
}
