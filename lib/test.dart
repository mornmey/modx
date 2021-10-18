import 'package:flutter/material.dart';
import 'package:modx/data_model.dart';
import 'package:modx/widgets/expansiontile.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<TestModel> _models = TestModel.getCates();
  bool _hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Classroom',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: _models.length,
        itemBuilder: (context, index) {
          var _card = _models[index];
          return Expan(
              nameS: "${_card.nameS}",
              nameT: "${_card.nameT}",
              classT: "${_card.classT}",
              age: "${_card.age}",
              device: "${_card.device}");
        },
      ),
    );
  }
}
