import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String tittle = "", int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              tittle,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff1D1E3C),
                  fontWeight: (index == _selectedIndex)
                      ? FontWeight.w500
                      : FontWeight.w100),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (index == _selectedIndex)
                      ? Colors.black
                      : Colors.transparent),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          //NOTE Background
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 100,
            ),
            child: Column(
              children: [
                //NOTE Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        navItem(tittle: 'Guides', index: 0),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(tittle: 'Team', index: 1),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(tittle: 'Pricing', index: 2),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(tittle: 'Stories', index: 3),
                      ],
                    ),
                    Image.asset(
                      'btn.png',
                      height: 53,
                      width: 163,
                    ),
                  ],
                ),

                //NOTE CONTENT
                Flexible(
                  child: Image.asset(
                    'Watermelon.png',
                    height: 550,
                  ),
                ),

                //NOTE footer
                SizedBox(height: 84),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('more.png'),
                    SizedBox(width: 13),
                    Text(
                      'Scroll To View More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
