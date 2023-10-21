import 'package:flutter/material.dart';
import 'package:imprint_app/screens/touch_id_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/background.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.5), // Ajustez l'opacité ici
          ),
          Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "LOGIN WITH TOUCH ID",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "log in with another login method",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SlideAction(
                  height: 65,
                  borderRadius: 15,
                  elevation: 1,
                  innerColor: Colors.white,
                  outerColor: Colors.lightBlue,
                  text: "L O G I N",
                  onSubmit: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const TouchIdScreen()),
                      ),
                    );
                    return null;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
