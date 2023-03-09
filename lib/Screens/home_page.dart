import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:networkwithdio/Network/dio_client.dart';

import '../Network/dio_client.dart';
import '../Network/dio_client.dart';
import '../Network/dio_client.dart';
import '../models/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _idController = TextEditingController();
  int? userId;
     late DioClient dioClient;

     @override
  void initState() {
    super.initState();
    dioClient = DioClient(); // Initialize the DioClient instance variable here
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        FutureBuilder<User?>(
                    future: dioClient.getUser(id: 12),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {

                        print(snapshot.data!.title);
                     
                      
                      }
                       return Text("");
                    },
        ),
      ],
    );
  }
}