// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:instagram_clone/app/models/user.dart';

class Post {
  final String id;
  final User postedBy;
  final String imageUrl;
  final String title;
  final String location;
  final String caption;
  final String postedTimeAgo;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;
  final bool isBookmarked;

  Post({
    required this.id,
    required this.postedBy,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.caption,
    required this.postedTimeAgo,
    required this.totalLikes,
    required this.totalComments,
    required this.isLiked,
    required this.isBookmarked,
  });
}
