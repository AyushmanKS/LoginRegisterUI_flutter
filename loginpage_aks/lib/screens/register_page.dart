import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage_aks/components/bottom_dividers.dart';
import 'package:loginpage_aks/components/buttons.dart';
import 'package:loginpage_aks/components/divider_text.dart';
import 'package:loginpage_aks/components/socialmedia_auth.dart';
import 'package:loginpage_aks/components/text_fields.dart';
import 'package:loginpage_aks/screens/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.png'),
            fit: BoxFit.cover,
          ),
        ),
        // Scaffold
        child: Scaffold(
          extendBodyBehindAppBar: true,
          // App Bar
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),

            // Main body Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.070),

                // Create Account
                Padding(
                  padding: const EdgeInsets.only(left: 45.0, top: 35),
                  child: Text(
                    'Create an account',
                    style: GoogleFonts.sacramento(
                      textStyle: const TextStyle(
                          fontSize: 52,
                          color: Colors.black, //Color(0xff02d4c2),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // UserName Text field
                const Padding(
                    padding: EdgeInsets.only(
                        left: 20, top: 20, right: 20, bottom: 10),
                    child:
                        Textfields(text: "Username", iconType: Icons.person)),

                // Email Text field
                const Padding(
                    padding: EdgeInsets.only(
                        left: 20, top: 20, right: 20, bottom: 10),
                    child: Textfields(text: "Email", iconType: Icons.mail)),

                // Password Text Field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, right: 20, bottom: 0),
                  child: TextField(
                    obscureText: !_isVisible,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.black),
                      // Prefix Icon
                      prefixIcon: const Icon(Icons.key_outlined),
                      // Suffix: Eye icon
                      suffixIcon: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        // Visible Icon
                        icon: _isVisible
                            ? const Icon(
                                Icons.visibility,
                                color: Colors.black,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.030),

                // Sign up in Button
                Materialbutton(
                  size: size,
                  text: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),

                SizedBox(height: size.height * 0.050),

                // or Sign up with/ Dividers
                const DividerText(
                  text: Text(
                    'Or Sign up with',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.070),

                // google/apple/instagram/facebook authentication
                const SocialMediaAuth(),

                SizedBox(height: size.height * 0.070),

                // Bottom Dividers
                const BottomDividers(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
