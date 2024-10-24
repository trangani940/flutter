import 'package:flutter/material.dart';
import 'package:flutter_application_13/adminloginpage.dart';
import 'package:flutter_application_13/collection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// HomePage Design
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'JEWELL HUB',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.home, color: Colors.black),
            onPressed: () {
              // Handle home action
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.pink.shade100,
              Colors.pink.shade300,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image Section
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/s1.png'), // Local asset image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Text description
                  Text(
                    'HAND MADE BEAUTII',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Button
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to AdminLoginPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CollectionPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40), backgroundColor: Colors.pink.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Shop The Collection',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Drawer Widget
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Jewell Hub"),
            accountEmail: Text("info@jewellhub.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/s1.png'), // Local asset image
            ),
            decoration: BoxDecoration(
              color: Colors.pink.shade300,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.pink.shade300),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.category, color: Colors.pink.shade300),
            title: Text('Admin'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminLoginPage()),
              ); // Navigate to AdminLoginPage
            },
          ),
          ListTile(
            leading: Icon(Icons.shop, color: Colors.pink.shade300),
            title: Text('Shop'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.pink.shade300),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.pink.shade300),
            title: Text('Help & Feedback'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('Logout'),
            onTap: () {
              // Handle the logout action
            },
          ),
        ],
      ),
    );
  }
}
