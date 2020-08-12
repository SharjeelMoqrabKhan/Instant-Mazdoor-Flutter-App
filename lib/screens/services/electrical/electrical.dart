import 'package:flutter/material.dart';
import 'package:easehome/screens/services/electrical/detailScreen.dart';

const electricainData = [
  {
    'electricainName': 'Junaid Baloch',
    'shopName': 'Mama Electric Shop',
    'rating': '4.8',
    'rateAmount': '56',
    'imgUrl': 'assets/images/stylist1.png',
    'bgColor': Color(0xffF4511E),
    'desc':
        "Juniad Balcoh is layrai bassed electricain working in the industry for almost 10 years having the enormous experince and amazing feed back from the customer, here are the list of services provide by Junaid Baloch .",
    'services':
        "✓ Electrical Inspection  \n\n ✓ Electrical Contractor  \n\n ✓ House Electrician  \n\n ✓ Electrical Wiring Repair \n\n  ✓ Commercial and Institutional Electricity ",
    'call': '03211234567',
  },
  {
    'electricainName': 'Nadeem Ahmed',
    'shopName': 'Bismillah Electric Limited',
    'rating': '4.7',
    'rateAmount': '80',
    'imgUrl': 'assets/images/stylist2.png',
    'bgColor': Color(0xffF4511E),
    'desc':
        "Nadeem Ahmed is layrai bassed electricain working in the industry for almost 5 years having the enormous experince and amazing feed back from the customer, here are the list of services provide by Junaid Baloch .",
    'services':
        "✓ Electrical Inspection  \n\n ✓ Electrical Contractor  \n\n ✓ House Electrician  \n\n ✓ Electrical Wiring Repair \n\n  ✓ Commercial and Institutional Electricity ",
    'call': '03211234567',
  },
  {
    'electricainName': 'Imdad Ali',
    'shopName': 'Sparker Light',
    'rating': '4.7',
    'rateAmount': '70',
    'imgUrl': 'assets/images/stylist3.png',
    'bgColor': Color(0xffF4511E),
    'desc':
        "Imdad Ali is layrai bassed electricain working in the industry for almost 4 years having the enormous experince and amazing feed back from the customer, here are the list of services provide by Junaid Baloch .",
    'services':
        "✓ Electrical Inspection  \n\n ✓ Electrical Contractor  \n\n ✓ House Electrician  \n\n ✓ Electrical Wiring Repair \n\n  ✓ Commercial and Institutional Electricity ",
    'call': '03211234567',
  },
];

class Electrician extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[900],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Electricians',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          StylistCard(electricainData[0]),
                          StylistCard(electricainData[1]),
                          StylistCard(electricainData[2]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StylistCard extends StatelessWidget {
  final electrician;
  StylistCard(this.electrician);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4 - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: electrician['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: -40,
            child: Image.asset(
              electrician['imgUrl'],
              width: MediaQuery.of(context).size.width * 0.45,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    electrician['electricainName'],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    electrician['shopName'],
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Color(0xff36454f),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        electrician['rating'],
                        style: TextStyle(
                          color: Color(0xff36454f),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(electrician)));
                    },
                    color: Color(0xff36454f),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'View Profile',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
