import 'package:assignment_on_responsive_design/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      mobile: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Design'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: _buildDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Mobile',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.pink),
              ),
              _buildBody(),
              _buildButton(),
            ],
          ),
        ),
      ),
      tablet: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Design'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: _buildDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Tablet',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.pink)),
              _buildBody(),
              _buildButton()
            ],
          ),
          // child: Text('this is from Tablet'),
        ),
      ),
      desktop: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Design'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Desktop',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.pink),
              ),
              _buildBody(),
              _buildButton(),
            ],
          ),
          // child: Text('this is from Tablet'),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return const Column(
      children: [
        Text(
          'Flutter Web. \n The Basic',
          style: TextStyle(fontSize: 34),
        ),
        Text('We Have Win !! We achove a new bangladesh, \n'
            ' Our Next Tour will be to releave people from poverty'),
      ],
    );
  }

  Padding _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text(
          'Join WIth Us',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green,
                size: 12,
              ),
              title: Text(
                'Home',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.green,
                size: 12,
              ),
              title: Text(
                'Settings',
              ),
              tileColor: Colors.green,
            ),
            ListTile(
              leading: Icon(Icons.add, color: Colors.green, size: 12),
              title: Text('Products'),
            ),
            ListTile(
              leading: Icon(Icons.print, color: Colors.green, size: 12),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
