// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/screens/challenge/challenge_model.dart';
import 'package:myapp/screens/challenge/my_challenge_screen.dart';

class ChallengeDetailsPage extends StatelessWidget {
  final ChallengeModel challenge;

  const ChallengeDetailsPage({super.key, required this.challenge});

  static const Color _bg = Color(0xFF0B1020);
  static const Color _card = Color(0xFF1A2238);
  static const Color _accent = Color(0xFF8B5CF6);

  Color get _difficultyColor {
    switch (challenge.difficulty) {
      case "Hard":
        return Colors.redAccent;
      case "Medium":
        return Colors.orangeAccent;
      default:
        return Colors.greenAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                color: const Color(0xFF111827),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "ChallengeHub",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey.shade800,
                      child: const Icon(Icons.person, color: Colors.white),
                    ),
                  ],
                ),
              ),

              // Hero Image
              Stack(
                children: [
                  Image.network(
                    challenge.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      height: 250,
                      color: const Color(0xFF17223D),
                      child: Center(
                        child: Icon(challenge.icon, size: 80, color: challenge.iconColor),
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, _bg.withValues(alpha: .95)],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    bottom: 70,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: challenge.iconColor.withValues(alpha: .3),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Icon(challenge.icon, color: Colors.white, size: 14),
                          const SizedBox(width: 5),
                          Text(
                            challenge.category.toUpperCase(),
                            style: const TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    bottom: 30,
                    right: 14,
                    child: Text(
                      challenge.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    // Info chips
                    Row(
                      children: [
                        _chip(Icons.bar_chart, challenge.difficulty, _difficultyColor),
                        const SizedBox(width: 10),
                        _chip(Icons.access_time, challenge.duration, Colors.white54),
                        const SizedBox(width: 10),
                        _chip(Icons.people_outline, "${challenge.participants} joined", Colors.white38),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // About card
                    _card_(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "About Challenge",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            challenge.description,
                            style: const TextStyle(color: Colors.white70, height: 1.6),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Consistency is the key to unlocking the Flow State.",
                            style: TextStyle(
                              color: Colors.white38,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Start button
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton.icon(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const MyChallengeScreen()),
                        ),
                        icon: const Icon(Icons.play_arrow),
                        label: const Text("Start Challenge"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _accent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.check_circle_outline),
                        label: const Text("Complete Today's Goal"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: BorderSide(color: Colors.white.withValues(alpha: .2)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    // Stats
                    Row(
                      children: [
                        Expanded(
                          child: _statCard("CURRENT STREAK", "12", "Days"),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _statCard("TOTAL REPS", "1,200", "Top 5% globally"),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    // Leaderboard
                    _card_(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Global Leaderboard",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {},
                                child: const Text("View All"),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          _leaderTile("1", "Jordan Blake", "342 Day Streak"),
                          _leaderTile("2", "Casey Rivers", "289 Day Streak"),
                          _leaderTile("3", "Alex Rivers (You)", "120 Day Streak", highlight: true),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF111827),
        selectedItemColor: _accent,
        unselectedItemColor: Colors.white60,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: "Challenges"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: "Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }

  Widget _chip(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: .3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 13),
          const SizedBox(width: 4),
          Text(label, style: TextStyle(color: color, fontSize: 11)),
        ],
      ),
    );
  }

  Widget _card_({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }

  Widget _statCard(String title, String value, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: _card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white54, fontSize: 11)),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(subtitle, style: const TextStyle(color: Colors.white60)),
        ],
      ),
    );
  }

  Widget _leaderTile(String rank, String name, String score, {bool highlight = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: highlight
            ? const Color(0xFF8B5CF6).withValues(alpha: .2)
            : Colors.white.withValues(alpha: .04),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(rank, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(width: 12),
          const CircleAvatar(radius: 18, child: Icon(Icons.person)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(color: Colors.white)),
                Text(score, style: const TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          ),
          const Icon(Icons.emoji_events, color: Colors.pinkAccent),
        ],
      ),
    );
  }
}
