import 'dart:convert';

import 'package:clearday/page/ai_model/gemini_ai.dart';
import 'package:flutter/material.dart';

class AskAiPage extends StatefulWidget {
  const AskAiPage({super.key});

  @override
  State<AskAiPage> createState() => _AskAiPageState();
}

class _AskAiPageState extends State<AskAiPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final list<ChatMessage> _messages = [];
  bool _isLoading = false;

  Future<void> _sendMessage() async {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add(ChatMessage(text: text, isUser: true));
      _isLoading = true;
    });
    _messageController.clear()
    _scrollToBottom();

    if (!GeminiAiConfig.isConfigured) {
      // ADD FAKE RESPONESE if not configured
      await Future.delayed(const Duration(seconds: 3));
      setState(() {
        _messages.add(
          const ChatMessage(
            text: "we are sory we currently having an issues with ouw ai models,",
            isUser: false,
            ),
        );
      _isLoading = false;
      });
      _scrollToBottom();
      return;
    }


    // reposne ke models ,, 
    // TO DO mvvm models div  
    try {
      final respone = await http.post(
        Uri.parse(GeminiAiConfig.endPoint),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${GeminiAiConfig.apiKey}',
        },

        // encode untuk bunkus data ke json cui 
        body: json.encode({
          'model': GeminiAiConfig.modelGeneral,
          'messages': [
            {
              'role': 'system',
              'content': 'youre a helpful skincare assistant for youg adults, you give advice about acne , skin health , and routine.keep your answer concise and friedly ',
            },
            ..._messages.map((m) => {
              'role' : m.isUser? 'user' : 'assistant',
              'content' : m.text,
            })
          ],
        }),

      );

      if (respone.statusCode == 200) {
        final data = jsonDecode(utf8.decoder(respone.bodyBytes));
        final aiText = data['choices'][0]['message']['content'];
        
        setState(() {
            _messages.add(Chatmessage(text: aiText, isUser: false));
            _isLoading = false;
        });
        
      } else {
        setState(() {
          _messages.add(Chatmessage(text: 'Failed to get response', isUser: false));
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _messages.add(Chatmessage(text: e.toString(), isUser: false));
        _isLoading = false;
      });
    }
    _scrollToBottom();



  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback(_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          );
      } 
    }
  };

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).colorScheme.surface,
    appBar: AppBar(
      title: const Text('skin healt assistant'),
      surfaceTintColor: Colors.transparent,
    ),
    body: Column(
      children: [
        
      ],
    ),
  );
}

}
