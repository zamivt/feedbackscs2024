// GENERATED CODE - DO NOT MODIFY BY HAND

part of '2_beforetask.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BeforeTaskAdapter extends TypeAdapter<BeforeTask> {
  @override
  final int typeId = 2;

  @override
  BeforeTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BeforeTask(
      beforeprogram: fields[0] as String,
      beforelectrode: fields[1] as String,
      beforeamp: fields[2] as double,
      beforefreq: fields[3] as int,
      beforedur: fields[4] as int,
      beforeprim: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BeforeTask obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.beforeprogram)
      ..writeByte(1)
      ..write(obj.beforelectrode)
      ..writeByte(2)
      ..write(obj.beforeamp)
      ..writeByte(3)
      ..write(obj.beforefreq)
      ..writeByte(4)
      ..write(obj.beforedur)
      ..writeByte(5)
      ..write(obj.beforeprim);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BeforeTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
