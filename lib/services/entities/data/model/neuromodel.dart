// ignore_for_file: non_constant_identifier_names

class Neuro {
  String model;
  double minampl;
  double maxampl;
  String amp_meas;
  int minfreq;
  int maxfreq;
  int mindur;
  int maxdur;
  String pathinstneuro;

  Neuro({
    required this.model,
    required this.minampl,
    required this.maxampl,
    required this.amp_meas,
    required this.minfreq,
    required this.maxfreq,
    required this.mindur,
    required this.maxdur,
    required this.pathinstneuro,
  });
}
