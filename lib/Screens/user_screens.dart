import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rando_user/Provider/user_provider.dart';
import 'package:rando_user/Widget/user_widget.dart';


  class Users extends StatelessWidget {
    const Users({super.key});

    @override
    Widget build(BuildContext context) {
    Userprovider providerobj = Userprovider.getObject(context);

      return Scaffold(
        appBar: AppBar(
          title: Text("Random User",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),

        body: Consumer<Userprovider>(
          builder: (context, userProvider, child) {
         final result = userProvider.userdata?.data;

            if (result == null) {
              providerobj.Fetchuserprovider();
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  final user = result[index];

                  return Wid(
                    name: user["name"],
                    email: user["email"],
                    pic: user["pic"],
                  );
                },

              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            providerobj.Fetchuserprovider();
          },
          child: const Icon(Icons.refresh),
        ),
      );
    }
  }


