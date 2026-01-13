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
        final aiText
      }
    }
  }

  // penamabhancontoller nessage`
}
