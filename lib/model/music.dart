import 'package:json_annotation/json_annotation.dart';

part 'music.g.dart';

@JsonSerializable()
class Music {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'album')
  String? album;

  @JsonKey(name: 'artist')
  String? artist;

  @JsonKey(name: 'genre')
  String? genre;

  @JsonKey(name: 'source')
  String? source;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'trackNumber')
  int? trackNumber;

  @JsonKey(name: 'totalTrackCount')
  int? totalTrackCount;

  @JsonKey(name: 'duration')
  int? duration;

  @JsonKey(name: 'site')
  String? site;

  Music(
      this.id,
      this.title,
      this.album,
      this.artist,
      this.genre,
      this.source,
      this.image,
      this.trackNumber,
      this.totalTrackCount,
      this.duration,
      this.site);

  factory Music.fromJson(Map<String, dynamic> json) => _$MusicFromJson(json);

  Map<String, dynamic> toJson() => _$MusicToJson(this);
}
