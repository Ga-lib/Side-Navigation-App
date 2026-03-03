import 'package:flutter/material.dart';

// MAIN FUNCTION
void main() {
  runApp(const MyApp());
}

// ROOT APP WIDGET
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App title and theme configuration
      title: 'Side Navigation App - Task 1 & 2',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // Set home page as the initial screen
      home: const HomePage(),
    );
  }
}

// HOME PAGE WITH SIDE NAVIGATION
// Navigation to different pages
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar at the top of the screen
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      // Side Navigation Drawer with Profile
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header with Profile Picture and Details
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  // Profile Name
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Profile Email
                  Text(
                    'johndoe@example.com',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),

            // Navigate to Profile Page
            ListTile(
              leading: const Icon(Icons.account_circle, color: Colors.blue),
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);
                // Navigate to Profile Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),

            // Navigate to Settings Page
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.blue),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);
                // Navigate to Settings Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),

            const Divider(thickness: 1, indent: 16, endIndent: 16),

            // About Page
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.blue),
              title: const Text(
                'About',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);
                // Navigate to About Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),

            // Additional Navigation-Contact Page
            ListTile(
              leading: const Icon(Icons.contact_mail, color: Colors.blue),
              title: const Text(
                'Contact',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);
                // Navigate to Contact Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
            ),
          ],
        ),
      ),

      // Main body content of Home Page
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.home_rounded, size: 100, color: Colors.blue),
              const SizedBox(height: 30),
              const Text(
                'Welcome to Home Page',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Navigate across pages using the side drawer',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Quick Navigation Buttons
              const Text(
                'Quick Navigation:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Button to Profile Page
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                icon: const Icon(Icons.account_circle),
                label: const Text('Go to Profile'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Button to Settings Page
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.settings),
                label: const Text('Go to Settings'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// PROFILE PAGE
// Displays user profile information
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with back button (automatic)
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Large profile picture
              const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, size: 80, color: Colors.white),
              ),
              const SizedBox(height: 20),

              // User name
              const Text(
                'John Doe',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // User email
              const Text(
                'johndoe@example.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),

              // Profile information cards
              _buildInfoCard('Phone Number', '+1 (555) 123-4567', Icons.phone),
              _buildInfoCard('Location', 'New York, USA', Icons.location_on),
              _buildInfoCard('Date of Birth', 'January 15, 1990', Icons.cake),
              _buildInfoCard('Joined Date', 'March 2024', Icons.calendar_today),
              _buildInfoCard('Occupation', 'Software Developer', Icons.work),

              const SizedBox(height: 30),

              // Edit profile button
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Edit profile feature coming soon!'),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profile'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Navigate to Settings from Profile
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.settings),
                label: const Text('Go to Settings'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build information cards
  Widget _buildInfoCard(String label, String value, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 28),
        title: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }
}

// SETTINGS PAGE
// Displays app settings with interactive controls
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Settings state variables
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  bool _locationEnabled = true;
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Account Settings Section
          const Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),

          Card(
            child: ListTile(
              leading: const Icon(Icons.email, color: Colors.blue),
              title: const Text('Change Email'),
              subtitle: const Text('Update your email address'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Change Email feature')),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.lock, color: Colors.blue),
              title: const Text('Change Password'),
              subtitle: const Text('Update your password'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Change Password feature')),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          // App Settings Section
          const Text(
            'App Settings',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),

          // Notifications toggle
          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.notifications, color: Colors.blue),
              title: const Text('Push Notifications'),
              subtitle: const Text('Receive app notifications'),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
          ),

          // Dark mode toggle
          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.dark_mode, color: Colors.blue),
              title: const Text('Dark Mode'),
              subtitle: const Text('Enable dark theme'),
              value: _darkModeEnabled,
              onChanged: (bool value) {
                setState(() {
                  _darkModeEnabled = value;
                });
              },
            ),
          ),

          // Location toggle
          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.location_on, color: Colors.blue),
              title: const Text('Location Services'),
              subtitle: const Text('Allow location access'),
              value: _locationEnabled,
              onChanged: (bool value) {
                setState(() {
                  _locationEnabled = value;
                });
              },
            ),
          ),

          // Font size slider
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.text_fields, color: Colors.blue),
                      const SizedBox(width: 16),
                      Text(
                        'Font Size: ${_fontSize.toInt()}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Slider(
                    value: _fontSize,
                    min: 12.0,
                    max: 24.0,
                    divisions: 12,
                    label: _fontSize.toInt().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _fontSize = value;
                      });
                    },
                  ),
                  Text(
                    'Sample text preview',
                    style: TextStyle(fontSize: _fontSize),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Navigate to Profile from Settings
          Center(
            child: OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              icon: const Icon(Icons.account_circle),
              label: const Text('View Profile'),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ABOUT PAGE
// Displays information about the app
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // App icon
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.flutter_dash,
                size: 80,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),

            // App name and version
            const Text(
              'Side Navigation App',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Version 1.0.0',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // About description
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About This App',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'This Flutter app demonstrates Task 1 and Task 2:\n\n'
                      '• Side navigation drawer with profile\n'
                      '• Multiple pages with navigation functionality\n'
                      '• Profile, Settings, About, and Contact pages\n'
                      '• Interactive UI elements and state management',
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Features
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildFeatureItem('Side Navigation Drawer'),
                    _buildFeatureItem('Profile Management'),
                    _buildFeatureItem('Settings Configuration'),
                    _buildFeatureItem('Multi-Page Navigation'),
                    _buildFeatureItem('Responsive Design'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Developer info
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Developer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        Icon(Icons.person, color: Colors.blue),
                        SizedBox(width: 12),
                        Text('Your Name', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        Icon(Icons.school, color: Colors.blue),
                        SizedBox(width: 12),
                        Text(
                          'Student ID: Your ID',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Copyright
            Text(
              '© 2024 Side Navigation App\nAll rights reserved',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build feature items
  Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 20),
          const SizedBox(width: 10),
          Text(feature, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}

// CONTACT PAGE
// Displays contact information and form
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Contact header
            const Center(
              child: Column(
                children: [
                  Icon(Icons.contact_mail, size: 80, color: Colors.blue),
                  SizedBox(height: 16),
                  Text(
                    'Get In Touch',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We would love to hear from you!',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Contact information cards
            _buildContactCard('Email', 'support@sidenavapp.com', Icons.email),
            _buildContactCard('Phone', '+1 (555) 123-4567', Icons.phone),
            _buildContactCard(
              'Address',
              '123 Flutter Street, App City, AC 12345',
              Icons.location_on,
            ),
            _buildContactCard('Website', 'www.sidenavapp.com', Icons.language),

            const SizedBox(height: 30),

            // Contact form
            const Text(
              'Send us a message',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),

            // Name field
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Name',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Email field
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Message field
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Your Message',
                prefixIcon: const Icon(Icons.message),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                alignLabelWithHint: true,
              ),
            ),
            const SizedBox(height: 24),

            // Send button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Message sent successfully!'),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                icon: const Icon(Icons.send),
                label: const Text('Send Message'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Helper method to build contact cards
  Widget _buildContactCard(String label, String value, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 28),
        title: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }
}
