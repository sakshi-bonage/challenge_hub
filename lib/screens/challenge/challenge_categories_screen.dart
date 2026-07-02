//
// -------------------- Challenge Categories Screen --------------------
//

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/screens/challenge/challenge_details_page.dart';
import 'package:myapp/screens/challenge/challenge_list_screen.dart';
import 'package:myapp/screens/challenge/challenge_model.dart';
import 'package:myapp/screens/challenge/learning_challenges.dart';
import 'package:myapp/screens/challenge/morning_routine.dart';
import 'package:myapp/screens/challenge/my_challenge_screen.dart';
import 'package:myapp/screens/challenge/programming_challenges.dart';
import 'package:myapp/screens/challenge/wellness_challenge.dart';
import 'package:myapp/screens/profile/profile_screen.dart';
import 'package:myapp/screens/progress/progress_screen.dart';
import 'package:myapp/services/user_session.dart';

class ChallengeCategoriesScreen extends StatelessWidget {
  const ChallengeCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF091426),
      bottomNavigationBar: _buildBottomNav(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, color: Colors.white),
                  const Text(
                    "ChallengeHub",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD7C7FF),
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                      "https://i.pravatar.cc/150?img=5",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hello, ${UserSession.instance.name} 👋",
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 8),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose your focus and start your next growth journey.",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _featuredCard(context),

                      const SizedBox(height: 12),

                      Row(
                        children: [
                          Expanded(
                            child: _smallCard(
                              context: context,
                              icon: Icons.code,
                              title: "Programming",
                              subtitle: "8 challenges",
                              iconBg: Colors.indigo,
                              screen: const ProgrammingChallengesScreen(),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _smallCard(
                              context: context,
                              icon: Icons.wb_sunny_outlined,
                              title: "Morning\nRoutine",
                              subtitle: "5 challenges",
                              iconBg: Colors.pink,
                              screen: const MorningRoutineScreen(),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      _learningCard(context),

                      const SizedBox(height: 12),

                      Row(
                        children: [
                          Expanded(
                            child: _smallCard(
                              context: context,
                              icon: Icons.lightbulb_outline,
                              title: "Productivity",
                              subtitle: "7 challenges",
                              iconBg: Colors.purple,
                              screen: const WellnessChallengesScreen(),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _smallCard(
                              context: context,
                              icon: Icons.favorite,
                              title: "Wellness",
                              subtitle: "9 challenges",
                              iconBg: Colors.redAccent,
                              screen: const WellnessChallengesScreen(),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      _creativityCard(context),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget _featuredCard(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChallengeDetailsPage(challenge: sampleChallenges[0]),
        ),
      );
    },
    child: Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          colors: [Color(0xFF102447), Color(0xFF162B55)],
        ),
        border: Border.all(color: Colors.blueAccent, width: 1.2),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconBox(Icons.fitness_center, Colors.blue),
          const Spacer(),
          const Text(
            "Fitness",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "12 ACTIVE CHALLENGES",
            style: TextStyle(
              color: Colors.white70,
              letterSpacing: 1,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

  Widget _learningCard(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LearningChallengesScreen())),
      borderRadius: BorderRadius.circular(18),
      child: Container(
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xFF142441),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _iconBox(Icons.menu_book_outlined, Colors.blueGrey),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Learning",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "10 challenges available",
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    ),
    );
  }

  Widget _creativityCard(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ChallengeListScreen())),
      borderRadius: BorderRadius.circular(18),
      child: Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF1B2245), Color(0xFF202750)],
        ),
        border: Border.all(color: Colors.deepPurpleAccent),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconBox(Icons.palette_outlined, Colors.deepPurple),
          const Spacer(),
          const Text(
            "Creativity",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            "6 ACTIVE CHALLENGES",
            style: TextStyle(
              color: Colors.purpleAccent,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    ),
    );
  }

  Widget _smallCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color iconBg,
    required Widget screen,
  }) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => screen)),
      borderRadius: BorderRadius.circular(18),
      child: Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF142441),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _iconBox(icon, iconBg),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(color: Colors.white60)),
        ],
      ),
    ),
    );
  }

  Widget _iconBox(IconData icon, Color color) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: color.withValues(alpha: .15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: color),
    );
  }

  Widget _buildBottomNav(BuildContext context) {
  return Container(
    height: 75,
    decoration: const BoxDecoration(
      color: Color(0xFF0D1830),
      border: Border(
        top: BorderSide(color: Colors.white10),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        _NavItem(
          Icons.home,
          "Home",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ChallengeCategoriesScreen(),
              ),
            );
          },
        ),

        _NavItem(
          Icons.emoji_events,
          "Challenges",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const MyChallengeScreen(),
              ),
            );
          },
        ),

        const CircleAvatar(
          radius: 22,
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.add, color: Colors.white),
        ),

        _NavItem(
          Icons.bar_chart,
          "Progress",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProgressScreen(),
              ),
            );
          },
        ),

        _NavItem(
          Icons.person,
          "Profile",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProfileScreen(),
              ),
            );
          },
        ),
      ],
    ),
  );
}
}
class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _NavItem(
    this.icon,
    this.label, {
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white70),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}