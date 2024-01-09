// GENERATED CODE - DO NOT MODIFY BY HAND

part of '8_candidate_short_task_seat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CandidateShortTaskSeatAdapter
    extends TypeAdapter<CandidateShortTaskSeat> {
  @override
  final int typeId = 8;

  @override
  CandidateShortTaskSeat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CandidateShortTaskSeat(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CandidateShortTaskSeat obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CandidateShortTaskSeatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
