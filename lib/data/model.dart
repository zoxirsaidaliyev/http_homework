class Model {
  final List<Results> results;
  Model({
    required this.results,
  });
  factory Model.fromJson(Map<String, dynamic> json) {
    List<Results> data = [];
    json['results'].forEach((element) {
      data.add(Results.fromJson(element));
    });
    return Model(
      results: List.from(data),
    );
  }
}

class Results {
  final String gender;
  final String email;
  final String phone;
  final Name name;
  final Picture picture;

  Results({
    required this.email,
    required this.name,
    required this.phone,
    required this.picture,
    required this.gender,
  });
  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      email: json['email'],
      name: Name.fromJson(json['name']),
      phone: json['phone'],
      picture: Picture.fromJson(json['picture']),
      gender: json['gender'],
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
