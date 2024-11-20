class PostModal{
  late int id;
  late String name,email,body;
  PostModal({required this.name,required this.id,required this.body,required this.email});

  factory PostModal.fromJson(Map m1)
  {
    return PostModal(name: m1['name'], id: m1['id'], body: m1['body'], email: m1['email']);
  }
}