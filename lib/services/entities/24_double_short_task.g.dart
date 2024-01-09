// GENERATED CODE - DO NOT MODIFY BY HAND

part of '24_double_short_task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoubleShortTaskAdapter extends TypeAdapter<DoubleShortTask> {
  @override
  final int typeId = 24;

  @override
  DoubleShortTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DoubleShortTask(
      program: fields[0] as String,
      electrodes: fields[1] as String,
      amplit: fields[3] as double?,
      condition: fields[2] as String?,
      hideamplt: fields[4] as bool,
      freq: fields[5] as int,
      hidefreq: fields[6] as bool,
      dur: fields[7] as int,
      hidedur: fields[8] as bool,
      formula: fields[9] as String?,
      fixformula: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DoubleShortTask obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.program)
      ..writeByte(1)
      ..write(obj.electrodes)
      ..writeByte(2)
      ..write(obj.condition)
      ..writeByte(3)
      ..write(obj.amplit)
      ..writeByte(4)
      ..write(obj.hideamplt)
      ..writeByte(5)
      ..write(obj.freq)
      ..writeByte(6)
      ..write(obj.hidefreq)
      ..writeByte(7)
      ..write(obj.dur)
      ..writeByte(8)
      ..write(obj.hidedur)
      ..writeByte(9)
      ..write(obj.formula)
      ..writeByte(10)
      ..write(obj.fixformula);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoubleShortTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
