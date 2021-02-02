// @dart=2.9

import 'package:build/build.dart';
import 'package:freezify/src/freezify_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder freezify(BuilderOptions options) =>
    PartBuilder([FreezifyGenerator()], '.freezify.dart',
        header: '''
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies
    ''');
