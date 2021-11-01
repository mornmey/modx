import 'package:mobx/mobx.dart';
part 'teacher.g.dart';

class Teacher = _TeacherBase with _$Teacher;

abstract class _TeacherBase with Store {
  @observable
  // Teacher? teacher;

  // @action
  // void upsertTeacher(Teacher? teacher) {
  //   this.teacher = teacher;
  // }
}