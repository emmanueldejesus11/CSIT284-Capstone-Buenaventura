import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/announcement.dart';
import 'admin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Announcement> _items = [...dummyAnnouncements];

  Future<void> _openAdmin() async {
    final result = await Navigator.push<Announcement>(
      context,
      MaterialPageRoute(builder: (_) => const AdminScreen()),
    );
    if (result != null) {
      setState(() => _items.insert(0, result));
    }
  }

  String _formatDate(DateTime d) =>
      '${d.day}/${d.month}/${d.year} ${d.hour}:${d.minute.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Announcements'),
        actions: [
          // Hidden-ish admin entry: long-press the icon
          GestureDetector(
            onLongPress: _openAdmin,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Icon(Icons.campaign_outlined),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, i) {
          final a = _items[i];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              title: Text(a.title),
              subtitle: Text(a.body, maxLines: 2, overflow: TextOverflow.ellipsis),
              trailing: Text(_formatDate(a.createdAt),
                  style: Theme.of(context).textTheme.bodySmall),
            ),
          );
        },
      ),
    );
  }
}