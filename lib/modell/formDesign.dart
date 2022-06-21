/// id : 101

class FormDesign {
  FormDesign({
      int? id,}){
    _id = id;
}

  FormDesign.fromJson(dynamic json) {
    _id = json['id'];
  }
  int? _id;
FormDesign copyWith({  int? id,
}) => FormDesign(  id: id ?? _id,
);
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }

}