// GENERATED CODE - DO NOT MODIFY BY HAND

part of '6_candidate_short_task_move.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CandidateShortTaskMoveAdapter
    extends TypeAdapter<CandidateShortTaskMove> {
  @override
  final int typeId = 6;

  @override
  CandidateShortTaskMove read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CandidateShortTaskMove(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CandidateShortTaskMove obj) {
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
      other is CandidateShortTaskMoveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
