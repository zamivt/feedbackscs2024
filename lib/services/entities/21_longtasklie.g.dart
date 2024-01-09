// GENERATED CODE - DO NOT MODIFY BY HAND

part of '21_longtasklie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LongTaskLieAdapter extends TypeAdapter<LongTaskLie> {
  @override
  final int typeId = 21;

  @override
  LongTaskLie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LongTaskLie(
      program: fields[0] as String,
      electrodes: fields[1] as String,
      amplit: fields[2] as double,
      freq: fields[3] as int,
      dur: fields[4] as int,
      hideamp: fields[5] as bool,
      hidefreq: fields[6] as bool,
      hidedur: fields[7] as bool,
      prim: fields[8] as String?,
      begintesttime: fields[9] as DateTime,
      stoptesttime: fields[10] as DateTime,
      durationtest: fields[11] as int,
      reasonstoptest: fields[12] as String?,
      markself: fields[13] as int,
    )..id = fields[14] as String;
  }

  @override
  void write(BinaryWriter writer, LongTaskLie obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.program)
      ..writeByte(1)
      ..write(obj.electrodes)
      ..writeByte(2)
      ..write(obj.amplit)
      ..writeByte(3)
      ..write(obj.freq)
      ..writeByte(4)
      ..write(obj.dur)
      ..writeByte(5)
      ..write(obj.hideamp)
      ..writeByte(6)
      ..write(obj.hidefreq)
      ..writeByte(7)
      ..write(obj.hidedur)
      ..writeByte(8)
      ..write(obj.prim)
      ..writeByte(9)
      ..write(obj.begintesttime)
      ..writeByte(10)
      ..write(obj.stoptesttime)
      ..writeByte(11)
      ..write(obj.durationtest)
      ..writeByte(12)
      ..write(obj.reasonstoptest)
      ..writeByte(13)
      ..write(obj.markself)
      ..writeByte(14)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LongTaskLieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
