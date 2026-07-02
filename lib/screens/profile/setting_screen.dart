// -----------------------------------------------------
// Account & Settings Screen
// -----------------------------------------------------

import 'package:flutter/material.dart';
import 'package:myapp/screens/auth/login_screen.dart';
import 'package:myapp/services/user_session.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081225),

      appBar: AppBar(
        backgroundColor: const Color(0xFF081225),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // Profile Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF132441),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [

                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.black87,
                      child: Icon(
                        Icons.person,
                        size: 45,
                        color: Colors.purple.shade200,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    UserSession.instance.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Level 12",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.withValues(alpha: .15),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Colors.red,
                              size: 14,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "28 Day Streak",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.purpleAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Edit Profile"),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            _sectionTitle("ACCOUNT SETTINGS"),

            _settingsCard([
              _settingTile(
                Icons.security,
                "Account Security",
              ),
              _settingTile(
                Icons.email_outlined,
                "Email Notifications",
              ),
              _settingTile(
                Icons.link,
                "Linked Accounts",
              ),
              _settingTile(
                Icons.workspace_premium,
                "Subscription Plan",
                subtitle: "Pro Active",
              ),
            ]),

            const SizedBox(height: 20),

            _sectionTitle("APP PREFERENCES"),

            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF132441),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [

                  ListTile(
                    leading: const Icon(
                      Icons.dark_mode,
                      color: Colors.white70,
                    ),
                    title: const Text(
                      "Theme Mode",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Switch(
                      value: isDarkMode,
                      activeThumbColor: Colors.purpleAccent,
                      onChanged: (value) {
                        setState(() {
                          isDarkMode = value;
                        });
                      },
                    ),
                  ),

                  const Divider(
                    color: Colors.white10,
                    height: 1,
                  ),

                  _settingTile(
                    Icons.notifications_active,
                    "Reminder Settings",
                  ),

                  _settingTile(
                    Icons.language,
                    "Language",
                    subtitle: "English (US)",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            _sectionTitle("SUPPORT & INFO"),

            _settingsCard([
              _settingTile(
                Icons.help_outline,
                "Help Center",
                external: true,
              ),
              _settingTile(
                Icons.privacy_tip_outlined,
                "Privacy Policy",
              ),
              _settingTile(
                Icons.description_outlined,
                "Terms of Service",
              ),
            ]),

            const SizedBox(height: 30),

            // Logout Button
            SizedBox(
              width: double.infinity,
              height: 52,
              child: OutlinedButton.icon(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                ),
                label: const Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.white12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  UserSession.instance.name = '';
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                    (_) => false,
                  );
                },
              ),
            ),

            const Text(
              "Version 2.4.1 (Build 890)",
              style: TextStyle(
                color: Colors.white38,
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0D1830),
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white54,
        currentIndex: 4,
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
            icon: Icon(Icons.add_circle),
            label: "Create",
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

  Widget _sectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white54,
            fontSize: 11,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }

  Widget _settingsCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF132441),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(children: children),
    );
  }

  Widget _settingTile(
    IconData icon,
    String title, {
    String? subtitle,
    bool external = false,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white70,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white54,
              ),
            )
          : null,
      trailing: Icon(
        external
            ? Icons.open_in_new
            : Icons.chevron_right,
        color: Colors.white54,
      ),
      onTap: () {},
    );
  }
}