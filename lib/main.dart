import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iot_app/screens/ContactScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFF353B74),
      drawer: Drawer(
        backgroundColor: Color(0xFF5D6290),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(0)),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(),
              child: Container(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Group 42.png',
                        height: 100,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        padding: EdgeInsets.fromLTRB(25, 0, 0, 25),
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ), // You can replace this with your SVG icon
                        onPressed: () {
                          Navigator.of(context).pop(); // To close the drawer
                        },
                      ), // Widget you want to position
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Acceuil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Services',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ContactPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(10, 60, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // First Box
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF5D6290),
                    borderRadius: BorderRadius.circular(17)),
                height: 200,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/menu.svg',
                              height: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 50),
                                  child: Text(
                                    'Club IOT ISIMG',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 4,
                                    ),
                                    "is committed to providing resources and content to the Web/Mobile and lot domain \n development community. We believe that the Internet is a place where anyone should learn \nabout the basics of anything. We aim to provide regular content, from think Pieces to blogs, \ntutorials and more. Of course, these will cover all the bases of web development, from \ndatabases to networking, servers to development operations and everything in between. It\n doesn't matter if you are a front-end, full-stack or back-end, a student, a fully qualified software \nengineer or you have never touched a code editor in your life.Club lot Isimg hopes to provide\n you with something you need to successfully complete your next project of sums of big\n technologies like Framework SpringBoot and Node js..."),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/Group 42.png',
                            height: 100,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Text(
                                'Portfolio',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 9),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => ContactPage()));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEBAC06),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Text(
                                  "Let's Talk!",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              // About Us
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About US',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Image.asset(
                    'assets/Group 43.png',
                    height: 100,
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      textAlign: TextAlign.center,
                      'Welcome to the IoT Club, where innovation meets technology! Our club is dedicated to exploring the vast realm of Internet of Things (IOT), with a particular focus on web and mobile development alongside IoT integration. Whether youlre a seasoned developer or just starting out, our community offers a dynamic platform to collaborate, learn, and create. Dive into the world of interconnected devices, harnessing the power of data and connectivity to build cutting-edge applications that redefine the way we interact with technology. Join us on this exciting journey as we push the boundaries of whatls possible in the digital landscape.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 8.5,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50.0),
              Text(
                'Our Main Services',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 60.0),
              // Web Dev
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Group 44.png',
                    height: 100,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Web develop',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      textAlign: TextAlign.center,
                      'We have the necessary tools to guide\n you towards an optimal solution, whether\n it is a new creation, a redesign or\n technical assistance for a website. ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 60.0),
              // IOT
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/iot 1.png',
                    height: 100,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'IOT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      textAlign: TextAlign.center,
                      "We have the necessary tools to \n guide you towards an optimal \n solution, and we master the different \n development methods (M2M, IOT \n PYTHON for Rasbery).",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 60.0),
              // Mobile dev
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/developpement-mobile 1.png',
                    height: 100,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Mobile develop',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      textAlign: TextAlign.center,
                      "We master the different mobile \n development methods: Native \n (Objective-C for iOS, Java on Android) \n and Hybrid (Mostiy HTML5).",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              Text(
                'Trainings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50.0),
              fun1(
                'assets/Vector.png',
                'Angular',
                MediaQuery.of(context).size.width * 0.7,
              ),
              SizedBox(height: 50),
              fun1(
                'assets/microchip.png',
                'AI',
                MediaQuery.of(context).size.width * 0.7,
              ),
              SizedBox(height: 50),
              fun1(
                'assets/icons8-spring-boot 3.png',
                'SpringBoot',
                MediaQuery.of(context).size.width * 0.7,
              ),
              SizedBox(height: 50.0),
              Text(
                'Team',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              SizedBox(height: 20.0),
              // L'equipe
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        fun2(
                          'assets/hizmet1 1.png',
                          'RABIE \nHOUSSAINI',
                          'Chef',
                          'Développement Mobile',
                        ),
                        fun2(
                          'assets/hizmet1 1 (1).png',
                          'NACER \nCHAMSEDDINE',
                          'Chef',
                          'Développement Web',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        fun2(
                          'assets/hizmet1 1 (3).png',
                          'HADIL \nHAMMAMI',
                          'Assistante',
                          'Développement Web',
                        ),
                        fun2(
                          'assets/hizmet1 1 (4).png',
                          'KHOULOUD \nGHABI',
                          'Assistante',
                          'Développement Mobile',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        fun2(
                          'assets/hizmet1 1 (2).png',
                          'KHALIFA \nCHERIF',
                          'Chef',
                          'IOT',
                        ),
                        fun2(
                          'assets/hizmet1 1 (5).png',
                          'RANIA \nGARBAYA',
                          'Assistante',
                          'Resource Humaine',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

// Fonction pour retourner les trainings
Widget fun1(String path, String text, double width) {
  return Container(
    width: width,
    height: 270,
    decoration: BoxDecoration(
      color: Color(0xFF5D6290),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          path,
          height: 110,
        ),
        SizedBox(height: 20),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

//Fonction retourner un container dans la partie des membres d'equipes
Widget fun2(String path, String name, String position, String field) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFF5D6290),
      borderRadius: BorderRadius.circular(10),
    ),
    width: 150,
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
                children: [
                  Image.asset(
                    path,
                    width: (140),
                  ),
                  SizedBox(height: 10),
                  Text(
                    position,
                    style: TextStyle(color: Colors.white, fontSize: 9),
                  ),
                  SizedBox(height: 3),
                  Text(
                    field,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 35,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            width: 80,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xFFEBAC06),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
