// GENERATED CODE - DO NOT MODIFY BY HAND

part of '17_candidate_longtasklie.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CandidateLongTaskLieAdapter extends TypeAdapter<CandidateLongTaskLie> {
  @override
  final int typeId = 17;

  @override
  CandidateLongTaskLie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CandidateLongTaskLie(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CandidateLongTaskLie obj) {
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
      other is CandidateLongTaskLieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
