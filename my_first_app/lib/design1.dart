import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Design1(),
  ));
}

class Design1 extends StatelessWidget {
  const Design1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [

                // Header
                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.lightBlue[200],
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 15),
                  child: const Text(
                    "Layout Design",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // ================= TOP SECTION =================
                SizedBox(
                  height: 170,
                  child: Row(
                    children: [

                      // Left Orange
                      Container(
                        width: 50,
                        color: Colors.deepOrange,
                      ),

                      const SizedBox(width: 10),

                      // Blue Boxes
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Container(
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Orange Circles
                      Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 10),

                      // Green Box
                      Container(
                        width: 50,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Purple Bar
                Container(
                  height: 55,
                  width: double.infinity,
                  color: Colors.purple,
                ),

                const SizedBox(height: 10),

                // Purple Bar
                Container(
                  height: 55,
                  width: double.infinity,
                  color: Colors.purple,
                ),

                const SizedBox(height: 20),

                // ================= BOTTOM SECTION =================
                SizedBox(
                  height: 170,
                  child: Row(
                    children: [

                      // Grey Boxes
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.grey[300],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Container(
                                color: Colors.grey[300],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Small Orange Boxes
                      SizedBox(
                        width: 40,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.deepOrange[300],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Container(
                                color: Colors.deepOrange[300],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Cyan Boxes
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.cyan,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Container(
                                color: Colors.cyan,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 10),

                      // Black Boxes
                      SizedBox(
                        width: 50,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Container(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}