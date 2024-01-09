class Doc {
  String docid;
  String family;
  String io;
  String email;
  String photo;
  String password;
  String hospital;
  String phone;
  int attempt;

  Doc(
      {required this.family,
      required this.io,
      required this.email,
      required this.phone,
      required this.hospital,
      required this.photo,
      required this.docid,
      required this.password,
      required this.attempt});
}
