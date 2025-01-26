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
      title: 'Layout Responsivo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Responsivo'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Layout para telas maiores (ex: tablets e desktops)
            return Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue.shade100,
                    child: const Center(
                      child: Text(
                        'Menu Lateral',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blue.shade50,
                    child: const Center(
                      child: Text(
                        'Talento Tech',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            // Layout para telas menores (ex: smartphones)
            return Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue.shade100,
                    child: const Center(
                      child: Text(
                        'Yasmim Arcega- Matinhos PR',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blue.shade50,
                    child: const Center(
                      child: Text(
                        'Talento Tech',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
