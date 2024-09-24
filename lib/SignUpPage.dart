import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, bottom: 20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.black, // Circle color black
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white), // Icon color white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome!",
                        style: GoogleFonts.sourceCodePro(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color black
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28, bottom: 18),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            fillColor: Colors.white, // Field fill color white
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black), // Border color black
                            ),
                            labelStyle: TextStyle(color: Colors.black), // Label text color black
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 18),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                          obscureText: !_passwordVisible,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: _isLoading
                            ? SpinKitDoubleBounce(color: Colors.black) // Display loading animation
                            : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _isLoading = true;
                            });
                            // Simulate a delay for loading and then turn off loading
                            Future.delayed(Duration(seconds: 4), () {
                              setState(() {
                                _isLoading = false;
                              });
                            });
                          },
                          child: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}