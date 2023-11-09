import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/video_buttons.dart';

class VideoScrollableVideo extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableVideo({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost video = videos[index];
        return Stack(
          children: [
            Positioned(bottom: 40, right: 20, child: VideoButtons(video: video))
          ],
        );
      },
    );
  }
}
