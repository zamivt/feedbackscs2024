// GENERATED CODE - DO NOT MODIFY BY HAND

part of '16_candidate_long_taskmove.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CandidateLongTaskMoveAdapter extends TypeAdapter<CandidateLongTaskMove> {
  @override
  final int typeId = 16;

  @override
  CandidateLongTaskMove read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CandidateLongTaskMove(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CandidateLongTaskMove obj) {
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
      other is CandidateLongTaskMoveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
