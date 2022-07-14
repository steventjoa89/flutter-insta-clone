import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
  }) : super(key: key);

  final double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('username',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            subtitle: Text(
              'location',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 12),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
          Image.network('https://picsum.photos/id/1062/400/400',
              height: 400, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                    iconSize: _iconSize,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    padding: EdgeInsets.only(right: 8),
                    onPressed: () {},
                    icon: Icon(Icons.chat_bubble_outline),
                    iconSize: _iconSize,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_outlined),
                  iconSize: _iconSize,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_outline),
                  iconSize: _iconSize,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('123 likes'),
                Text('2 days ago'),
              ],
            ),
          )
        ],
      ),
    );
  }
}


// TODO 12:09
// https://www.youtube.com/watch?v=2LOTG8Ki6l4&list=PL6yQPkb1_OeT6nqqWGsqSvhR3eGTIYVnj