import 'package:flutter/material.dart';

class CurrentDateWidget extends StatefulWidget {
  const CurrentDateWidget({super.key});

  @override
  _CurrentDateWidgetState createState() => _CurrentDateWidgetState();
}

class _CurrentDateWidgetState extends State<CurrentDateWidget> {
  String _currentDate = '';

  @override
  void initState() {
    super.initState();
    _updateDate();
  }

  void _updateDate() {
    setState(() {
      _currentDate = DateTime.now().toString().split(' ')[0];
    });
    // Update every day
    Future.delayed(const Duration(days: 1), () => _updateDate());
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _currentDate,
      style: const TextStyle(fontSize: 14),// date style change it 
    );
  }
}