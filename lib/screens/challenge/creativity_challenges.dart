// -----------------------------------------------------
// Creativity Challenges
// -----------------------------------------------------

import 'package:flutter/material.dart';

class CreativityChallengesScreen extends StatelessWidget {
  const CreativityChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091426),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Creativity Challenges",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Hero Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF2A1D59),
                      Color(0xFF4A2A7B),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Creative Expression",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Creativity Spark",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "Unleash your imagination through daily creative exercises and artistic challenges.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Drawing Practice
              _challengeCard(
                icon: Icons.brush,
                iconColor: Colors.pinkAccent,
                title: "Drawing Practice",
                subtitle: "Daily sketch exercises",
                progress: 0.72,
                progressText: "72%",
                buttonText: "Continue Challenge",
              ),

              const SizedBox(height: 12),

              // Writing Prompts
              _challengeCard(
                icon: Icons.edit_note,
                iconColor: Colors.deepPurpleAccent,
                title: "Writing Prompts",
                subtitle: "Creative storytelling",
                progress: 0.45,
                progressText: "45%",
                buttonText: "Continue Challenge",
              ),

              const SizedBox(height: 12),

              // Photography
              _challengeCard(
                icon: Icons.camera_alt,
                iconColor: Colors.orangeAccent,
                title: "Photography",
                subtitle: "Capture unique moments",
                progress: 0.63,
                progressText: "63%",
                buttonText: "Continue Challenge",
              ),

              const SizedBox(height: 12),

              // Design Practice
              _challengeCard(
                icon: Icons.design_services,
                iconColor: Colors.blueAccent,
                title: "Design Practice",
                subtitle: "UI/UX & graphic exercises",
                progress: 0.88,
                progressText: "88%",
                buttonText: "Continue Challenge",
              ),

              const SizedBox(height: 15),

              // Creativity Score
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF152342),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [

                    SizedBox(
                      width: 120,
                      height: 120,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 110,
                            height: 110,
                            child: CircularProgressIndicator(
                              value: 0.70,
                              strokeWidth: 10,
                              backgroundColor:
                                  Colors.white10,
                              color: Colors.purpleAccent,
                            ),
                          ),
                          const Column(
                            mainAxisSize:
                                MainAxisSize.min,
                            children: [
                              Text(
                                "70%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Creative Score",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Creativity Tracker",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "You're consistently improving your creative thinking.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF101C35),
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white54,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: "Challenges",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 32),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Progress",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _challengeCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required double progress,
    required String progressText,
    required String buttonText,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF152342),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [

          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: .15),
                  borderRadius:
                      BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                progressText,
                style: const TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          ClipRRect(
            borderRadius:
                BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 6,
              backgroundColor: Colors.white10,
              color: Colors.purpleAccent,
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.purpleAccent,
              ),
              onPressed: () {},
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}