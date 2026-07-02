// -----------------------------------------------------
// Learning Challenges
// -----------------------------------------------------

import 'package:flutter/material.dart';

class LearningChallengesScreen extends StatelessWidget {
  const LearningChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2235),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Learning Challenges",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.purple,
                    child: const Icon(
                      Icons.person,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Banner Card
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF2A214A),
                      Color(0xFF4A2A73),
                    ],
                  ),
                ),
                child: Stack(
                  children: [

                    Positioned(
                      left: 15,
                      top: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Personal Knowledge",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),

                    const Positioned(
                      left: 15,
                      bottom: 20,
                      child: Text(
                        "Expand Your Mind",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Positioned(
                      right: 20,
                      top: 20,
                      child: Icon(
                        Icons.menu_book,
                        color: Colors.white.withValues(alpha: .25),
                        size: 80,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Stats Row
              Row(
                children: [
                  Expanded(
                    child: _statCard(
                      "1.2k",
                      "Points",
                      Icons.auto_graph,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _statCard(
                      "14",
                      "Day Streak",
                      Icons.favorite,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              Text(
                "Available Quests",
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // Quest 1
              _questCard(
                icon: Icons.school,
                title: "Learn new words",
                subtitle: "Expand vocabulary every day",
                reward: "+50 XP",
              ),

              const SizedBox(height: 10),

              // Quest 2
              _questCard(
                icon: Icons.menu_book,
                title: "Reading challenges",
                subtitle: "Finish 2 chapters this week",
              ),

              const SizedBox(height: 18),

              // Skill Development
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF5D6674),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Text(
                          "PREMIUM QUEST",
                          style: TextStyle(
                            color:
                                Colors.grey.shade300,
                            fontSize: 10,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.workspace_premium,
                          color: Colors.amber,
                          size: 18,
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Skill Development",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight:
                            FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      "Master professional skills through personalized learning",
                      style: TextStyle(
                        color:
                            Colors.grey.shade300,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.purpleAccent,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Start Quest",
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // Category Cards
              Row(
                children: [
                  Expanded(
                    child: _smallCard(
                      Icons.language,
                      "Language practice",
                      "50 min completed",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _smallCard(
                      Icons.headphones,
                      "Educational podcasts",
                      "3 episodes weekly",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Daily Recommendations",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Refresh",
                    style: TextStyle(
                      color:
                          Colors.purple.shade200,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              _recommendationTile(
                Icons.psychology,
                "Audio Lessons",
                "Improve concentration",
              ),

              const SizedBox(height: 10),

              _recommendationTile(
                Icons.quiz,
                "Quick Quizzes",
                "Test your knowledge",
              ),

              const SizedBox(height: 10),

              _recommendationTile(
                Icons.science,
                "Interactive Labs",
                "Hands-on practice",
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF252B3B),
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
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

  Widget _statCard(
      String value,
      String label,
      IconData icon,
      ) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF5B6070),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Icon(icon,
              color: Colors.white70,
              size: 18),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey.shade300,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _questCard({
    required IconData icon,
    required String title,
    required String subtitle,
    String? reward,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF5B6070),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [

          CircleAvatar(
            backgroundColor:
                Colors.purple.withValues(alpha: .2),
            child: Icon(
              icon,
              color: Colors.purpleAccent,
            ),
          ),

          const SizedBox(width: 10),

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
                        Colors.grey.shade300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          if (reward != null)
            Container(
              padding:
                  const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius:
                    BorderRadius.circular(20),
              ),
              child: Text(
                reward,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _smallCard(
      IconData icon,
      String title,
      String subtitle,
      ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF5B6070),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Icon(icon,
              color: Colors.white70),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey.shade300,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget _recommendationTile(
      IconData icon,
      String title,
      String subtitle,
      ) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF5B6070),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [

          Icon(
            icon,
            color: Colors.white70,
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
                        Colors.grey.shade300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white54,
            size: 16,
          ),
        ],
      ),
    );
  }
}
