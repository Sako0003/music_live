class Song {
  String id;
  String albumid;
  String title;
  String groub;
  String musicstil;
  String musicurl;
  String imageUrl;
  String datamusic;
  Song(
      {this.id,
      this.albumid,
      this.groub,
      this.title,
      this.imageUrl,
      this.musicstil,
      this.musicurl,
      this.datamusic});
  Song.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    albumid = json['albumid'];
    title = json['musicname'];
    groub = json['groub'];
    musicstil = json['musicstil'];
    musicurl = json['musicurl'];
    imageUrl = json['imageUrl'];
    datamusic = json['datamusic'];
  }
  Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = Map<String, dynamic>();
      data['id'] = this.id;
      data['albumid'] = this.albumid;
      data['title'] = this.title;
      data['groub'] = this.groub;
      data['musicstil'] = this.musicstil;
      data['musicurl'] = this.musicurl;
      data['imageUrl'] = this.imageUrl;
      data['datamusic'] = this.datamusic;
      return data;
    }
}