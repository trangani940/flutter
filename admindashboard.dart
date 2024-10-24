import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        title: Text('JEWELL HUB Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dashboard Overview Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard('Total Orders', '1,230', Colors.blue),
                _buildStatCard('Revenue', '\$23,500', Colors.green),
                _buildStatCard('Customers', '340', Colors.orange),
              ],
            ),
            SizedBox(height: 20),

            // Recent Orders Section
            Text(
              'Recent Orders',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: _buildOrderTable(),
            ),
            SizedBox(height: 20),

            // Sales Chart Section (Placeholder for a chart or graph)
            Text(
              'Sales Insights',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Placeholder(
              fallbackHeight: 200,
              color: Colors.pink.shade100,
            ), // You can replace this with a chart widget
          ],
        ),
      ),
    );
  }

  // Method to create a stats card
  Widget _buildStatCard(String title, String value, Color color) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 120,
        width: 120,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                fontSize: 22,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build the recent orders table
  Widget _buildOrderTable() {
    return DataTable(
      columns: [
        DataColumn(label: Text('Order ID')),
        DataColumn(label: Text('Customer')),
        DataColumn(label: Text('Total')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Date')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('#12345')),
          DataCell(Text('John Doe')),
          DataCell(Text('\$125.00')),
          DataCell(Text('Delivered')),
          DataCell(Text('02/03/2024')),
        ]),
        DataRow(cells: [
          DataCell(Text('#12346')),
          DataCell(Text('Jane Smith')),
          DataCell(Text('\$75.00')),
          DataCell(Text('Pending')),
          DataCell(Text('03/03/2024')),
        ]),
        DataRow(cells: [
          DataCell(Text('#12347')),
          DataCell(Text('Mark Johnson')),
          DataCell(Text('\$250.00')),
          DataCell(Text('Delivered')),
          DataCell(Text('04/03/2024')),
        ]),
      ],
    );
  }
}

// Custom Drawer for Navigation
class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink.shade300,
            ),
            child: Text(
              'JEWELL HUB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); // Handle home navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Orders'),
            onTap: () {
              Navigator.pop(context); // Handle orders navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            onTap: () {
              Navigator.pop(context); // Handle account navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Handle settings navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Handle logout
            },
          ),
        ],
      ),
    );
  }
}
