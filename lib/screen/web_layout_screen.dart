import 'package:flutter/material.dart';
import 'package:whatsapp_ui/features/chat/widgets/chat_list.dart';
import '../widgets/web_chat_appbar.dart';
import '../widgets/web_search_bar.dart';
import '../colors.dart';
import '../features/chat/widgets/contact_list.dart';
import '../widgets/web_profile_bar.dart';

class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          // Web Screen
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const WebChatAppBar(),
                const Expanded(
                  child: ChatList(
                    recieverUserId: '',
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      ),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 15,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(
                                left: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
