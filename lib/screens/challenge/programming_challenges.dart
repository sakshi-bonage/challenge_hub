// -----------------------------------------------------
// Programming Challenges
// -----------------------------------------------------

import 'package:flutter/material.dart';

class ProgrammingChallengesScreen extends StatelessWidget {
  const ProgrammingChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07112A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white),
                  ),
                  const Expanded(
                    child: Text(
                      "Programming\nChallenges",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB56DFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "12 Day\nStreak",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Banner Card
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF0D1E45),
                      Color(0xFF14295D),
                    ],
                  ),
                  border: Border.all(
                    color: Colors.white10,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Opacity(
                        opacity: 0.15,
                        child: Icon(
                          Icons.code,
                          size: 180,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 20,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MASTER YOUR CRAFT",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Elite Coding Path",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // Coding Problems Card
              _challengeCard(
                icon: Icons.code,
                iconColor: Colors.purpleAccent,
                title: "Coding problems",
                subtitle: "Algorithms & Data Structures",
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                  size: 16,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.groups,
                            color: Colors.white70, size: 18),
                        const Spacer(),
                        Text(
                          "14/20 Done",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.7,
                        minHeight: 6,
                        backgroundColor:
                            Colors.white12,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              // Learn Concepts
              _challengeCard(
                icon: Icons.menu_book,
                iconColor: Colors.pinkAccent,
                title: "Learn programming concepts",
                subtitle: "Theory and System Design",
                child: Row(
                  children: [
                    _tag("OOP"),
                    const SizedBox(width: 8),
                    _tag("Concurrency"),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              // Mini Projects
              _challengeCard(
                icon: Icons.architecture,
                iconColor: Colors.blueAccent,
                title: "Build mini projects",
                subtitle: "Practical Portfolio Builders",
                child: Container(
                  margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: .05),
                    borderRadius:
                        BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.desktop_windows,
                        color: Colors.white70,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          "UI Task Manager",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.purpleAccent,
                          minimumSize:
                              const Size(70, 32),
                        ),
                        onPressed: () {},
                        child: const Text("Start"),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Debugging
              _challengeCard(
                icon: Icons.local_fire_department,
                iconColor: Colors.redAccent,
                title: "Debugging daily",
                subtitle: "Find the bug, earn XP",
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent
                          .withValues(alpha: 0.2),
                      borderRadius:
                          BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "New Today",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Open Source
              _challengeCard(
                icon: Icons.groups,
                iconColor: Colors.deepPurpleAccent,
                title: "Open source contribution",
                subtitle: "Give back to the community",
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: const [
                      _StatBox(
                        title: "Impact",
                        value: "2.4k",
                      ),
                      _StatBox(
                        title: "Pull Requests",
                        value: "08",
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // Mastery Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF101C3E),
                  borderRadius:
                      BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white10,
                  ),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Overall Mastery",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "68%",
                          style: TextStyle(
                            color:
                                Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.68,
                        minHeight: 8,
                        color: Colors.purpleAccent,
                        backgroundColor:
                            Colors.white10,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "You are in the top 5% of programmers this week. Keep pushing!",
                      style: TextStyle(
                        color:
                            Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF091328),
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events),
              label: "Challenges"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: "Create"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Progress"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
    );
  }

  Widget _challengeCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    Widget? child,
    Widget? trailing,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF101C3E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
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
                  size: 20,
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
                      style: TextStyle(
                        color:
                            Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              ?trailing,
            ],
          ),
          ?child,
        ],
      ),
    );
  }

  Widget _tag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final String title;
  final String value;

  const _StatBox({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}