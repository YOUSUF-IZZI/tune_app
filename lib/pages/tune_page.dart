import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_key.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.indigo, sound: 'sounds/note1.wav'),
    TuneModel(color: Color(0xffF44336), sound: 'sounds/note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'sounds/note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'sounds/note4.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'sounds/note5.wav'),
    TuneModel(color: Colors.white, sound: 'sounds/note6.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'sounds/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        title: const Text('Tunes'),
      ),
      body: Column(
        children: tunes.map((tune) => TuneKey(tune: tune)).toList()
      ),
    );
  }
}
