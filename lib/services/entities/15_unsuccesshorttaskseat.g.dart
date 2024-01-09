// GENERATED CODE - DO NOT MODIFY BY HAND

part of '15_unsuccesshorttaskseat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnSuccesShortTaskSeatAdapter extends TypeAdapter<UnSuccesShortTaskSeat> {
  @override
  final int typeId = 15;

  @override
  UnSuccesShortTaskSeat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UnSuccesShortTaskSeat(
      program: fields[1] as String,
      electrodes: fields[2] as String,
      amplit: fields[3] as double,
      hideampl: fields[4] as bool,
      freq: fields[5] as int,
      hidefreq: fields[6] as bool,
      dur: fields[7] as int,
      hidedur: fields[8] as bool,
      prim: fields[9] as String?,
      begintesttime: fields[10] as DateTime,
      stoptesttime: fields[11] as DateTime,
      durationtest: fields[12] as int,
      currentlevelpain: fields[13] as int,
      dessymptoms1: fields[14] as bool,
      dessymptoms2: fields[15] as bool,
      dessymptoms3: fields[16] as bool,
      sideeffects: fields[17] as String?,
      bigsideeffects: fields[18] as bool,
      placeparestesia: fields[19] as String?,
      longestsuitable: fields[20] as bool,
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UnSuccesShortTaskSeat obj) {
    writer
      ..writeByte(21)
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
      ..write(obj.prim)
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
      ..write(obj.longestsuitable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnSuccesShortTaskSeatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
