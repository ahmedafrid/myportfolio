// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PositionStruct extends FFFirebaseStruct {
  PositionStruct({
    double? xAxis,
    double? yAxis,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xAxis = xAxis,
        _yAxis = yAxis,
        super(firestoreUtilData);

  // "x-axis" field.
  double? _xAxis;
  double get xAxis => _xAxis ?? 0.0;
  set xAxis(double? val) => _xAxis = val;
  void incrementXAxis(double amount) => _xAxis = xAxis + amount;
  bool hasXAxis() => _xAxis != null;

  // "y-axis" field.
  double? _yAxis;
  double get yAxis => _yAxis ?? 0.0;
  set yAxis(double? val) => _yAxis = val;
  void incrementYAxis(double amount) => _yAxis = yAxis + amount;
  bool hasYAxis() => _yAxis != null;

  static PositionStruct fromMap(Map<String, dynamic> data) => PositionStruct(
        xAxis: castToType<double>(data['x-axis']),
        yAxis: castToType<double>(data['y-axis']),
      );

  static PositionStruct? maybeFromMap(dynamic data) =>
      data is Map ? PositionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'x-axis': _xAxis,
        'y-axis': _yAxis,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'x-axis': serializeParam(
          _xAxis,
          ParamType.double,
        ),
        'y-axis': serializeParam(
          _yAxis,
          ParamType.double,
        ),
      }.withoutNulls;

  static PositionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PositionStruct(
        xAxis: deserializeParam(
          data['x-axis'],
          ParamType.double,
          false,
        ),
        yAxis: deserializeParam(
          data['y-axis'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PositionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PositionStruct &&
        xAxis == other.xAxis &&
        yAxis == other.yAxis;
  }

  @override
  int get hashCode => const ListEquality().hash([xAxis, yAxis]);
}

PositionStruct createPositionStruct({
  double? xAxis,
  double? yAxis,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PositionStruct(
      xAxis: xAxis,
      yAxis: yAxis,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PositionStruct? updatePositionStruct(
  PositionStruct? position, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    position
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPositionStructData(
  Map<String, dynamic> firestoreData,
  PositionStruct? position,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (position == null) {
    return;
  }
  if (position.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && position.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final positionData = getPositionFirestoreData(position, forFieldValue);
  final nestedData = positionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = position.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPositionFirestoreData(
  PositionStruct? position, [
  bool forFieldValue = false,
]) {
  if (position == null) {
    return {};
  }
  final firestoreData = mapToFirestore(position.toMap());

  // Add any Firestore field values
  position.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPositionListFirestoreData(
  List<PositionStruct>? positions,
) =>
    positions?.map((e) => getPositionFirestoreData(e, true)).toList() ?? [];
