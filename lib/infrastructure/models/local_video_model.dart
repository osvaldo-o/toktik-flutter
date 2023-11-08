import 'package:toktik/domain/entities/video_post.dart';

class VideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  VideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory VideoModel.fromJsonMap(Map<String, dynamic> json) => VideoModel(
      name: json["name"],
      videoUrl: json["videoUrl"],
      likes: json["likes"],
      views: json["views"]);

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
