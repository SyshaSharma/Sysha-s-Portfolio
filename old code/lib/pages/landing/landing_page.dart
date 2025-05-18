import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background with radial gradient that fades to white at the top
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 1.0,
                colors: [
                  Color(0xFF444444),  // Darker gray at center
                  Color(0xFF9d9d9d),  // Lighter gray at edges
                ],
              ),
            ),
          ),
          // Overlay gradient that fades to white at the top
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.7, 1.0], // Control the fade transition points
                colors: [
                  Colors.transparent, // No effect at the bottom 70% // Start fading to white
                  Colors.white,      // Completely white at the top
                ],
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: Column(
                children: [
                  // Navigation bar in the white faded area
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Center logo - absolutely centered
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset(
                            'assets/landing/logo.png',
                            width: 250,
                          ),
                        ),
                        
                        // Navigation items in row
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Left side navigation items
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('About', 
                                      style: GoogleFonts.bodoniModa(
                                        textStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        )
                                      )
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('Work', 
                                      style: GoogleFonts.bodoniModa(
                                        textStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        )
                                      )
                                    ),
                                  ),
                                ],
                              ),
                              
                              // Right side navigation items
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('Play', 
                                      style: GoogleFonts.bodoniModa(
                                        textStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        )
                                      )
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('Contact', 
                                      style: GoogleFonts.bodoniModa(
                                        textStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        )
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Main content
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sysha's Portfolio",
                            style: GoogleFonts.bodoniModa(
                              textStyle: const TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Welcome to my portfolio",
                            style: GoogleFonts.bodoniModa(
                              textStyle: const TextStyle(
                                fontSize: 24,
                                color: Colors.white70,
                              ),
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
        ],
      ),
    );
  }
} 