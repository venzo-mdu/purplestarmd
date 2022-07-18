class Regiser {
  String uid;
  String fullname;
  String emailaddress;
  double phonenumber;

  Regiser({
    required this.uid,
    required this.fullname,
    required this.emailaddress,
    required this.phonenumber,
  });

  static Regiser fromMap(Map<String, dynamic> map) {
    return Regiser(
      uid: map['uid'],
      fullname: map['fullname'],
      emailaddress: map['emailaddress'],
      phonenumber: map['phonenumber'],
    );
  }
}