// -----------------------------------------------------
// Wellness Challenges
// -----------------------------------------------------

import 'package:flutter/material.dart';
import 'package:myapp/screens/challenge/challenge_categories_screen.dart';
import 'package:myapp/screens/challenge/my_challenge_screen.dart';
import 'package:myapp/screens/progress/progress_screen.dart';
import 'package:myapp/screens/profile/profile_screen.dart';

class WellnessChallengesScreen extends StatelessWidget {
  const WellnessChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091428),

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
                      "Wellness Challenges",
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

              // Hero Banner
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF182447),
                      Color(0xFF243A6D),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Stack(
                  children: [

                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius:
                              BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Balance & Wellness",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),

                    const Positioned(
                      left: 20,
                      bottom: 50,
                      child: Text(
                        "Optimize Your Vitality",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const Positioned(
                      left: 20,
                      bottom: 20,
                      child: Text(
                        "Master your fundamentals of a high\nperformance lifestyle.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Water Intake Card
              _challengeCard(
                icon: Icons.water_drop,
                iconColor: Colors.blueAccent,
                title: "Water Intake",
                subtitle: "Progress",
                trailing: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius:
                        BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "12 Day Streak",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.65,
                        minHeight: 6,
                        backgroundColor:
                            Colors.white12,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Log Intake",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Sleep Tracking
              _challengeCard(
                icon: Icons.nightlight_round,
                iconColor: Colors.pinkAccent,
                title: "Sleep tracking",
                subtitle: "Last night: 7h 20m",
                child: Column(
                  children: [
                    const SizedBox(height: 15),

                    Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.end,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                      children: List.generate(
                        7,
                        (index) => Container(
                          width: 18,
                          height: 25 +
                              (index * 7).toDouble(),
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent
                                .withValues(alpha: 0.7),
                            borderRadius:
                                BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Healthy Eating
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF17223D),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [

                    ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1512621776951-a57141f2eefd",
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [

                          const Text(
                            "Healthy Eating",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: List.generate(
                              4,
                              (index) => const Padding(
                                padding:
                                    EdgeInsets.only(
                                        right: 5),
                                child: Icon(
                                  Icons.star,
                                  color:
                                      Colors.amber,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 10),

                          Align(
                            alignment:
                                Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "View Meal Plan",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // Small Cards
              Row(
                children: [
                  Expanded(
                    child: _smallCard(
                      Icons.fitness_center,
                      "Stretching",
                      "5 min/day",
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _smallCard(
                      Icons.phone_android,
                      "Digital detox",
                      "2 hours left",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Weekly Performance
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF17223D),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: const [
                        Text(
                          "Weekly Performance",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.show_chart,
                          color: Colors.purpleAccent,
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                      children: const [
                        _DayText("M"),
                        _DayText("T"),
                        _DayText("W"),
                        _DayText("T"),
                        _DayText("F"),
                        _DayText("S"),
                        _DayText("S"),
                      ],
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
        backgroundColor: const Color(0xFF111B33),
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white54,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ChallengeCategoriesScreen()));
          if (index == 1) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MyChallengeScreen()));
          if (index == 3) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ProgressScreen()));
          if (index == 4) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
        },
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
    Widget? child,
    Widget? trailing,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF17223D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [

          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: iconColor.withOpacity(.15),
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

              ?trailing,
            ],
          ),

          ?child,
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
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF17223D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon,
              color: Colors.white70,
              size: 30),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.purpleAccent,
            ),
            child: const Text("Start"),
          ),
        ],
      ),
    );
  }
}

class _DayText extends StatelessWidget {
  final String day;

  const _DayText(this.day);

  @override
  Widget build(BuildContext context) {
    return Text(
      day,
      style: const TextStyle(
        color: Colors.white54,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}