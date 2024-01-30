// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Music _$MusicFromJson(Map<String, dynamic> json) => Music(
      json['id'] as String?,
      json['title'] as String?,
      json['album'] as String?,
      json['artist'] as String?,
      json['genre'] as String?,
      json['source'] as String?,
      json['image'] as String?,
      json['trackNumber'] as int?,
      json['totalTrackCount'] as int?,
      json['duration'] as int?,
      json['site'] as String?,
    );

Map<String, dynamic> _$MusicToJson(Music instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'album': instance.album,
      'artist': instance.artist,
      'genre': instance.genre,
      'source': instance.source,
      'image': instance.image,
      'trackNumber': instance.trackNumber,
      'totalTrackCount': instance.totalTrackCount,
      'duration': instance.duration,
      'site': instance.site,
    };
