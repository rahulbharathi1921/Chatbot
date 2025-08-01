import 'package:chatapp/core/chatbotservices.dart';
import 'package:chatapp/core/message.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController controller = TextEditingController();
  final ScrollController scrollController = ScrollController();
  final RuleBasedService botService = RuleBasedService();

  List<Message> msgs = [];

  void sendMsg() {
    String text = controller.text;
    controller.clear();

    if (text.isNotEmpty) {
      setState(() {
        msgs.insert(0, Message(true, text));
        String reply = botService.getResponse(text);
        msgs.insert(0, Message(false, reply));
      });

      scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }

  AppBar buildChatAppBar() {
    return AppBar(
      title: const Text("Rule-Based Bot"),
      backgroundColor: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildChatAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              itemCount: msgs.length,
              reverse: true,
              itemBuilder: (context, index) {
                final message = msgs[index];
                return Align(
                  alignment: message.isSender
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: message.isSender
                          ? Colors.blue.shade100
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      message.msg,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (value) => sendMsg(),
                    textInputAction: TextInputAction.send,
                    decoration: const InputDecoration(
                      hintText: "Type your message...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: sendMsg,
                icon: const Icon(Icons.send, color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
