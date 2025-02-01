import 'package:flutter/material.dart';

class LikeProvide extends ChangeNotifier {
  List<int> listlike = []; // Danh sách chứa ID bài viết đã thích

  void onClickLike(int id) {
    if (listlike.contains(id)) {
      listlike.remove(id); // Nếu đã thích -> bỏ thích
    } else {
      listlike.add(id); // Nếu chưa thích -> thêm vào danh sách
    }
    notifyListeners(); // Cập nhật UI
  }
}
