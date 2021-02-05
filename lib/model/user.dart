import 'dart:convert';

class User {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  User({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  


  User copyWith({
    int userId,
    int id,
    String title,
    bool completed,
  }) {
    return User(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return User(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
      completed: map['completed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(userId: $userId, id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is User &&
      o.userId == userId &&
      o.id == id &&
      o.title == title &&
      o.completed == completed;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
      id.hashCode ^
      title.hashCode ^
      completed.hashCode;
  }
}




//////test
class News {
  String title;
  String link;
  String reciever;
  String image;
  News({
    this.title,
    this.link,
    this.reciever,
    this.image,
  });

  

  News copyWith({
    String title,
    String link,
    String reciever,
    String image,
  }) {
    return News(
      title: title ?? this.title,
      link: link ?? this.link,
      reciever: reciever ?? this.reciever,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'link': link,
      'reciever': reciever,
      'image': image,
    };
  }

  factory News.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return News(
      title: map['title'],
      link: map['link'],
      reciever: map['reciever'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory News.fromJson(String source) => News.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Song(title: $title, link: $link, reciever: $reciever, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is News &&
      o.title == title &&
      o.link == link &&
      o.reciever == reciever &&
      o.image == image;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      link.hashCode ^
      reciever.hashCode ^
      image.hashCode;
  }
}