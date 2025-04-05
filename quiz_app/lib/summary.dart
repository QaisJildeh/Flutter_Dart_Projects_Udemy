import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const Summary({required this.summaryData, super.key});

  @override
  Widget build(ctx) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 15),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration( color: data['correct_answer'] == data['user_answer'] ? Colors.green : Colors.red,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment.center, 
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        textAlign: TextAlign.center, style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            data['correct_answer'] as String,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('User: ${data['user_answer'] as String}', style: TextStyle(fontSize: 18),), SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
