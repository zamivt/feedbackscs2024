// GENERATED CODE - DO NOT MODIFY BY HAND

part of '19_currentlongtask.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentLongTaskAdapter extends TypeAdapter<CurrentLongTask> {
  @override
  final int typeId = 19;

  @override
  CurrentLongTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentLongTask(
      position: fields[0] as String,
      program: fields[1] as String,
      electrodes: fields[2] as String,
      amplit: fields[3] as double,
      freq: fields[4] as int,
      dur: fields[5] as int,
      hideamp: fields[6] as bool,
      hidefreq: fields[7] as bool,
      hidedur: fields[8] as bool,
      prim: fields[9] as String?,
      begintesttime: fields[10] as DateTime?,
      stoptesttime: fields[11] as DateTime?,
      durationtest: fields[12] as int?,
      reasonstoptest: fields[13] as String?,
      markself: fields[14] as double?,
      id: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentLongTask obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.position)
      ..writeByte(1)
      ..write(obj.program)
      ..writeByte(2)
      ..write(obj.electrodes)
      ..writeByte(3)
      ..write(obj.amplit)
      ..writeByte(4)
      ..write(obj.freq)
      ..writeByte(5)
      ..write(obj.dur)
      ..writeByte(6)
      ..write(obj.hideamp)
      ..writeByte(7)
      ..write(obj.hidefreq)
      ..writeByte(8)
      ..write(obj.hidedur)
      ..writeByte(9)
      ..write(obj.prim)
      ..writeByte(10)
      ..write(obj.begintesttime)
      ..writeByte(11)
      ..write(obj.stoptesttime)
      ..writeByte(12)
      ..write(obj.durationtest)
      ..writeByte(13)
      ..write(obj.reasonstoptest)
      ..writeByte(14)
      ..write(obj.markself)
      ..writeByte(15)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentLongTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
