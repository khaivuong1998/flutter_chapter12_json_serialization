import 'package:json_annotation/json_annotation.dart';

part 'channel_reponse.g.dart';
@JsonSerializable()
class ChannelReponse {
  @JsonKey(name: 'languages')
  late List<String> stringData;

  ChannelReponse();

  factory ChannelReponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelReponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelReponseToJson(this);
}
