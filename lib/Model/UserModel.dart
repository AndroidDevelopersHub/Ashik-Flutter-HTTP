import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.id,
    this.userId,
    this.number,
    this.club,
    this.name,
    this.email,
    this.password,
    this.image,
    this.totalGame,
    this.clubBalance,
    this.currentBalance,
    this.profitBalance,
    this.parentReferId,
    this.userType,
    this.transferIn,
    this.transferOut,
    this.incentive,
    this.activeStatus,
  });

  int id;
  String userId;
  String number;
  String club;
  String name;
  String email;
  String password;
  String image;
  String totalGame;
  String clubBalance;
  String currentBalance;
  String profitBalance;
  String parentReferId;
  String userType;
  String transferIn;
  String transferOut;
  String incentive;
  String activeStatus;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    userId: json["user_id"],
    number: json["number"],
    club: json["club"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    image: json["image"],
    totalGame: json["total_game"],
    clubBalance: json["club_balance"],
    currentBalance: json["current_balance"],
    profitBalance: json["profit_balance"],
    parentReferId: json["parent_refer_id"],
    userType: json["user_type"],
    transferIn: json["transfer_in"],
    transferOut: json["transfer_out"],
    incentive: json["incentive"],
    activeStatus: json["active_status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "number": number,
    "club": club,
    "name": name,
    "email": email,
    "password": password,
    "image": image,
    "total_game": totalGame,
    "club_balance": clubBalance,
    "current_balance": currentBalance,
    "profit_balance": profitBalance,
    "parent_refer_id": parentReferId,
    "user_type": userType,
    "transfer_in": transferIn,
    "transfer_out": transferOut,
    "incentive": incentive,
    "active_status": activeStatus,
  };
}