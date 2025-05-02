class UserModel {
  String? id;
  String? name;
  String? profileImage;
  String? email;
  String? phoneNumber;

  UserModel({
    this.id,
    this.name,
    this.profileImage,
    this.email,
    this.phoneNumber,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    profileImage = json['profileImage'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['profileImage'] = this.profileImage;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}
