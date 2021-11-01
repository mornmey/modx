import 'package:flutter/material.dart';
import 'package:modx/model/data_model.dart';
import 'package:modx/model/student/student.dart';
import 'package:modx/model/teacher/teacher.dart';
import 'package:modx/modx/classroom/classroom_store.dart';
import 'package:modx/screens/detail.dart';
import 'package:modx/widgets/expansiontile.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final ClassroomStore _classroomStore = ClassroomStore();
  final Teacher _teacher = Teacher();
  final Student _student = Student();


  List<TestModel> _models = TestModel.getCates();
  bool _hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Classroom',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: _models.length,
        itemBuilder: (context, index) {
          var _card = _models[index];
          return Container(
            child: Expan(
              nameS:
                  "${_card.nameS}\n${_card.nameS}\n${_card.nameS}\n${_card.nameS} ",
              nameT: "${_card.nameT}",
              classT: "${_card.classT}",
              age: "${_card.age}",
              device: "${_card.device}",
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // ignore: prefer_const_constructors
                      builder: (context) => Detail(),
                    ),
                  );
                });
              },
            ),
          );
        },
      ),
    );
  }
}
