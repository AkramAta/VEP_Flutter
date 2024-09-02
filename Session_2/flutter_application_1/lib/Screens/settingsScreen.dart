import 'package:flutter/material.dart';

class Settingsscreen extends StatelessWidget {
  const Settingsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueGrey.shade100, Colors.blueGrey.shade700],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            _buildSettingsTile(
              context,
              icon: Icons.account_circle,
              title: 'Account',
              subtitle: 'Manage your account settings',
              onTap: () {
                // Handle Account tap
              },
            ),
            _buildSettingsTile(
              context,
              icon: Icons.notifications,
              title: 'Notifications',
              subtitle: 'Customize your notification preferences',
              onTap: () {
                // Handle Notifications tap
              },
            ),
            _buildSettingsTile(
              context,
              icon: Icons.lock,
              title: 'Privacy',
              subtitle: 'Review your privacy settings',
              onTap: () {
                // Handle Privacy tap
              },
            ),
            _buildSettingsTile(
              context,
              icon: Icons.language,
              title: 'Language',
              subtitle: 'Change your language preferences',
              onTap: () {
                // Handle Language tap
              },
            ),
            _buildSettingsTile(
              context,
              icon: Icons.help,
              title: 'Help & Support',
              subtitle: 'Get help and support',
              onTap: () {
                // Handle Help & Support tap
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle logout
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsTile(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String subtitle,
        required VoidCallback onTap,
      }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueGrey, size: 30),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blueGrey),
        onTap: onTap,
      ),
    );
  }
}
