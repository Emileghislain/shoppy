import 'package:flutter/material.dart';
import 'package:shoppy/components/Home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/pexels-thirdman-7236839 1.png"),
              fit: BoxFit.cover,
            )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/Untitled-1 1.png",
                    width: 170,
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
              top: size.height * .17,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 120, 171, 0),
                        Color.fromRGBO(0, 120, 171, 1)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log in to your account",
                          style: TextStyle(
                              fontFamily: "Montserrat-ExtraBold",
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "You can fill in the information below to login to your account and get productive. Want to go the fast way? Login through Google or Apple.",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: size.width * .9,
                          child: TextField(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                            decoration: InputDecoration(
                                labelText: "Userame or Email",
                                contentPadding: EdgeInsets.only(bottom: 0),
                                labelStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: size.width * .9,
                          child: TextField(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                            decoration: InputDecoration(
                                labelText: "Password",
                                contentPadding: EdgeInsets.only(bottom: 0),
                                labelStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: size.width * .6,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.white),
                              child: Text(
                                "Log me in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat-ExtraBold",
                                    fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: size.width * .6,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.apple,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Login via Apple",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Montserrat",
                                        fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: size.width * .6,
                              height: 40,
                              padding: EdgeInsets.only(bottom: 7),
                              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.black),
                              child: Text(
                                "Create my shop",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat-Bold",
                                    fontSize: 14),
                                textAlign: TextAlign.center,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
