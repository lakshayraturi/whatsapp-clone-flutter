import 'package:flutter/material.dart';
import '../colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.30,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2018/04/26/12/14/travel-3351825_960_720.jpg',
            ),
            radius: 20,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.comment, color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
