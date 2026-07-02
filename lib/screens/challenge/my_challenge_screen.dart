//
// -------------------- My Challenge Screen --------------------
//
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/screens/challenge/challenge_categories_screen.dart';
import 'package:myapp/screens/progress/progress_screen.dart';
import 'package:myapp/screens/profile/profile_screen.dart';

class MyChallengeScreen extends StatelessWidget {
  const MyChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091426),

      appBar: AppBar(
        backgroundColor: const Color(0xFF091426),
        elevation: 0,
        title: const Text(
          "My Challenges",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // Tabs
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFF1A2238),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Active (3)",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Completed (12)",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [

                  _challengeCard(
                    title: "100 Push-ups",
                    subtitle: "Fitness Discipline • Day 12",
                    progress: 0.80,
                    streak: "5 DAY STREAK",
                    icon: Icons.fitness_center,
                    iconColor: Colors.purple,
                  ),

                  const SizedBox(height: 15),

                  _challengeCard(
                    title: "Read 20 Pages",
                    subtitle: "Personal Growth • Day 4",
                    progress: 0.20,
                    icon: Icons.menu_book,
                    iconColor: Colors.pink,
                  ),

                  const SizedBox(height: 15),

                  _challengeCard(
                    title: "Meditate 10m",
                    subtitle: "Mental Clarity • Day 1",
                    progress: 0.00,
                    icon: Icons.self_improvement,
                    iconColor: Colors.blueGrey,
                  ),

                  const SizedBox(height: 20),

                  // Premium Card
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF8B5CF6),
                          Color(0xFFB794F6),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text(
                          "Unlock Pro Flow",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Join the 30-day 'Deep Work' intensive challenge "
                          "to skyrocket your productivity.",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),

                        const SizedBox(height: 15),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: const Text("Explore Premium"),
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

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF111827),
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.white60,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ChallengeCategoriesScreen()));
          if (index == 3) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ProgressScreen()));
          if (index == 4) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: "Challenges"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }

  Widget _challengeCard({
    required String title,
    required String subtitle,
    required double progress,
    required IconData icon,
    required Color iconColor,
    String? streak,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF1A2238),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: iconColor),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(
                Icons.check_circle_outline,
                color: Colors.deepPurple,
              ),
            ],
          ),

          const SizedBox(height: 12),

          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white10,
            color: Colors.deepPurple,
          ),

          const SizedBox(height: 8),

          Row(
            children: [

              if (streak != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    streak,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),

              const Spacer(),

              Text(
                "${(progress * 100).toInt()}%",
                style: const TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}