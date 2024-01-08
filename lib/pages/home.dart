// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:glowguide/constants.dart';
import 'package:glowguide/pages/login.dart';
import 'package:glowguide/pages/products.dart';
import 'package:glowguide/pages/signup.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glowguide/pages/categories.dart';
import 'package:glowguide/pages/itemCard.dart';
import 'package:glowguide/pages/details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _current = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 118, 27, 134),
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              colorFilter: ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              colorFilter: ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
            onPressed: () {},
          ),
          SizedBox(width: kDefultPadding / 2)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
            child: Text(
              "Skincare Products",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
              child: GridView.builder(
                //itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefultPadding,
                  crossAxisSpacing: kDefultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: product[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: product[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Scan'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
        ],
        currentIndex: _current,
        selectedItemColor: const Color.fromARGB(255, 118, 27, 134),
        unselectedItemColor: Colors.grey,
        onTap: _changeItem,
      ),
    );
  }
}

void _changeItem(int value) {
  print(value);
  setState(() {
    var _current = value;
  });
}

void setState(Null Function() param0) {}


 
/*
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _current = 0;
    List<Widget> _widgetOption = <Widget>[
      //navigation buttom bar to move to another pages
      Home(), //home page
      Login(), //Search product or routine
      // products(), //scan face or barcode
      Signup(), //profile page
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 10,
          title: Text("Glow Guide"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/back.svg'), 
              onPressed:() {},
               
              ),
              actions: <Widget>[IconButton(icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColor,
              ), 
              onPressed: (){})
              actions: <Widget>[IconButton(icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColor,
              ), 
              onPressed: (){})
              actions: <Widget>[IconButton(icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColor,
              ), 
              onPressed: (){})],
              ),
        ),
        body: Stack(
          children: [
            SizedBox(
              child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, //يجيب النص كامل في النص
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Home page",
                        style: TextStyle(fontSize: 18, fontFamily: "myfont"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image.asset('assets/images/glow_guide_logo.png',
                          width: 222),
                      SizedBox(
                        //عشان اغير مكان البوكس ويصير بعيد عن الصوره اللي فوق
                        height: 35,
                      ),
                      /* ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 88, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "login",
                        style: TextStyle(
                            fontSize: 24, color: Color.fromARGB(255, 14, 0, 0)),
                      ),
                    ),*/
                      /* SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 88, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                            fontSize: 17, color: Color.fromARGB(255, 14, 0, 0)),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("continue as "),
                        GestureDetector(
                          //methode for the text to can press on in and open another window
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            " Guest",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),*/
                    ],
                  )
                  //],
                  ),
            ),
            //),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 170,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 100,
              ),
            ),
            /*Positioned(
              top: 110,
              left: 20,
              right: 20,
              child: Image.asset(
                'assets/images/glow_guide_logo.png',
                width: 100,
              ),
            ),*/
            _widgetOption.elementAt(_current)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt), label: 'Scan'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
          ],
          currentIndex: _current,
          selectedItemColor: const Color.fromARGB(255, 118, 27, 134),
          unselectedItemColor: Colors.grey,
          onTap: _changeItem,
        ),
      ),
    );
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      var _current = value;
    });
  }
}*/
