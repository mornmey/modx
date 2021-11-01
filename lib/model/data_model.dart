class TestModel {
  String nameS;
  String nameT;
  String? classT;
  String age;
  String device;

  TestModel({
    this.nameS = '',
    this.nameT = '',
    this.classT = '',
    this.age = '',
    this.device = '',
  });

  static getCates() => [
        TestModel(
          nameS: "Student",
          nameT: "Teacher",
          age: '20',
          device: 'IOS',
          classT: 'A',
        ),
        TestModel(
          nameS: "Student1",
          nameT: "Teacher1",
          age: '21',
          device: 'IOS',
          classT: 'B',
        ),
        TestModel(
            nameS: "Student2",
            nameT: "Teacher2",
            age: '22',
            device: 'ANDROID',
            classT: 'C'),
        TestModel(
            nameS: "Student3",
            nameT: "Teacher3",
            age: '23',
            device: 'ANDROID',
            classT: 'D'),
        TestModel(
            nameS: "Student4",
            nameT: "Teacher4",
            age: '24',
            device: 'ANDROID',
            classT: 'E'),
      ];
}

abstract class Person {
  int? id;
  String? name;
  String? deviceOS;
  int? age;
  int? classroomID;
  Person({
    this.age,
    this.name,
    this.classroomID,
    this.deviceOS,
    this.id,
  });
}

class Teacher extends Person {}
