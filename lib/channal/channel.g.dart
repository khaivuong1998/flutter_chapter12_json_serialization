// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      json['type'] as String?,
      json['id'] as int?,
      json['access'] as String?,
      json['title'] as String?,
      json['summary'] as String?,
      json['hasEpisodes'] as bool?,
      json['hasSeries'] as bool?,
      json['hasChannels'] as bool?,
      json['slug'] as String?,
      json['createdAt'] as int?,
      json['seriesChangedAt'] as int?,
      json['episodesChangedAt'] as int?,
      json['channelType'] as String?,
      json['updatedAt'] as int?,
      json['numberOfSubChannels'] as int?,
      json['lookup'] as String?,
      json['latestLookup'] as String?,
      json['languages'] as String?,
      json['subscriptionsLimit'] as int?,
      json['share'] as String?,
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'access': instance.access,
      'title': instance.title,
      'summary': instance.summary,
      'hasEpisodes': instance.hasEpisodes,
      'hasSeries': instance.hasSeries,
      'hasChannels': instance.hasChannels,
      'slug': instance.slug,
      'createdAt': instance.createdAt,
      'seriesChangedAt': instance.seriesChangedAt,
      'episodesChangedAt': instance.episodesChangedAt,
      'channelType': instance.channelType,
      'updatedAt': instance.updatedAt,
      'numberOfSubChannels': instance.numberOfSubChannels,
      'lookup': instance.lookup,
      'latestLookup': instance.latestLookup,
      'languages': instance.languages,
      'subscriptionsLimit': instance.subscriptionsLimit,
      'share': instance.share,
    };
