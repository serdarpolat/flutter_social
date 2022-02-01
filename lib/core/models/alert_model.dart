import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class AlertModel {
  final int id;
  final AlertType alertType;
  final List<String> connectors;
  final String time;

  AlertModel(this.id, this.alertType, this.connectors, this.time);
}

List<AlertModel> alerts = [
  AlertModel(0, AlertType.LIKE, ["Sofia", "John", "Murray", "Alice", "Tubi"],
      "10m ago"),
  AlertModel(1, AlertType.LIKE,
      ["Rebecca", "Daisy", "Murray", "Alice", "Tubi", "Mickey"], "10m ago"),
  AlertModel(2, AlertType.COMMENT, ["Katrina", "Denver", "Murray"], "10m ago"),
  AlertModel(3, AlertType.BIRTHDAY, ["Savannah Wilson"], "10m ago"),
  AlertModel(4, AlertType.MENTION, ["Ralph Edwards"], "10m ago"),
  AlertModel(5, AlertType.MENTION, ["Leslie Alexander"], "10m ago"),
];

String getIcon(AlertType a, List<String> c) {
  return a == AlertType.LIKE
      ? "Like"
      : a == AlertType.COMMENT
          ? "Comment"
          : a == AlertType.BIRTHDAY
              ? c[0].substring(0, 1)
              : "Attachment";
}

Color getColor(AlertType a) {
  return a == AlertType.LIKE
      ? Clr.blue
      : a == AlertType.COMMENT
          ? Clr.pink
          : a == AlertType.BIRTHDAY
              ? Clr.blue
              : Clr.whiter;
}

String getNames(AlertType a, List<String> connectors) {
  int count = connectors.length;
  String names = "";

  if (a == AlertType.LIKE || a == AlertType.COMMENT) {
    names = count > 2
        ? connectors[0] +
            ", " +
            connectors[1] +
            " and " +
            (count - 2).toString() +
            " others"
        : connectors[0] + ", " + connectors[1];
  } else {
    names = connectors[0];
  }
  return names;
}

String getSubtitle(AlertType a) {
  return a == AlertType.LIKE
      ? "liked your post"
      : a == AlertType.COMMENT
          ? "commented on your post"
          : a == AlertType.BIRTHDAY
              ? "is celebrating birthday today. Drop a wish! 🎉"
              : "mentioned you in a post";
}

enum AlertType { LIKE, COMMENT, BIRTHDAY, MENTION }
