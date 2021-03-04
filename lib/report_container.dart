import 'package:flutter/material.dart';

class ReportContainer extends StatelessWidget {
  final double sizeHight; //SizeHeight from 0 to 1
  final double sizeWidth; // SizeWidth from 0 to 1
  final BuildContext context;

  ReportContainer(
      {this.sizeHight: 0.48, this.sizeWidth: 0.75, @required this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      height: MediaQuery.of(context).size.height * sizeHight,
      width: MediaQuery.of(context).size.width * sizeWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'REPORT',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 30,
              letterSpacing: 2,
            ),
          ),
          Column(
            children: [
              Text(
                'Thank you for you help.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'The most important priority for plife is your safety and comfort.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Divider(
                color: Colors.grey,
                height: 2,
                thickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Center(
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Text(
                    'DONE',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 26,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
