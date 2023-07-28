import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  // var userName;
  // DashBoard(String userName) {
  //   this.userName = userName;
  // }

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Color(0xff6E6E6E),
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 35,
              width: double.infinity,
              child: Text(
                'Namaste, Yubraj',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Welcome to Nepal Police App. Your comprehensive tool for modern policing.',
              style: TextStyle(color: Color(0xff6E6E6E), fontSize: 16),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: 95,
                        width: 100,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/1.png',
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Report COVID 19',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 95,
                        width: 100,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/2.png',
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Report Incident',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 94,
                        width: 100,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/3.png',
                              height: 45,
                              width: 45,
                            ),
                            const SizedBox(
                              height: 34,
                            ),
                            const Text(
                              'Emergency Num.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: 90,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/4.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              ' News ',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 100,
                        width: 100,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/5.png',
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'Notice',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 100,
                        width: 100,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/6.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 34,
                            ),
                            const Text(
                              'FM',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/7.png',
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              ' Stations Nearby ',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 100,
                        width: 100,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/8.png',
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'e-Complaint',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                    SizedBox(
                        height: 100,
                        width: 100,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/9.png',
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 34,
                            ),
                            const Text(
                              'Clearance Report',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )),
                  ],
                ),
                // SizedBox(height: 60,),
                // TextButton(
                //
                //     onPressed: () {
                //       {
                //         Navigator.push(context,
                //             MaterialPageRoute(builder: (context) {
                //               return Services();
                //             }));
                //
                //         // print(emailController);
                //         // print(passwordController);
                //       }
                //     },
                //
                //     child: Text("Check out Services")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
