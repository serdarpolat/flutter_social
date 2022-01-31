class StoryItemModel {
  final int id;
  final String story;
  final String user;

  StoryItemModel(this.id, this.story, this.user);
}

List<StoryItemModel> stories = [
  StoryItemModel(
      0,
      "https://images.unsplash.com/photo-1643616975156-e40f7126b5ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
      "https://randomuser.me/api/portraits/women/47.jpg"),
  StoryItemModel(
      1,
      "https://images.unsplash.com/photo-1643607656651-121c76aa6ed5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "https://randomuser.me/api/portraits/women/31.jpg"),
  StoryItemModel(
      2,
      "https://images.unsplash.com/photo-1643564498453-ae8b44866d3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "https://randomuser.me/api/portraits/men/41.jpg"),
  StoryItemModel(
      3,
      "https://images.unsplash.com/photo-1643627930754-684004d489f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "https://randomuser.me/api/portraits/women/36.jpg"),
  StoryItemModel(
      4,
      "https://images.unsplash.com/photo-1643577999708-ec630df73a7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "https://randomuser.me/api/portraits/men/15.jpg"),
];
