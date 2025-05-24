import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xFF012a4a), sound: 'note1.wav'),
    TuneModel(color: Color(0xFF013a63), sound: 'note2.wav'),
    TuneModel(color: Color(0xFF01497c), sound: 'note3.wav'),
    TuneModel(color: Color(0xFF2a6f97), sound: 'note4.wav'),
    TuneModel(color: Color(0xFF61a5c2), sound: 'note5.wav'),
    TuneModel(color: Color(0xFF89c2d9), sound: 'note6.wav'),
    TuneModel(color: Color(0xFFa9d6e5), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tune App'),
        backgroundColor: const Color(0xFFd9dcd6),
        elevation: 0,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
      ),
    );
  }
}
