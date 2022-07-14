import 'package:instagram_clone/app/models/user.dart';

class Reel {
  final User postedBy;
  final String imageUrl;
  final String audioTitle;
  final String location;
  final String caption;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;

  Reel({
    required this.postedBy,
    required this.imageUrl,
    required this.audioTitle,
    required this.location,
    required this.caption,
    required this.totalLikes,
    required this.totalComments,
    required this.isLiked,
  });
}
