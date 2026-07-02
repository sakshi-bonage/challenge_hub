import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D111E),
        colorScheme: const ColorScheme.dark(
          surface: Color(0xFF161B2A),
          primary: Color(0xFF8B5CF6), // Purple accent
          secondary: Color(0xFFEC4899), // Pink accent
        ),
      ),
      home: const MorningRoutineScreen(),
    );
  }
}

// Morning Rutine - Comment added per request
class MorningRoutineScreen extends StatelessWidget {
  const MorningRoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'Morning Routine',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: const Icon(Icons.person, color: Colors.white), // Placeholder for profile pic
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Banner Card
            const FlowStateBanner(),
            const SizedBox(height: 16),

            // Habit 1: Wake up early
            const ProgressHabitCard(
              title: 'Wake up early',
              subtitle: 'Consistent 6:00 AM rising',
              progressText: '5/7 days',
              progressValue: 5 / 7,
              streakText: '12d',
              icon: Icons.access_alarm,
              accentColor: Color(0xFFEE4680),
              buttonText: 'Check-in',
              buttonIcon: Icons.check_circle_outline,
            ),
            const SizedBox(height: 12),

            // Habit 2: Meditation
            const ProgressHabitCard(
              title: 'Meditation',
              subtitle: '10 minutes of mindfulness',
              progressText: '', // Empty or omitted in image for secondary layout
              progressValue: 0.4,
              streakText: '4d',
              icon: Icons.self_improvement,
              accentColor: Colors.grey,
              buttonText: 'Start Session',
              buttonIcon: Icons.play_circle_outline,
              isSecondaryStyle: true,
            ),
            const SizedBox(height: 12),

            // Habit 3: No phone after waking
            const QuickActionHabitCard(
              title: 'No phone after waking',
              subtitle: 'Avoid screens for 60 mins',
              icon: Icons.phonelink_off,
              isCompleted: false,
            ),
            const SizedBox(height: 12),

            // Habit 4: Sun exposure
            const QuickActionHabitCard(
              title: 'Sun exposure',
              subtitle: 'Natural light within 15 mins',
              icon: Icons.wb_sunny_outlined,
              isCompleted: false,
            ),
            const SizedBox(height: 12),

            // Habit 5: Hydrate immediately
            const QuickActionHabitCard(
              title: 'Hydrate immediately',
              subtitle: '500ml of water upon rising',
              icon: Icons.water_drop_outlined,
              isCompleted: true,
            ),
            const SizedBox(height: 20),

            // Stats Section
            const Row(
              children: [
                Expanded(
                  child: StatCard(
                    title: 'Category Rank',
                    value: '#42',
                    subValue: 'Global',
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: StatCard(
                    title: 'XP Gained',
                    value: '+1,240',
                    valueColor: Color(0xFFEE4680),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80), // Space for bottom navigation
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF0F1322),
        selectedItemColor: const Color(0xFF9061F9),
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // 'Challenges' active
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Challenges'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Create'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

// Custom widget for top Featured Banner
class FlowStateBanner extends StatelessWidget {
  const FlowStateBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1502082553048-f009c37129b9?q=80&w=600&auto=format&fit=crop'), // Placeholder forest texture
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.purple.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              '5 ACTIVE CHALLENGES',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFC084FC)),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'The Flow State Start',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            'Optimize your biology with high-performance morning habits.',
            style: TextStyle(fontSize: 13, color: Colors.grey[300]),
          ),
        ],
      ),
    );
  }
}

// Custom widget for detailed habits (Wake Up, Meditate)
class ProgressHabitCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String progressText;
  final double progressValue;
  final String streakText;
  final IconData icon;
  final Color accentColor;
  final String buttonText;
  final IconData buttonIcon;
  final bool isSecondaryStyle;

  const ProgressHabitCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progressText,
    required this.progressValue,
    required this.streakText,
    required this.icon,
    required this.accentColor,
    required this.buttonText,
    required this.buttonIcon,
    this.isSecondaryStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF161B2A),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF22293F),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: isSecondaryStyle ? const Color(0xFFEC4899) : Colors.white),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 2),
                    Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 13)),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: isSecondaryStyle ? const Color(0xFF22293F) : const Color(0xFFFB7185).withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    if (!isSecondaryStyle) const Icon(Icons.local_fire_department, size: 14, color: Color(0xFFFB7185)),
                    if (isSecondaryStyle) const Icon(Icons.history, size: 14, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      streakText,
                      style: TextStyle(
                        fontSize: 12, 
                        fontWeight: FontWeight.bold, 
                        color: isSecondaryStyle ? Colors.grey : const Color(0xFFFB7185)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          if (progressText.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Weekly Progress', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
                Text(progressText, style: const TextStyle(color: Color(0xFFA78BFA), fontSize: 12, fontWeight: FontWeight.bold)),
              ],
            ),
          if (progressText.isNotEmpty) const SizedBox(height: 6),
          LinearProgressIndicator(
            value: progressValue,
            backgroundColor: const Color(0xFF22293F),
            color: isSecondaryStyle ? const Color(0xFFF472B6) : const Color(0xFF8B5CF6),
            minHeight: 6,
            borderRadius: BorderRadius.circular(3),
          ),
          const SizedBox(height: 14),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 44),
              side: const BorderSide(color: Color(0xFF22293F)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {},
            icon: Icon(buttonIcon, size: 18, color: Colors.white),
            label: Text(buttonText, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}

// Custom widget for minor/toggle habits (No phone, Sun exposure, Hydrate)
class QuickActionHabitCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isCompleted;

  const QuickActionHabitCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF161B2A),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF22293F),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.grey),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                const SizedBox(height: 2),
                Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          isCompleted
              ? Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Color(0xFF7C3AED),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.check, size: 18, color: Colors.white),
                )
              : Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF22293F), width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, size: 18, color: Colors.grey),
                ),
        ],
      ),
    );
  }
}

// Custom widget for dashboard stats at the bottom
class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String? subValue;
  final Color? valueColor;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    this.subValue,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161B2A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: valueColor ?? Colors.white
                ),
              ),
              if (subValue != null) ...[
                const SizedBox(width: 4),
                Text(subValue!, style: const TextStyle(color: Colors.grey, fontSize: 13)),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
