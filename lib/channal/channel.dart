import 'package:json_annotation/json_annotation.dart';

part 'channel.g.dart';

@JsonSerializable()
class Channel {
  @JsonKey(name: 'type')
  String? type;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'access')
  String? access;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'summary')
  String? summary;

  @JsonKey(name: 'hasEpisodes')
  bool? hasEpisodes;

  @JsonKey(name: 'hasSeries')
  bool? hasSeries;

  @JsonKey(name: 'hasChannels')
  bool? hasChannels;

  @JsonKey(name: 'slug')
  String? slug;

  @JsonKey(name: 'createdAt')
  int? createdAt;

  @JsonKey(name: 'seriesChangedAt')
  int? seriesChangedAt;

  @JsonKey(name: 'episodesChangedAt')
  int? episodesChangedAt;

  @JsonKey(name: 'channelType')
  String? channelType;

  @JsonKey(name: 'updatedAt')
  int? updatedAt;

  @JsonKey(name: 'numberOfSubChannels')
  int? numberOfSubChannels;

  @JsonKey(name: 'lookup')
  String? lookup;

  @JsonKey(name: 'latestLookup')
  String? latestLookup;

  @JsonKey(name: 'languages')
  String? languages;

  @JsonKey(name: 'subscriptionsLimit')
  int? subscriptionsLimit;

  @JsonKey(name: 'share')
  String? share;

  Channel(
      this.type,
      this.id,
      this.access,
      this.title,
      this.summary,
      this.hasEpisodes,
      this.hasSeries,
      this.hasChannels,
      this.slug,
      this.createdAt,
      this.seriesChangedAt,
      this.episodesChangedAt,
      this.channelType,
      this.updatedAt,
      this.numberOfSubChannels,
      this.lookup,
      this.latestLookup,
      this.languages,
      this.subscriptionsLimit,
      this.share);

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}
