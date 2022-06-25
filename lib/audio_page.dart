import 'package:flutter/material.dart';
import 'package:music_ui/widget/nue_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NuoBox(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text(
                      'P L A Y L I S T',
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NuoBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                NuoBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: const Image(
                          image: AssetImage('assets/images/photo1.jpeg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kota The Friend',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Birdie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            ),
                            const SizedBox(height: 30),

                            // start time, shuffle button, repeat button, end time

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4:22')
                  ],
                ),
                const SizedBox(height: 30),

                // linear bar
                NuoBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(height: 30),
    // previous song, pause play, skip next song
                Row(children: const [
                   Expanded(
                    child: NuoBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: NuoBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          )),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: NuoBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        )),
                  ),
                ],)
                  ],
                ),

            ),
          ),
        );
  }
}
