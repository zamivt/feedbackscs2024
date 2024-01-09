// GENERATED CODE - DO NOT MODIFY BY HAND

part of '10_successhorttaskmove.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SuccesShortTaskMoveAdapter extends TypeAdapter<SuccesShortTaskMove> {
  @override
  final int typeId = 10;

  @override
  SuccesShortTaskMove read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SuccesShortTaskMove(
      program: fields[1] as String,
      electrodes: fields[2] as String,
      amplit: fields[3] as double,
      hideampl: fields[4] as bool,
      freq: fields[5] as int,
      hidefreq: fields[6] as bool,
      dur: fields[7] as int,
      hidedur: fields[8] as bool,
      begintesttime: fields[9] as DateTime,
      stoptesttime: fields[10] as DateTime,
      durationtest: fields[11] as int,
      currentlevelpain: fields[12] as int,
      dessymptoms1: fields[13] as bool,
      dessymptoms2: fields[14] as bool,
      dessymptoms3: fields[15] as bool,
      sideeffects: fields[16] as String?,
      bigsideeffects: fields[17] as bool,
      placeparestesia: fields[18] as String?,
      longestsuitable: fields[19] as bool,
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SuccesShortTaskMove obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.program)
      ..writeByte(2)
      ..write(obj.electrodes)
      ..writeByte(3)
      ..write(obj.amplit)
      ..writeByte(4)
      ..write(obj.hideampl)
      ..writeByte(5)
      ..write(obj.freq)
      ..writeByte(6)
      ..write(obj.hidefreq)
      ..writeByte(7)
      ..write(obj.dur)
      ..writeByte(8)
      ..write(obj.hidedur)
      ..writeByte(9)
      ..write(obj.begintesttime)
      ..writeByte(10)
      ..write(obj.stoptesttime)
      ..writeByte(11)
      ..write(obj.durationtest)
      ..writeByte(12)
      ..write(obj.currentlevelpain)
      ..writeByte(13)
      ..write(obj.dessymptoms1)
      ..writeByte(14)
      ..write(obj.dessymptoms2)
      ..writeByte(15)
      ..write(obj.dessymptoms3)
      ..writeByte(16)
      ..write(obj.sideeffects)
      ..writeByte(17)
      ..write(obj.bigsideeffects)
      ..writeByte(18)
      ..write(obj.placeparestesia)
      ..writeByte(19)
      ..write(obj.longestsuitable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SuccesShortTaskMoveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
