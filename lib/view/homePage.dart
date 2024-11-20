import 'package:demo2/provider/postProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post Data', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Consumer<PostProvider>(builder: (context, provider, child) =>
            ListView.builder(itemCount: provider.postList.length,itemBuilder: (context, index) =>Card(
              child: ListTile(
                leading: Text(provider.postList[index].id.toString()),
                title:Text('${provider.postList[index].name}\n${provider.postList[index].email} ') ,
                subtitle: Text('${provider.postList[index].email}'),
              ),
            ),),)
    );
  }
}
