import 'package:instagram_clone/app/models/post.dart';
import 'package:instagram_clone/app/models/reel.dart';
import 'package:instagram_clone/app/models/story.dart';
import 'package:instagram_clone/app/models/user.dart';

User currentUser = User(
    id: '1',
    username: 'stevennovi',
    profileImageUrl:
        'https://pps.whatsapp.net/v/t61.24694-24/229861187_524026096052084_6724213439940983061_n.jpg?stp=dst-jpg_s96x96&ccb=11-4&oh=01_AVxyaK8LRJ08RHlLgXkUfvLk12l8a15-0bAqAmoUtHHuQQ&oe=62DF6B29');

final List<Story> stories = [
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
  Story(id: '2', postedBy: currentUser),
];

final List<Post> mockPosts = [
  Post(
      id: 'id1',
      postedBy: currentUser,
      imageUrl: 'https://picsum.photos/id/1062/400/400',
      title: 'title',
      location: 'Jakarta',
      caption: 'this is caption',
      postedTimeAgo: 'a few seconds ago',
      totalLikes: '54',
      totalComments: '457',
      isLiked: true,
      isBookmarked: true),
  Post(
      id: 'id2',
      postedBy: currentUser,
      imageUrl: 'https://picsum.photos/id/1069/400/400',
      title: 'title',
      location: 'Sydney',
      caption: 'this is caption',
      postedTimeAgo: 'a few seconds ago',
      totalLikes: '25',
      totalComments: '787',
      isLiked: false,
      isBookmarked: false),
  Post(
      id: 'id3',
      postedBy: currentUser,
      imageUrl: 'https://picsum.photos/id/1060/400/400',
      title: 'title',
      location: 'Malaysia',
      caption: 'this is caption',
      postedTimeAgo: 'a few seconds ago',
      totalLikes: '457',
      totalComments: '787',
      isLiked: false,
      isBookmarked: false),
  Post(
      id: 'id4',
      postedBy: currentUser,
      imageUrl: 'https://picsum.photos/id/1065/400/400',
      title: 'title',
      location: 'New York',
      caption: 'this is caption',
      postedTimeAgo: 'a few seconds ago',
      totalLikes: '1767',
      totalComments: '778',
      isLiked: false,
      isBookmarked: false),
  Post(
      id: 'id5',
      postedBy: currentUser,
      imageUrl: 'https://picsum.photos/id/1063/400/400',
      title: 'title',
      location: 'Singapore',
      caption: 'this is caption',
      postedTimeAgo: 'a few seconds ago',
      totalLikes: '97',
      totalComments: '786',
      isLiked: true,
      isBookmarked: true),
];

final List<Reel> mockReels = [
  Reel(
    postedBy: currentUser,
    imageUrl: 'https://picsum.photos/id/1048/800/1080',
    audioTitle: '周杰倫 - 聽媽媽的話',
    location: 'Singapore',
    caption: 'This is caption This is caption.',
    totalLikes: '791K',
    totalComments: '5641',
    isLiked: true,
  ),
  Reel(
    postedBy: currentUser,
    imageUrl: 'https://picsum.photos/id/1049/800/1080',
    audioTitle: '周杰倫 - 聽媽媽的話',
    location: 'Singapore',
    caption: 'This is caption This is caption This is caption.',
    totalLikes: '191K',
    totalComments: '6241',
    isLiked: false,
  ),
  Reel(
    postedBy: currentUser,
    imageUrl: 'https://picsum.photos/id/1050/800/1080',
    audioTitle: '周杰倫 - 聽媽媽的話',
    location: 'Jakarta',
    caption:
        'This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption',
    totalLikes: '21K',
    totalComments: '524',
    isLiked: true,
  ),
  Reel(
    postedBy: currentUser,
    imageUrl: 'https://picsum.photos/id/1051/800/1080',
    audioTitle: '周杰倫 - 聽媽媽的話',
    location: 'Jakarta',
    caption:
        'This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption',
    totalLikes: '21K',
    totalComments: '524',
    isLiked: true,
  ),
  Reel(
    postedBy: currentUser,
    imageUrl: 'https://picsum.photos/id/1052/800/1080',
    audioTitle: '周杰倫 - 聽媽媽的話',
    location: 'Jakarta',
    caption:
        'This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption',
    totalLikes: '21K',
    totalComments: '524',
    isLiked: true,
  ),
  Reel(
    postedBy: currentUser,
    imageUrl: 'https://picsum.photos/id/1053/800/1080',
    audioTitle: '周杰倫 - 聽媽媽的話',
    location: 'Jakarta',
    caption:
        'This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption',
    totalLikes: '21K',
    totalComments: '524',
    isLiked: true,
  ),
  Reel(
    postedBy: currentUser,
    imageUrl: 'https://picsum.photos/id/1054/800/1080',
    audioTitle: '周杰倫 - 聽媽媽的話',
    location: 'Jakarta',
    caption:
        'This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption This is caption',
    totalLikes: '21K',
    totalComments: '524',
    isLiked: true,
  ),
];

final List<String> mockCategories = [
  'steven',
  'novi',
  'stevennovi',
  'novisteven',
  'iloveyou',
  'missyou',
];
