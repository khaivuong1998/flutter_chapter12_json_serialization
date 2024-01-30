// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelReponse _$ChannelReponseFromJson(Map<String, dynamic> json) =>
    ChannelReponse()
      ..stringData =
          (json['languages'] as List<dynamic>).map((e) => e as String).toList();

Map<String, dynamic> _$ChannelReponseToJson(ChannelReponse instance) =>
    <String, dynamic>{
      'languages': instance.stringData,
    };
