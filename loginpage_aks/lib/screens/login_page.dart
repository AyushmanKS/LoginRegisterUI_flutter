import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage_aks/components/bottom_dividers.dart';
import 'package:loginpage_aks/components/buttons.dart';
import 'package:loginpage_aks/components/divider_text.dart';
import 'package:loginpage_aks/components/socialmedia_auth.dart';
import 'package:loginpage_aks/components/text_fields.dart';
import 'package:loginpage_aks/screens/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background1.png'),
            fit: BoxFit.cover,
          ),
        ),
        // Scaffold
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),

            // Main body Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.050),

                // Welcome Text
                Padding(
                  padding: const EdgeInsets.only(left: 45.0, top: 35),
                  child: Text(
                    'Welcome',
                    style: GoogleFonts.sacramento(
                      textStyle: const TextStyle(
                          fontSize: 50,
                          color: Colors.black, //Color(0xff02d4c2),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                // Back ! Text
                Padding(
                  padding: const EdgeInsets.only(left: 45.0, top: 2),
                  child: Text(
                    ' Back !',
                    style: GoogleFonts.sacramento(
                      textStyle: const TextStyle(
                          fontSize: 50,
                          color: Colors.black, //Color(0xff02d4c2),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),

                // Email Text field
                const Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
                  child: Textfields(
                    text: "Email",
                    iconType: Icons.mail,
                  ),
                ),

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

                // 'Forgot Password' Text
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(right: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password ?',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.020),

                // Sign in Button
                Materialbutton(
                  size: size,
                  text: const Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),

                SizedBox(height: size.height * 0.050),

                // or continue with/ Dividers.........
                const DividerText(
                  text: Text(
                    'Or continue with',
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

                // Don't have an account  Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text(
                        "Don't have an account? Register.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
