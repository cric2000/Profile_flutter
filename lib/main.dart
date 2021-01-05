import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_myprofile/widgets/card.dart';
import 'package:url_launcher/url_launcher.dart' as launcher ;



const phone = '9592886588';
const email = 'anmollamba30@gmail.com';
const url = 'https://github.com/cric2000';
const location = 'Punjab,India';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/anmol4.jpeg'),
            ),
            Text(
              'Anmol Lamba',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'merienda',
              ),
            ),
            Text(
              'B.E CSE Student',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: 'Cursive',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 200.0,
              child: Divider(
                color: Colors.brown[900],
                height: 10.0,
              ),
            ),
            Infocard(
             text: phone,
             icon : Icons.phone,
              onPressed : () async {
               final phoneCall ='tel:$phone';
                if (await launcher.canLaunch(phoneCall)) {
                  await launcher.launch(phoneCall);
                } else {
                  print('error');
                }
              },
           ),
            Infocard(
              text: email,
              icon : Icons.email,
              onPressed : () async {
                final emailAddress = 'mailto:$email';
                if (await launcher.canLaunch(emailAddress)) {
                  await launcher.launch(emailAddress);
                } else {
                  print('error');
                }
              },
            ),
            Infocard(
              text: url,
              icon : Icons.web,
              onPressed : () async {
                if (await launcher.canLaunch(url)) {
                await launcher.launch(url);
                } else {
                  print('error');
                }
              },
            ),
            Infocard(
              text: location,
              icon : Icons.location_city,
              onPressed : () {
                print('location');
              },
            ),
          ],
        ),
      ),
    );
  }
}




