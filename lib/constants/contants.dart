import 'package:chat_app/enum/chat_message_status.dart';
import 'package:chat_app/enum/chat_message_type.dart';
import 'package:chat_app/models/chat.dart';
import 'package:chat_app/models/chat_message.dart';

class Constants {
  static const String defaultImage =
      "https://www.pikpng.com/pngl/m/16-168770_user-iconset-no-profile-picture-icon-circle-clipart.png";
  static List chatsData = [
    Chat(
      name: "Jenny Wilson",
      lastMessage: "Hope you are doing well...",
      image: defaultImage,
      time: "3m ago",
      isActive: false,
    ),
    Chat(
      name: "Esther Howard",
      lastMessage: "Hello Abdullah! I am...",
      image: defaultImage,
      time: "8m ago",
      isActive: true,
    ),
    Chat(
      name: "Ralph Edwards",
      lastMessage: "Do you have update...",
      image: defaultImage,
      time: "5d ago",
      isActive: false,
    ),
    Chat(
      name: "Jacob Jones",
      lastMessage: "You’re welcome :)",
      image: defaultImage,
      time: "5d ago",
      isActive: true,
    ),
    Chat(
      name: "Albert Flores",
      lastMessage: "Thanks",
      image: defaultImage,
      time: "6d ago",
      isActive: false,
    ),
    Chat(
      name: "Jenny Wilson",
      lastMessage: "Hope you are doing well...",
      image: defaultImage,
      time: "3m ago",
      isActive: false,
    ),
    Chat(
      name: "Esther Howard",
      lastMessage: "Hello Abdullah! I am...",
      image: defaultImage,
      time: "8m ago",
      isActive: true,
    ),
    Chat(
      name: "Ralph Edwards",
      lastMessage: "Do you have update...",
      image: defaultImage,
      time: "5d ago",
      isActive: false,
    ),
  ];
  static List demoChatMessages = [
    ChatMessage(
      text: "Hi Sajol,",
      messageType: ChatMessageType.text,
      messageStatus: ChatMessageStatus.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "Hello, How are you?",
      messageType: ChatMessageType.text,
      messageStatus: ChatMessageStatus.viewed,
      isSender: true,
    ),
    ChatMessage(
      text: "",
      messageType: ChatMessageType.audio,
      messageStatus: ChatMessageStatus.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "",
      messageType: ChatMessageType.video,
      messageStatus: ChatMessageStatus.viewed,
      isSender: true,
    ),
    ChatMessage(
      text: "Error happend",
      messageType: ChatMessageType.text,
      messageStatus: ChatMessageStatus.not_sent,
      isSender: true,
    ),
    ChatMessage(
      text: "This looks great man!!",
      messageType: ChatMessageType.text,
      messageStatus: ChatMessageStatus.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "Glad you like it",
      messageType: ChatMessageType.text,
      messageStatus: ChatMessageStatus.not_view,
      isSender: true,
    ),
  ];
  static final List<String> demoContactsImage =
      List.generate(5, (index) => defaultImage);
}
