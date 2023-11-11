import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';
import 'package:toktik/infrastructure/datasource/local_video_datasource_impl.dart';

class VideoPostsRepositoryImpl extends VideoPostsRepository {
  final LocalVideoDatasourceImpl localVideoPostsDatasource;

  VideoPostsRepositoryImpl({required this.localVideoPostsDatasource});
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) =>
      localVideoPostsDatasource.getFavoriteVideosByUser(userID);

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) =>
      localVideoPostsDatasource.getTrendingVideosByPage(page);
}
