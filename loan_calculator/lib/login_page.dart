import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI",
      theme: ThemeData.dark(),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b1b1b),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                _buildTextField(
                  hint: "Username",
                  icon: Icons.person_outline,
                ),

                const SizedBox(height: 18),

                _buildTextField(
                  hint: "Password",
                  icon: Icons.lock_outline,
                  obscure: true,
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: 130,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                      elevation: 8,
                      shadowColor: Colors.white70,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't Have An Account? ",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hint,
    required IconData icon,
    bool obscure = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.cyanAccent,
          width: 1.2,
        ),
      ),
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Colors.cyanAccent,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white54,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
        ),
      ),
    );
  }
}