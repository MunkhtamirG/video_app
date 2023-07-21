import 'package:equatable/equatable.dart';
import 'package:video_app/model/user_model.dart';
import 'package:video_app/model/video_file_model.dart';

class FeedModel extends Equatable {
  final int id;
  final int width;
  final int height;
  final String image;
  final int duration;
  final UserModel user;
  final List<VideoModel> videos;

  FeedModel(this.id, this.width, this.height, this.image, this.duration,
      this.user, this.videos);

  FeedModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        width = json['width'] ?? 0,
        height = json['height'] ?? 0,
        image = json['image'] ?? '',
        duration = json['duration'] ?? 0,
        user = json['user'] != null
            ? UserModel.fromJson(json['user'])
            : UserModel.empty,
        videos = json['video_files'] != null
            ? (json['video_files'] as List)
                .map((e) => VideoModel.fromJson(e))
                .toList()
            : [];

  @override
  List<Object> get props => [id, width, height, image, duration];

  static var empty = FeedModel(0, 0, 0, '', 0, UserModel.empty, []);
}
