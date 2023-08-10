import 'package:elearning/widgets/lesson_view.dart';
import 'package:flutter/material.dart';

import '../lessons/lesson1.dart';
import 'chapters_list.dart';

class LessonSection extends StatelessWidget {
  List lessonList = [
    'Lesson 1',
    'Lesson 2',
    'Lesson 3',
    'Lesson 4',
  ];
  List subTitle = [
    'Introduction',
    'Chemical bonding',
    'Valence electrons',
    'Structure of tom',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: lessonList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context,index){
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Lesson1(lessonList[index]),
                  ));
            },
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFF674AEF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.play_lesson,
                    color: Colors.white ,size:30,),
                ),
                title: Text(lessonList[index]),
                subtitle: Text(subTitle[index]),
              ),
          );
        },
    );
  }
}
