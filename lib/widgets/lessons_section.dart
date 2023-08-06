import 'package:flutter/material.dart';

class LessonSection extends StatelessWidget {
  List lessonList = [
    'Lesson 1',
    'Lesson 2',
    'Lesson 3',
    'Lesson 4',
    'Lesson 5',
    'Lesson 6',
    'Lesson 7',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessonList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFF674AEF)
                  : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_circle_fill_rounded,
              color: Colors.white,
            ),

          ),
          title: Text(
            lessonList[index]
          ),
          subtitle: Text("35 minutes lesson"),
        );
      },
    );
  }
}
