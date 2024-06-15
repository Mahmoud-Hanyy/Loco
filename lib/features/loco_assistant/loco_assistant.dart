import 'dart:io';
import 'dart:typed_data';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loco/core/utils/styles.dart';


class LocoAssistant extends StatefulWidget {
  const LocoAssistant({super.key});
  static const String routeName = "gem";

  @override
  State<LocoAssistant> createState() => _LocoAssistant();
}

class _LocoAssistant extends State<LocoAssistant> {
  final Gemini gemini = Gemini.instance;
  ChatUser currentUser = ChatUser(
    id: '0',
    firstName: 'user',
  );
  ChatUser locoUser = ChatUser(
    id: '1',
    firstName: 'Loco Assistant ',
  );
  List<ChatMessage> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.smart_toy_outlined,color: Theme.of(context).colorScheme.primary,),
            const SizedBox(width: 20,),
            Text("Loco Assistant",
                style: Styles.textStyle30.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold
                )
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return DashChat(
      inputOptions: InputOptions(
        sendButtonBuilder: (send) {
          return IconButton(
            icon: Icon(Icons.send_rounded,color: Theme.of(context).colorScheme.primary,),
            onPressed: send,
          );

        },
        trailing: [
          IconButton(
            icon: Icon(Icons.image_rounded,color: Theme.of(context).colorScheme.primary,),
            onPressed: () => _sendMediaMessage(),
          )
        ],
      ),
      currentUser: currentUser,
      onSend: _sendMessage,
      messages: messages,
      messageOptions: MessageOptions(
        containerColor: Theme.of(context).colorScheme.primary,
        currentUserContainerColor: Theme.of(context).colorScheme.primary,
        currentUserTextColor: Theme.of(context).colorScheme.surface,
        textColor: Theme.of(context).colorScheme.surface,

      ),
    );
  }

  void _sendMessage(ChatMessage chatMessage){
    setState(() {
      messages= [chatMessage,...messages];
    });
    try{
      String question = chatMessage.text;
      List<Uint8List>? images ;
      if(chatMessage.medias?.isNotEmpty ?? false){
        images= [File(chatMessage.medias!.first.url).readAsBytesSync()];
      }
      gemini.streamGenerateContent(question,images: images).listen((event) {
        ChatMessage? lastMessage = messages.firstOrNull ;
        if(lastMessage !=null && lastMessage.user == locoUser){
          lastMessage = messages.removeAt(0);
          String response = event.content?.parts?.fold("", (previous, current) => "$previous ${current.text}") ?? "";
          lastMessage.text += response;
          setState(() {
            messages = [lastMessage!,...messages];
          });
        }else{
          String response = event.content?.parts?.fold("", (previous, current) => "$previous ${current.text}") ?? "";
          ChatMessage message = ChatMessage(
            text: response,
            user: locoUser,
            createdAt: DateTime.now(),
          );
          setState(() {
            messages = [message,...messages];
          });
        }
      });
    }catch(e){
      print(e);
    }
  }

  void _sendMediaMessage()async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    if(image !=null){
      ChatMessage message = ChatMessage(
        text: "Can you rate this outfit for me ?",
        user: currentUser,
        createdAt: DateTime.now(),
        medias: [
          ChatMedia(url: image.path, fileName: '', type: MediaType.image)
        ],
      );
      _sendMessage(message);
    }
  }
}
