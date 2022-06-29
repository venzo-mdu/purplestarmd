class Regiser {
  String fullname;
  String emailaddress;
  double phonenumber;

  Regiser(
      this. fullname,
      this.emailaddress,
      this.phonenumber,
  );

  Map<String, dynamic> toJson() => {
    'fullname': fullname,
    'emailaddress': emailaddress,
    'phonenumber': phonenumber,
  };
}