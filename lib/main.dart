import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(30, 76, 175, 1.0),
                Color.fromRGBO(166, 204, 242, 1.0),
              ],
            )),
            child: const MyStatefulWidget()),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 60, top: 40),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 40),
                )),
            Container(
              child: Text(
                "Username",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              padding: EdgeInsets.only(left: 15),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'User Name',
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            Container(
              child: Text(
                "Password",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              padding: EdgeInsets.only(left: 15),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Password',
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                  child: Text("Login", style: TextStyle(fontSize: 16)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(0, 14, 209, 1.0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  onPressed: () {
                    //signup screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdRoute()),
                    );
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(top: 140),
              child: Row(
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(0, 29, 130, 1.0),
                      ),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(30, 76, 175, 1.0),
              Color.fromRGBO(166, 204, 242, 1.0),
            ],
          )),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 20, top: 10),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 40),
                  )),
              Container(
                child: Text(
                  "Nama Lengkap",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'tulis nama lengkap kamu',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'tulis email aktif kamu',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: Text(
                  "Nomor HP",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'tulis nomor hp aktif kamu',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Password',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: ElevatedButton(
                    child: Text("Sign Up", style: TextStyle(fontSize: 16)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(0, 14, 209, 1.0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    onPressed: () => null),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    const Text('Already have account?'),
                    TextButton(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 29, 130, 1.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          )),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: NavBar(),
    ));
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    EmailPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],

          //Selected menu style.
          backgroundColor: Color.fromRGBO(166, 204, 242, 1.0),
          selectedLabelStyle: const TextStyle(fontSize: 14),
          selectedItemColor: Color.fromRGBO(27, 66, 206, 1.0),
          unselectedItemColor: Color.fromRGBO(0, 0, 0, 1.0),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> listbuku = [];

  _HomePageState() {
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book1.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book2.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book1.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book2.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book1.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book2.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book1.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book2.png",
      )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Beranda',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 40),
              )),
          Container(
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 300,
                  padding: EdgeInsets.all(3),
                  child: Image(
                    image: AssetImage("assets/promo.png"),
                  ),
                ),
                Container(
                  width: 600,
                  height: 300,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: listbuku,
                  ),
                ),
                Container(
                  width: 600,
                  height: 300,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: listbuku,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            'Search',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 40),
          )),
    ));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          transform: Matrix4.translationValues(0.0, -180.0, 0.0),
          child: Flexible(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    //Name section.
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 100, 10, 60),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 40),
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0),
                        child: Text(
                          "Nama",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFF808080)),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          height: 35,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'nama',
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFF808080)),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          height: 35,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'email',
                            ),
                          )),
                    ),

                    //ID Card section.
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0),
                        child: Text(
                          "No HP",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFF808080)),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          height: 35,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'nomer HP',
                            ),
                          )),
                    ),
                    Row(
                      children: <Widget>[
                        const Text('Have another account?'),
                        TextButton(
                          child: const Text(
                            'Sign Out',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 29, 130, 1.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    //End of text entry section.
                  ])))),
    ));
  }
}
