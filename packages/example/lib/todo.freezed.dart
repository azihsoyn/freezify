// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FreezedTodoTearOff {
  const _$FreezedTodoTearOff();

// ignore: unused_element
  _FreezedTodo call({String id, int number, String description}) {
    return _FreezedTodo(
      id: id,
      number: number,
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FreezedTodo = _$FreezedTodoTearOff();

/// @nodoc
mixin _$FreezedTodo {
  String get id;
  int get number;
  String get description;

  $FreezedTodoCopyWith<FreezedTodo> get copyWith;
}

/// @nodoc
abstract class $FreezedTodoCopyWith<$Res> {
  factory $FreezedTodoCopyWith(
          FreezedTodo value, $Res Function(FreezedTodo) then) =
      _$FreezedTodoCopyWithImpl<$Res>;
  $Res call({String id, int number, String description});
}

/// @nodoc
class _$FreezedTodoCopyWithImpl<$Res> implements $FreezedTodoCopyWith<$Res> {
  _$FreezedTodoCopyWithImpl(this._value, this._then);

  final FreezedTodo _value;
  // ignore: unused_field
  final $Res Function(FreezedTodo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$FreezedTodoCopyWith<$Res>
    implements $FreezedTodoCopyWith<$Res> {
  factory _$FreezedTodoCopyWith(
          _FreezedTodo value, $Res Function(_FreezedTodo) then) =
      __$FreezedTodoCopyWithImpl<$Res>;
  @override
  $Res call({String id, int number, String description});
}

/// @nodoc
class __$FreezedTodoCopyWithImpl<$Res> extends _$FreezedTodoCopyWithImpl<$Res>
    implements _$FreezedTodoCopyWith<$Res> {
  __$FreezedTodoCopyWithImpl(
      _FreezedTodo _value, $Res Function(_FreezedTodo) _then)
      : super(_value, (v) => _then(v as _FreezedTodo));

  @override
  _FreezedTodo get _value => super._value as _FreezedTodo;

  @override
  $Res call({
    Object id = freezed,
    Object number = freezed,
    Object description = freezed,
  }) {
    return _then(_FreezedTodo(
      id: id == freezed ? _value.id : id as String,
      number: number == freezed ? _value.number : number as int,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_FreezedTodo extends _FreezedTodo {
  _$_FreezedTodo({this.id, this.number, this.description}) : super._();

  @override
  final String id;
  @override
  final int number;
  @override
  final String description;

  @override
  String toString() {
    return 'FreezedTodo(id: $id, number: $number, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreezedTodo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$FreezedTodoCopyWith<_FreezedTodo> get copyWith =>
      __$FreezedTodoCopyWithImpl<_FreezedTodo>(this, _$identity);
}

abstract class _FreezedTodo extends FreezedTodo {
  _FreezedTodo._() : super._();
  factory _FreezedTodo({String id, int number, String description}) =
      _$_FreezedTodo;

  @override
  String get id;
  @override
  int get number;
  @override
  String get description;
  @override
  _$FreezedTodoCopyWith<_FreezedTodo> get copyWith;
}
