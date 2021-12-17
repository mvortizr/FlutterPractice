import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.star_border),
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
                Container(
                  width: double.infinity,
                  child: Image.network(
                    "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Priyanka Tyagi",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildCallButton(),
                      buildTextButton(),

                      //SOLUTION: Added Video, Email, Directions & Pay action items

                      //Enabled "video" action item
                      buildVideoCallButton(),

                      //Enabled "Email" action item
                      buildEmailButton(),

                      //Enabled "Directions" action item
                      buildDirectionsButton(),

                      //Enabled "Pay" action item
                      buildPayButton(),

                    ],
                  ),
                ),
                //SOLUTION: Divider widget with grey color
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//Adding "Call" action item
  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Call"),
      ],
    );
  }

//Adding "Text" action item
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Text"),
      ],
    );
  }

//SOLUTION: Adding "Video" action item
  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.video_call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Video"),
      ],
    );
  }

//SOLUTION: Adding "Email" action item
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

//SOLUTION: Adding "Directions" action item
  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.directions,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Directions"),
      ],
    );
  }

//SOLUTION: Adding "Pay" action item
  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.attach_money,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        Text("Pay"),
      ],
    );
  }
}
