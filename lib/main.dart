import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'process_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptographer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToProcess(BuildContext context, String mode) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProcessScreen(mode: mode),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cryptographer',style: TextStyle(color: Colors.white,)),
        backgroundColor: Colors.blueGrey,      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 275,
              height: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                onPressed: () => navigateToProcess(context, 'encrypt'),
                child: Text('Encrypt Text',style: GoogleFonts.roboto(fontSize: 32)),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 275,
              height: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                onPressed: () => navigateToProcess(context, 'decrypt'),
                child:  Text('Decrypt Text',style: GoogleFonts.roboto(fontSize: 32)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}