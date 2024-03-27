import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Expanded Widget without Flex',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.5,
                ),
              ),
          
              SizedBox(height: 40,),
          
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      alignment: Alignment.center,
                      color: Colors.pink[300],
                      height: 100,
                    )
                  ),
          
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.all(0),
                      alignment: Alignment.center,
                      color: Colors.green,
                      height: 100,
                    )
                  ),
          
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      alignment: Alignment.center,
                      color: Colors.amber,
                      height: 100,
                    )
                  ),
                ],
              ),

              SizedBox(height: 40,),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Expanded Widget with Flex',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 0.5,
                    ),
                  ),

                  SizedBox(height: 40,),

                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          color: Colors.pink[300],
                        ) 
                      ),

                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          color: Colors.green,
                        ) 
                      ),

                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          color: Colors.amber,
                        ) 
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}