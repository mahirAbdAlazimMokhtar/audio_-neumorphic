import 'package:flutter/material.dart';
import 'package:music_ui/audio_page.dart';

void main()=> runApp(const MusicApp());

class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioPage(),
    );
  }
}
