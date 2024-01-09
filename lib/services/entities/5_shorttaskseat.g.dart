// GENERATED CODE - DO NOT MODIFY BY HAND

part of '5_shorttaskseat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShortTaskSeatAdapter extends TypeAdapter<ShortTaskSeat> {
  @override
  final int typeId = 5;

  @override
  ShortTaskSeat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShortTaskSeat(
      program: fields[0] as String,
      amplit: fields[3] as double?,
      hideamplt: fields[4] as bool,
      condition: fields[2] as String?,
      electrodes: fields[1] as String,
      dur: fields[7] as int,
      hidedur: fields[8] as bool,
      freq: fields[5] as int,
      hidefreq: fields[6] as bool,
      formula: fields[9] as String?,
      fixformula: fields[10] as String?,
      success: fields[12] as String,
    )..id = fields[11] as String;
  }

  @override
  void write(BinaryWriter writer, ShortTaskSeat obj) {
    writer
      ..writeByte(13)
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
      ..write(obj.fixformula)
      ..writeByte(11)
      ..write(obj.id)
      ..writeByte(12)
      ..write(obj.success);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShortTaskSeatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
