// GENERATED CODE - DO NOT MODIFY BY HAND

part of '0_battery.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BatteryAdapter extends TypeAdapter<Battery> {
  @override
  final int typeId = 0;

  @override
  Battery read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Battery(
      note: fields[1] as String,
      date: fields[2] as DateTime,
      lengbattery: fields[3] as int?,
      summarybattery: fields[4] as int?,
      countwithoutcoment: fields[5] as int?,
      teststage: fields[6] as String,
    )..id = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, Battery obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.note)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.lengbattery)
      ..writeByte(4)
      ..write(obj.summarybattery)
      ..writeByte(5)
      ..write(obj.countwithoutcoment)
      ..writeByte(6)
      ..write(obj.teststage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatteryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
