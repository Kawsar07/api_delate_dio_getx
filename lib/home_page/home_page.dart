import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import 'home_contoroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Get.put(HomeController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Api Post'),
        ),
        body: _controller.obx(
          (state) {
            return Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextField(
                        autofocus: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          _controller.addDataDoc["userId"] = value;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User Id',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        autofocus: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          _controller.addDataDoc["title"] = value;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'title',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        autofocus: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          _controller.addDataDoc["body"] = value;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'body',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),

                      MaterialButton(
                        color: Colors.black,
                        child: const Text(
                          'Post',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          _controller.getIn();
                          print(_controller.addDataDoc);
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '${_controller.addDataDoc['userId']}',
                      ),
                      Text(
                        '${_controller.addDataDoc['title']}',
                      ),
                      Text(
                        '${_controller.addDataDoc['body']}',
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }
}
