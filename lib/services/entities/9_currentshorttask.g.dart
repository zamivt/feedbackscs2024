// GENERATED CODE - DO NOT MODIFY BY HAND

part of '9_currentshorttask.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentShortTaskAdapter extends TypeAdapter<CurrentShortTask> {
  @override
  final int typeId = 9;

  @override
  CurrentShortTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentShortTask(
      position: fields[0] as String,
      program: fields[1] as String,
      electrodes: fields[2] as String,
      condition: fields[3] as String?,
      amplit: fields[4] as double?,
      hideamplt: fields[5] as bool,
      freq: fields[6] as int,
      hidefreq: fields[7] as bool,
      dur: fields[8] as int,
      hidedur: fields[9] as bool,
      begintesttime: fields[10] as DateTime?,
      stoptesttime: fields[11] as DateTime?,
      durationtest: fields[12] as int?,
      currentlevelpain: fields[13] as int?,
      dessymptoms1: fields[14] as bool?,
      dessymptoms2: fields[15] as bool?,
      dessymptoms3: fields[16] as bool?,
      sideeffects: fields[17] as String?,
      bigsideeffects: fields[18] as bool?,
      placeparestesia: fields[19] as String?,
      longestsuitable: fields[20] as bool?,
      id: fields[21] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentShortTask obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.position)
      ..writeByte(1)
      ..write(obj.program)
      ..writeByte(2)
      ..write(obj.electrodes)
      ..writeByte(3)
      ..write(obj.condition)
      ..writeByte(4)
      ..write(obj.amplit)
      ..writeByte(5)
      ..write(obj.hideamplt)
      ..writeByte(6)
      ..write(obj.freq)
      ..writeByte(7)
      ..write(obj.hidefreq)
      ..writeByte(8)
      ..write(obj.dur)
      ..writeByte(9)
      ..write(obj.hidedur)
      ..writeByte(10)
      ..write(obj.begintesttime)
      ..writeByte(11)
      ..write(obj.stoptesttime)
      ..writeByte(12)
      ..write(obj.durationtest)
      ..writeByte(13)
      ..write(obj.currentlevelpain)
      ..writeByte(14)
      ..write(obj.dessymptoms1)
      ..writeByte(15)
      ..write(obj.dessymptoms2)
      ..writeByte(16)
      ..write(obj.dessymptoms3)
      ..writeByte(17)
      ..write(obj.sideeffects)
      ..writeByte(18)
      ..write(obj.bigsideeffects)
      ..writeByte(19)
      ..write(obj.placeparestesia)
      ..writeByte(20)
      ..write(obj.longestsuitable)
      ..writeByte(21)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentShortTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
