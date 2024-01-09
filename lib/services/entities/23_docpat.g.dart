// GENERATED CODE - DO NOT MODIFY BY HAND

part of '23_docpat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocPatAdapter extends TypeAdapter<DocPat> {
  @override
  final int typeId = 23;

  @override
  DocPat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DocPat(
      docid: fields[0] as String,
      family: fields[1] as String,
      io: fields[2] as String,
      email: fields[3] as String,
      photo: fields[4] as String,
      password: fields[5] as String,
      hospital: fields[6] as String,
      phone: fields[7] as String,
      attempt: fields[8] as int,
      history: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DocPat obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.docid)
      ..writeByte(1)
      ..write(obj.family)
      ..writeByte(2)
      ..write(obj.io)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.photo)
      ..writeByte(5)
      ..write(obj.password)
      ..writeByte(6)
      ..write(obj.hospital)
      ..writeByte(7)
      ..write(obj.phone)
      ..writeByte(8)
      ..write(obj.attempt)
      ..writeByte(9)
      ..write(obj.history);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocPatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
