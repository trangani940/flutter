import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer Header with User Account Info
          UserAccountsDrawerHeader(
            accountName: Text(
              "Jewell Hub",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            accountEmail: Text("info@jewellhub.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://via.placeholder.com/150", // Replace with your profile image URL
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pink.shade300,
              image: DecorationImage(
                image: NetworkImage(
                  "https://via.placeholder.com/300x150", // Background image for drawer header
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
              ),
            ),
          ),
          // Drawer Menu Items
          buildDrawerItem(
            context,
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          buildDrawerItem(
            context,
            icon: Icons.category,
            text: 'Categories',
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          buildDrawerItem(
            context,
            icon: Icons.info,
            text: 'Admin',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminLoginPage()),
              );
            },
          ),
          buildDrawerItem(
            context,
            icon: Icons.shop,
            text: 'Shop',
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          buildDrawerItem(
            context,
            icon: Icons.contact_mail,
            text: 'Contact',
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          Divider(),
          buildDrawerItem(
            context,
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          buildDrawerItem(
            context,
            icon: Icons.help,
            text: 'Help & Feedback',
            onTap: () {
              Navigator.pop(context); // Close the drawer on tap
            },
          ),
          // Logout Button at the Bottom
          SizedBox(height: 20),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.logout,
              color: Colors.red,
            ),
            onTap: () {
              // Handle logout action
            },
          ),
        ],
      ),
    );
  }

  // Drawer Item Helper Function
  ListTile buildDrawerItem(BuildContext context,
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.pink.shade300),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }
}

// Placeholder Admin Login Page for Navigation Example
class AdminLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Login Page'),
      ),
      body: Center(
        child: Text('Admin Login Page'),
      ),
    );
  }
}
