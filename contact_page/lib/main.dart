import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          //Adding background color to AppBar
          backgroundColor: Colors.white,

          //Adding back arrow for leading property.
          //Back arrow appears at the top-left of AppBar
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[

            //Adding Star icon for favorting the contact.
            //This IconButton responds to user's tap,
            //and prints the message.
            IconButton(
              icon: const Icon(Icons.star_border),
              color: Colors.black,
              onPressed: () {
                print("Contact is starred");
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                //Container for adding Profile picture
                Container(
                  //Container is stretched horizontaly
                  width: double.infinity,
                  //Image is fetched from url
                  child: Image.network(
                    "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
