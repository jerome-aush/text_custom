import 'package:flutter/material.dart';
import 'package:text_custom/text_custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextCustom("Text Custom Plugin",size: 22,color: Colors.white,),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
          children: const [
            ///Using Normal Text
            TextCustom(
              "jerome Aushlin",
              size: 25,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 4),

            /// Using Decoration
            TextCustom("jerome Aushlin",
                size: 25,
                decoration: TextDecoration.underline,
                textDecorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.orange,
                decorationTickness: 2,
                fontWeight: FontWeight.bold),
            SizedBox(height: 4),

            ///Using letterspacing and word spacing
            TextCustom("Jerome Aushlin", letterSpacing: 3, size: 25),
            SizedBox(
              height: 4,
            ),
            TextCustom("Jerome Aushlin", wordSpacing: 6, size: 25),

            /// Textalign
            SizedBox(height: 4),
            TextCustom("Hi iam Flutter Developer From TamilNadu, I have 10 months experienced in Flutter ",
                size: 16,
                align: TextAlign.center,
                fontWeight: FontWeight.normal),


            /// Textalign with Maxline
            SizedBox(height: 4),
            TextCustom("Hi iam Flutter Developer From TamilNadu, I have 10 months experienced in Flutter ",
                size: 16,
                maxLines: 1,
                align: TextAlign.center,
                fontWeight: FontWeight.normal)
          ]),
    );
  }
}
