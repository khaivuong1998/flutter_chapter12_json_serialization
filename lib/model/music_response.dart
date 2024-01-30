import 'package:chapter12_json_serialization/model/music.dart';
import 'package:json_annotation/json_annotation.dart';

part 'music_response.g.dart';

@JsonSerializable()
class MusicResponse {
  @JsonKey(name: 'music')
 late List<Music> listData;

  MusicResponse();

  factory MusicResponse.fromJson(Map<String, dynamic> json) => _$MusicResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MusicResponseToJson(this);
}
