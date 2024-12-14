import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:energy_conserver_mobile/app-util.dart';
import 'package:energy_conserver_mobile/components/MyAppBar.dart';
import 'package:energy_conserver_mobile/demo/data.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';



class MyChatDetail extends StatefulWidget {
  final MyChatClass chat;
  const MyChatDetail({super.key , required this.chat});
  @override
  State<MyChatDetail> createState() => _MyChatDetailState();
}

class _MyChatDetailState extends State<MyChatDetail> {

final ScrollController _scrollController = ScrollController();
  

  String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

  final _user = const types.User(id: '1');
  
  final List<types.TextMessage> _messages = generateRandomMessages();

  types.TextMessage createTextMessage ( types.User user , types.PartialText message){
    return  types.TextMessage(
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    ); 
  }

   void _handleSendPressed(types.PartialText message) async {
    
   }
  final TextEditingController _messageController = TextEditingController();
  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _sendMessage() async {
    if (_messageController.text.isNotEmpty) {
      final userMessage = createTextMessage( types.User(id: '1') , types.PartialText(text: _messageController.text));
    final reply = createTextMessage( types.User(id: '2') , types.PartialText(text: "Dei, Summa irraaahh "));
   setState( () {
    _messages.add( userMessage);
  });
  Future.delayed(Duration(milliseconds: 100), () {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      });
  await Future.delayed(Duration(seconds: 1));

  setState( () {
    _messages.add(reply);
  } );
  Future.delayed(Duration(milliseconds: 100), () {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      });
      _messageController.clear(); // Clear the text field
    }
  }

  
  


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: MyAppBar(title: widget.chat.name), // Custom AppBar
      ),
      backgroundColor: const Color(AppData.bgColor),
      body: Column(
        children: [
          Expanded(

            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
         
                bool isSender = message.author.id == '1'; // Assuming 'me' is the current user

                return Align(
                  alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isSender ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        message.text,
                        style: TextStyle(
                          color: isSender ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Input field and send button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}