class Model {
  final List<Results> result;
  final Name name;
  Model({
    required this.result,
    required this.name,
  });
  factory Model.fromJson(Map<String, dynamic> json) {
    List<Results> data = [];
    json['results'].forEach((element) {
      data.add(Results.fromJson(element));
    });
    return Model(
      result: List.from(data),
      name: Name.fromJson(json['name']),
    );
  }
}

class Results {
  final String email;
  final String phone;
  final Name name;
  final Picture picture;
  Results({
    required this.email,
    required this.name,
    required this.phone,
    required this.picture,
  });
  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      email: json['email'],
      name: Name.fromJson(json['name']),
      phone: json['phone'],
      picture: Picture.fromJson(json['picture']),
    );
  }
}

class Name {
  final String title;
  final String first;
  final String last;
  Name({
    required this.title,
    required this.first,
    required this.last,
  });
  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}

class Picture {
  final String large;
  final String medium;
  Picture({
    required this.large,
    required this.medium,
  });
  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json['large'],
      medium: json['medium'],
    );
  }
}
