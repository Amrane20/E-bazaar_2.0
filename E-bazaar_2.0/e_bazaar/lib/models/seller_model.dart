class Seller {
  var userId;
  String? email;
  String? password;
  int? phoneNumber;
  String? adress;
  String? firstName;
  String? lastName;
  String? storeName;
  String? storeImage;
  void showInfo() {
    print("$email | $password | $phoneNumber | $adress | $firstName | $lastName | $storeName | $storeImage");
  }
}