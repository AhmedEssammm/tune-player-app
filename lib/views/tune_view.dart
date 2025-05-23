import 'package:flutter/material.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<Color> tuneColors = const [
    Color(0xFFF44336),
    Color(0xFFF89800),
    Color(0xFFFEEB3B),
    Color(0xFF4CAF50),
    Color(0xFF2F9688),
    Color(0xFF2896F3),
    Color(0xFF9C27B0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tune App'),
        backgroundColor: Color(0xFF253238),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: tuneColors
            .map(
              (e) => TuneItem(color: e),
            )
            .toList(),
      ),
    );
  }
}
