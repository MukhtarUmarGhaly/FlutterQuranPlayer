import 'package:flutter/material.dart';
import 'package:quran_audio/pages/settings_page.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // Function to launch email
  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'Mujahidghaly@gmail.com',
    );
    
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //logo
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: AssetImage('assets/images/mal2.jpg'),
                fit: BoxFit.fill
              ),
            ),
          ),
          const Text(
            "JUZ AMMA",
          ),
          const Text("Ustaz Abdurrahman"),
          const Text(
            "Version 1.0.0",
          ),
          const Divider(),
          // home tile
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15.0),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),
                       
          // settings tile
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 0),
            child: ListTile(
              title: const Text("S E T T I N G S"),
              leading: const Icon(Icons.settings),
              onTap: () {
                // pop drawer
                Navigator.pop(context);

                // navigate to settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage()
                  ),
                );
              },
            ), 
          ),
          
          // Spacer to push email to bottom
          const Spacer(),
          
          // Email contact section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  "Contact developer:",
                  style: TextStyle(
                    fontSize: 14,
                    
                  ),
                ),
                const SizedBox(height: 4),
                InkWell(
                  onTap: _launchEmail,
                  child: const Text(
                    "Mujahidghaly@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                     
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}