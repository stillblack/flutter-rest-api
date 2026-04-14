class UserModel {
  int? _id;
  String? _name;
  String? _username;
  String? _email;
  Address? _address;
  Company? _company;
  String? _phone;
  String? _website;
  UserModel({
    String? id,
    String? name,
    String? username,
    String? email,
    String? phone,
    String? website,
    Address? address,
    Company? company,
  }) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (username != null) {
      this._username = username;
    }
    if (email != null) {
      this._email = email;
    }
    if (address != null) {
      this._address = address;
    }
    if (company != null) {
      this._company = company;
    }
    if (phone != null) {
      this._phone = phone;
    }
    if (website != null) {
      this._website = website;
    }
  }
  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => name;
  set name(String? name) => _name = name;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  String? get website => _website;
  set website(String? website) => _website = website;
  Address? get address => _address;
  set address(Address? address) => _address = address;
  Company? get company => _company;
  set company(Company? company) => _company = company;

  UserModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _address = json['address'] != null
        ? new Address.fromJson(json['Address'])
        : null;
    _website = json['website'];
    _phone = json['phone'];
    _company = json['company'] != null
        ? new Company.fromJson(json['Company'])
        : null;
  }
  Map<String, dynamic> toJson() {}
}

// json to Dart

// Dart to json

// ✅ MISSING BRACE FIXED

// ================= Address =================
class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: json['geo'] != null ? Geo.fromJson(json['geo']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'suite': suite,
      'city': city,
      'zipcode': zipcode,
      'geo': geo?.toJson(),
    };
  }
}

// ================= Company =================
class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'catchPhrase': catchPhrase, 'bs': bs};
  }
}

class Geo {
  String? lat;
  String? lng;
  Geo({this.lat, this.lng});

  // json to dart
  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(lat: json['lat'], lng: json['lng']);
  }
  //  dart to json
  Map<String, dynamic> toJson() {
    return {'Lat': lat, 'Lng': lng};
  }
}
