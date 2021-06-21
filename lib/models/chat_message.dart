import 'package:chat_app/enum/chat_message_status.dart';
import 'package:chat_app/enum/chat_message_type.dart';

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final ChatMessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}
