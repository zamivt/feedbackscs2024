// GENERATED CODE - DO NOT MODIFY BY HAND

part of '18_candidate_longtaskseat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CandidateLongTaskSeatAdapter extends TypeAdapter<CandidateLongTaskSeat> {
  @override
  final int typeId = 18;

  @override
  CandidateLongTaskSeat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CandidateLongTaskSeat(
      id: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CandidateLongTaskSeat obj) {
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
      other is CandidateLongTaskSeatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
