// @dart=2.9

import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:freezify_annotation/freezify_annotation.dart';
import 'package:source_gen/source_gen.dart';

class FreezifyGenerator extends GeneratorForAnnotation<Freezify> {
  @override
  FutureOr<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final _element = element as ExtensionElement;
    final extendedElem = _element.extendedType.element as ClassElement;
    var _fields = '';
    var _fieldArgs = '';
    for (final field in extendedElem.fields) {
      // workaround
      final _type = field.type.toString().replaceAll("*", "");
      _fields += '${_type} ${field.displayName},\n';
      _fieldArgs += '${field.displayName}: self.${field.displayName},\n';
    }
    // workaround
    final _extendedType = _element.extendedType.toString().replaceAll("*", "");
    return '''

@freezed
abstract class Freezed${_extendedType} implements _\$Freezed${_extendedType} {
  const Freezed${_extendedType}._();
  factory Freezed${_extendedType}({
    ${_fields}
  }) = _Freezed${_extendedType};

  factory Freezed${_extendedType}._\$From(${_extendedType} self) => Freezed${_extendedType}(
      ${_fieldArgs});
}
    ''';
  }
}
