//
// -------------------- Progress & Achievements Screen --------------------
//

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/screens/challenge/challenge_categories_screen.dart';
import 'package:myapp/screens/challenge/my_challenge_screen.dart';
import 'package:myapp/screens/profile/profile_screen.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091426),

      appBar: AppBar(
        backgroundColor: const Color(0xFF091426),
        elevation: 0,
        title: const Text(
          "ChallengeHub",
          style: TextStyle(
            color: Color(0xFFD7C7FF),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 15,
              child: Icon(Icons.person, size: 18),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Your Progress",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              "Stay consistent, stay legendary.",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),

            const SizedBox(height: 20),

            // WEEKLY GOAL CARD
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1A2238),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [

                  const Text(
                    "WEEKLY GOAL",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 140,
                    width: 140,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [

                        SizedBox(
                          height: 120,
                          width: 120,
                          child: CircularProgressIndicator(
                            value: .82,
                            strokeWidth: 10,
                            backgroundColor: Colors.white10,
                            color: Colors.deepPurple,
                          ),
                        ),

                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "82%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "COMPLETED",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "14/17 Tasks finished",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // STREAK CARD
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1A2238),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      const Text(
                        "STREAK TRACKER",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "12 DAYS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: List.generate(
                      14,
                      (index) => Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: index < 12
                              ? Colors.deepPurple.shade200
                              : Colors.white10,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(
                              color: index < 12
                                  ? Colors.black
                                  : Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "3 days until next reward",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // BAR CHART
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1A2238),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [

                  Row(
                    children: const [
                      Text(
                        "MONTHLY PERFORMANCE",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "+12% vs last month",
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _bar(60),
                      _bar(90),
                      _bar(70),
                      _bar(100),
                      _bar(130),
                      _bar(160),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                const Text(
                  "Achievements",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("VIEW ALL"),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: _achievementCard(
                    Icons.wb_sunny,
                    "Early Bird",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _achievementCard(
                    Icons.workspace_premium,
                    "Consistency\nKing",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _achievementCard(
                    Icons.star,
                    "First 100",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF111827),
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.white60,
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ChallengeCategoriesScreen()));
          if (index == 1) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MyChallengeScreen()));
          if (index == 4) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: "Challenges"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  static Widget _bar(double height) {
    return Container(
      width: 22,
      height: height,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  static Widget _achievementCard(
    IconData icon,
    String title,
  ) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFF1A2238),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.purple.shade200,
            size: 30,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

