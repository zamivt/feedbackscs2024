// GENERATED CODE - DO NOT MODIFY BY HAND

part of '7_candidate_short_task_lie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CandidateShortTaskLieAdapter extends TypeAdapter<CandidateShortTaskLie> {
  @override
  final int typeId = 7;

  @override
  CandidateShortTaskLie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CandidateShortTaskLie(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CandidateShortTaskLie obj) {
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
      other is CandidateShortTaskLieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
