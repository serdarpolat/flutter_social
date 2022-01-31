class PostModel {
  final int id;
  final String usrImg;
  final String userName;
  final String publishTime;
  final String? title;
  final List<String>? images;

  PostModel({
    required this.id,
    required this.usrImg,
    required this.userName,
    required this.publishTime,
    this.title,
    this.images,
  });
}

List<PostModel> posts = [
  PostModel(
    id: 0,
    usrImg: "https://randomuser.me/api/portraits/men/0.jpg",
    userName: "Jacob Washington",
    publishTime: "20m ago",
    title:
        "\"If you think you are too small to make a difference, try sleeping with a mosquito.\"\n~ Dalai Lama",
  ),
  PostModel(
    id: 1,
    usrImg: "https://randomuser.me/api/portraits/women/7.jpg",
    userName: "Kat Williams",
    publishTime: "1h ago",
    images: [
      "https://images.unsplash.com/photo-1595344418312-1128681de2bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80",
      "https://images.unsplash.com/photo-1605550940877-91c5a0c9b948?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      "https://images.unsplash.com/photo-1558024160-4bcccd62f54c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
    ],
  ),
  PostModel(
    id: 2,
    usrImg: "https://randomuser.me/api/portraits/men/23.jpg",
    userName: "Tony Monta",
    publishTime: "1h ago",
    title: "Writing code is not so bad!",
  ),
  PostModel(
    id: 3,
    usrImg: "https://randomuser.me/api/portraits/women/40.jpg",
    userName: "Jessica Thompson",
    publishTime: "2h ago",
    images: [
      "https://images.unsplash.com/photo-1627042493632-fa4d12ff3b01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80"
    ],
  ),
  PostModel(
    id: 2,
    usrImg: "https://randomuser.me/api/portraits/women/67.jpg",
    userName: "Dustin grant",
    publishTime: "3h ago",
    images: [
      "https://images.unsplash.com/photo-1499781350541-7783f6c6a0c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1545&q=80"
    ],
  ),
];
