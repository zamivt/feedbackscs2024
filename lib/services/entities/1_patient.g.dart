// GENERATED CODE - DO NOT MODIFY BY HAND

part of '1_patient.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatientAdapter extends TypeAdapter<Patient> {
  @override
  final int typeId = 1;

  @override
  Patient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Patient(
      isremotepatient: fields[0] as bool,
      fio: fields[1] as String,
      email: fields[2] as String,
      phone: fields[3] as String,
      diagnoz: fields[4] as String,
      anamnez: fields[5] as String,
      levelmaxpain: fields[6] as int,
      sympotoms1: fields[7] as String,
      sympotoms2: fields[8] as String,
      sympotoms3: fields[9] as String?,
      modelneuro: fields[10] as String,
      priorityshorttest: fields[11] as String,
      prioritylevelpain: fields[12] as int,
      timelie: fields[14] as int,
      timeseat: fields[13] as int,
      timemove: fields[15] as int,
      teststage: fields[16] as String,
      islicense: fields[18] as bool?,
      activetask: fields[17] as String?,
      sex: fields[19] as String,
      histrorystage: fields[20] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Patient obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.isremotepatient)
      ..writeByte(1)
      ..write(obj.fio)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.diagnoz)
      ..writeByte(5)
      ..write(obj.anamnez)
      ..writeByte(6)
      ..write(obj.levelmaxpain)
      ..writeByte(7)
      ..write(obj.sympotoms1)
      ..writeByte(8)
      ..write(obj.sympotoms2)
      ..writeByte(9)
      ..write(obj.sympotoms3)
      ..writeByte(10)
      ..write(obj.modelneuro)
      ..writeByte(11)
      ..write(obj.priorityshorttest)
      ..writeByte(12)
      ..write(obj.prioritylevelpain)
      ..writeByte(13)
      ..write(obj.timeseat)
      ..writeByte(14)
      ..write(obj.timelie)
      ..writeByte(15)
      ..write(obj.timemove)
      ..writeByte(16)
      ..write(obj.teststage)
      ..writeByte(17)
      ..write(obj.activetask)
      ..writeByte(18)
      ..write(obj.islicense)
      ..writeByte(19)
      ..write(obj.sex)
      ..writeByte(20)
      ..write(obj.histrorystage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
