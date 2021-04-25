class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({
    this.name,
    this.message,
    this.time,
    this.avatarUrl,
  });
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Samuel",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      avatarUrl:
          "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/male/45.png"),
  new ChatModel(
    name: "Gabriel",
    message: "Hello World",
    time: "20:30",
    avatarUrl: "https://www.w3schools.com/w3images/avatar2.png",
  ),
  new ChatModel(
    name: "Sheila",
    message: "Teste",
    time: "8:30",
    avatarUrl:
        "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/female/68.png",
  ),
  new ChatModel(
    name: "Danilo",
    message: "Ah, Sla!",
    time: "12:30",
    avatarUrl:
        "https://storage.jewheart.com/content/users/avatars/924/avatar_924_500.jpg?1558621946",
  ),
];
