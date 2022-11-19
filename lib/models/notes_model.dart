class NoteModel {
  int? id;
  String? title;
  String? content;
  String? dateOfAdd;

  NoteModel({this.id, this.title, this.content, this.dateOfAdd});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'dateOfAdd': dateOfAdd,
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      id: map['id']?.toInt(),
      title: map['title'],
      content: map['content'],
      dateOfAdd: map['dateOfAdd'],
    );
  }
}
