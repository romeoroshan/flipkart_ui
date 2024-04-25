import 'package:flutter/material.dart';

class OptionsView extends StatelessWidget {
  final String title1;
  final IconData icon1;
  const OptionsView({super.key,required this.title1,required this.icon1});

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    double sWidth=screenSize.width;
    double sHeight=screenSize.height;
    return Container(
                    height: sHeight*0.07,
                    width: sWidth*0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            width: 1, color: const Color.fromARGB(255, 205, 205, 205))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            icon1,
                            color: Color.fromARGB(255, 13, 1, 147),
                          ),
                          SizedBox(width: 5,),
                          Text(title1,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
  }
}