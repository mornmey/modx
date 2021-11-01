// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Teacher on _TeacherBase, Store {
  final _$teacherAtom = Atom(name: '_TeacherBase.teacher');

  @override
  Teacher? get teacher {
    _$teacherAtom.reportRead();
    return super.teacher;
  }

  @override
  set teacher(Teacher? value) {
    _$teacherAtom.reportWrite(value, super.teacher, () {
      super.teacher = value;
    });
  }

  final _$_TeacherBaseActionController = ActionController(name: '_TeacherBase');

  @override
  void upsertTeacher(Teacher? teacher) {
    final _$actionInfo = _$_TeacherBaseActionController.startAction(
        name: '_TeacherBase.upsertTeacher');
    try {
      return super.upsertTeacher(teacher);
    } finally {
      _$_TeacherBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
teacher: ${teacher}
    ''';
  }
}
