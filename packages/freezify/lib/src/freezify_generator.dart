import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:freezify_annotation/freezify_annotation.dart';
import 'package:source_gen/source_gen.dart';

class FreezifyGenerator extends GeneratorForAnnotation<Freezify> {
  @override
  FutureOr<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    print(
        "element: ${element.id}, ${element.displayName}, ${element.documentationComment}, ${element.kind.displayName}, ${element.library.imports}, ${element.source.fullName}");
    final _element = element as ExtensionElement;
    print("---------------fields start------------");
    for (final field in _element.fields) {
      print("field: ${field}");
    }
    print("---------------fields end------------");
    print(_element.extendedType);
    print(_element.methods);
    print(_element.accessors);
    final extendedElem = _element.extendedType.element as ClassElement;
    var _fields = '';
    var _fieldArgs = '';
    print("---------------fields start------------");
    for (final field in extendedElem.fields) {
      print("extendedElem field: ${field}");
      print("extendedElem field.displayName: ${field.displayName}");
      _fields += field.toString() + ',\n';
      _fieldArgs += '${field.displayName}: self.${field.displayName},\n';
    }
    print("---------------fields end------------");
    /*
    final _element = element as ClassElement;
    for (final constructor in _element.constructors) {
      print("constructor: ${constructor.isPublic}");
    }
    for (final field in _element.fields) {
      print("field.isFinal: ${field.isFinal}");
      print("field.type: ${field.type}");
      print("field.displayName: ${field.displayName}");
    }
    print("annotation: ${annotation}");
    print("buildSte: ${buildStep}");

     */
    return '''

@freezed
abstract class Freezed${_element.extendedType} implements _\$Freezed${_element.extendedType} {
  const Freezed${_element.extendedType}._();
  factory Freezed${_element.extendedType}({
    ${_fields}
  }) = _Freezed${_element.extendedType};

  factory Freezed${_element.extendedType}._\$From(${_element.extendedType} self) => Freezed${_element.extendedType}(
      ${_fieldArgs});
}
    ''';
  }
}
