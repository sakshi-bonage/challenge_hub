import 'package:flutter/material.dart';

class ChallengeModel {
  final String title;
  final String description;
  final String difficulty;
  final String duration;
  final String category;
  final IconData icon;
  final Color iconColor;
  final String imageUrl;
  final int participants;

  const ChallengeModel({
    required this.title,
    required this.description,
    required this.difficulty,
    required this.duration,
    required this.category,
    required this.icon,
    required this.iconColor,
    required this.imageUrl,
    required this.participants,
  });
}

final List<ChallengeModel> sampleChallenges = [
  ChallengeModel(
    title: "100 Daily Push-ups",
    description:
        "Build core and upper body strength with this consistent daily habit. "
        "Designed to push your limits and establish a rock-solid foundation for functional fitness.",
    difficulty: "Medium",
    duration: "15 mins/day",
    category: "Fitness",
    icon: Icons.fitness_center,
    iconColor: Colors.blueAccent,
    imageUrl: "https://images.unsplash.com/photo-1517836357463-d25dfeac3438",
    participants: 4821,
  ),
  ChallengeModel(
    title: "Read 20 Pages Daily",
    description:
        "Expand your knowledge and sharpen your focus by reading 20 pages every day. "
        "Whether fiction or non-fiction, this habit compounds over time into massive growth.",
    difficulty: "Easy",
    duration: "30 mins/day",
    category: "Learning",
    icon: Icons.menu_book,
    iconColor: Colors.pinkAccent,
    imageUrl: "https://images.unsplash.com/photo-1512820790803-83ca734da794",
    participants: 3102,
  ),
  ChallengeModel(
    title: "10-Min Morning Meditation",
    description:
        "Start each day with clarity and calm. This challenge builds a lasting mindfulness "
        "habit that reduces stress and boosts your daily performance.",
    difficulty: "Easy",
    duration: "10 mins/day",
    category: "Wellness",
    icon: Icons.self_improvement,
    iconColor: Colors.tealAccent,
    imageUrl: "https://images.unsplash.com/photo-1545389336-cf090694435e",
    participants: 6540,
  ),
  ChallengeModel(
    title: "30-Day Coding Sprint",
    description:
        "Sharpen your programming skills by solving one coding problem every day for 30 days. "
        "Cover data structures, algorithms, and real-world problem solving.",
    difficulty: "Hard",
    duration: "60 mins/day",
    category: "Programming",
    icon: Icons.code,
    iconColor: Colors.indigoAccent,
    imageUrl: "https://images.unsplash.com/photo-1498050108023-c5249f4df085",
    participants: 2875,
  ),
  ChallengeModel(
    title: "Digital Detox",
    description:
        "Reduce screen time by 2 hours each day. Replace scrolling with intentional, "
        "offline activities that restore mental energy and deepen real-world connections.",
    difficulty: "Medium",
    duration: "2 hrs off/day",
    category: "Wellness",
    icon: Icons.phone_android,
    iconColor: Colors.orangeAccent,
    imageUrl: "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c",
    participants: 1987,
  ),
  ChallengeModel(
    title: "5-Min Daily Journaling",
    description:
        "Write down your thoughts, goals, and reflections for just 5 minutes a day. "
        "This simple habit has been shown to improve mental clarity and emotional resilience.",
    difficulty: "Easy",
    duration: "5 mins/day",
    category: "Productivity",
    icon: Icons.edit_note,
    iconColor: Colors.purpleAccent,
    imageUrl: "https://images.unsplash.com/photo-1517842645767-c639042777db",
    participants: 5210,
  ),
];
