import 'package:flutter/material.dart';

class RangesliderPage extends StatefulWidget {
  @override
  _RangesliderPageState createState() => _RangesliderPageState();
}

class _RangesliderPageState extends State<RangesliderPage> {
    RangeValues Myheight = const RangeValues(150, 180);

  @override
  Widget build(BuildContext context) {
                                    return SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.pink,
                                  inactiveTrackColor: const Color(0xFF8D8E98),
                                  thumbColor: const Color(0xFFEB1555),
                                  thumbShape:
                                  const RoundSliderThumbShape(enabledThumbRadius: 15),
                                  overlayShape:
                                  const RoundSliderOverlayShape(overlayRadius: 30.0),
                                  overlayColor: const Color(0x29EB1555),
                                  showValueIndicator: ShowValueIndicator.always,
                                ),
                                child: RangeSlider(
                                  values: Myheight,
                                  min: 100,
                                  max: 220,
                                  labels: RangeLabels('${Myheight.start.round()}', '${Myheight.end.round()}'),
                                  // divisions: 10,
                                  onChanged: (RangeValues newValue) {
                                    setState(() {
                                      Myheight = newValue;
                                    });
                                  },
                                ),
                              );
  }
}
