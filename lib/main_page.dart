import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/w95_clouds.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 340,
                      height: 250,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC0C0C0).withOpacity(0.46),
                        border: const Border(
                          top: BorderSide(color: Colors.white, width: 1.5),
                          left: BorderSide(color: Colors.white, width: 1.5),
                          bottom: BorderSide(
                            color: Color(0xFF868A8E),
                            width: 1.5,
                          ),
                          right: BorderSide(
                            color: Color(0xFF868A8E),
                            width: 1.5,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/images/pepsi_logo.png'),
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                const Text(
                                  "username",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: TextField95(
                                    obscureText: false,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Text(
                                  "password",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: TextField95(
                                    obscureText: true,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Button95(
                                    child: Text(
                                      'login',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Button95(
                                    child: Text(
                                      'register',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Container(
                            //   width: 226,
                            //   height: 40,
                            //   decoration: BoxDecoration(
                            //     image: DecorationImage(
                            //       image: AssetImage(
                            //         'assets/images/button_background.png',
                            //       ),
                            //       opacity: 0.36,
                            //     ),
                            //     borderRadius: BorderRadius.circular(5),
                            //     border: const Border(
                            //       top: BorderSide(
                            //         color: Colors.white,
                            //         width: 1.5,
                            //       ),
                            //       left: BorderSide(
                            //         color: Colors.white,
                            //         width: 1.5,
                            //       ),
                            //       bottom: BorderSide(
                            //         color: Color(0xFF868A8E),
                            //         width: 1.5,
                            //       ),
                            //       right: BorderSide(
                            //         color: Color(0xFF868A8E),
                            //         width: 1.5,
                            //       ),
                            //     ),
                            //   ),
                            //   child: Text('login'),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
