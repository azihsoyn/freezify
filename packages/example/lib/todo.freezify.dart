// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo.dart';

// **************************************************************************
// FreezifyGenerator
// **************************************************************************

@freezed
abstract class FreezedTodo implements _$FreezedTodo {
  const FreezedTodo._();
  factory FreezedTodo({
    String id,
    int number,
    String description,
  }) = _FreezedTodo;

  factory FreezedTodo._$From(Todo self) => FreezedTodo(
        id: self.id,
        number: self.number,
        description: self.description,
      );
}
