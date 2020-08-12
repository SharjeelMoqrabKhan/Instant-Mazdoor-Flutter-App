import 'package:flutter/material.dart';
import 'package:easehome/screens/services/genretor/detailScreen.dart';

const RACData = [
  {
    'technicianName': 'Zaheer Ali',
    'shopName': 'Madina Genretor Shop',
    'rating': '4.8',
    'rateAmount': '56',
    'imgUrl': 'assets/images/stylist1.png',
    'bgColor': Color(0xffFFC107),
    'desc':
        "Zaheer Ali is layrai bassed generetor technician working in the industry for almost 10 years having the enormous experince and amazing feed back from the customer, here are the list of services provide by Junaid Baloch .",
    'services':
        "✓ Generetor Inspection  \n\n ✓ Generetor Contractor  \n\n ✓ House Generetors  \n\n ✓ Generetor Repair \n\n  ✓ Commercial and Institutional Generetors ",
    'call': '03211234567',
  },
  {
    'technicianName': 'Saif Bangash',
    'shopName': 'Bismillah  Genretor Shop',
    'rating': '4.7',
    'rateAmount': '80',
    'imgUrl': 'assets/images/stylist2.png',
    'bgColor': Color(0xffFFC107),
    'desc':
        "Nadeem Ahmed is layrai bassed generetor technician working in the industry for almost 5 years having the enormous experince and amazing feed back from the customer, here are the list of services provide by Junaid Baloch .",
    'services':
        "✓ Generetor Inspection  \n\n ✓ Generetor Contractor  \n\n ✓ House Generetors  \n\n ✓ Generetor Repair \n\n  ✓ Commercial and Institutional Generetors ",
    'call': '03211234567',
  },
  {
    'technicianName': 'Imdad Ali',
    'shopName': 'Sparker Light Genrators',
    'rating': '4.7',
    'rateAmount': '70',
    'imgUrl': 'assets/images/stylist3.png',
    'bgColor': Color(0xffFFC107),
    'desc':
        "Imdad Ali is layrai bassed generetor technician working in the industry for almost 4 years having the enormous experince and amazing feed back from the customer, here are the list of services provide by Junaid Baloch .",
    'services':
        "✓ Generetor Inspection  \n\n ✓ Generetor Contractor  \n\n ✓ House Generetors  \n\n ✓ Generetor Repair \n\n  ✓ Commercial and Institutional Generetors ",
    'call': '03211234567',
  },
];

class RAC extends StatelessWidget {
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
                            'RAC Technicians',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          StylistCard(RACData[0]),
                          StylistCard(RACData[1]),
                          StylistCard(RACData[2]),
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
  final RAC;
  StylistCard(this.RAC);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4 - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: RAC['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: -40,
            child: Image.asset(
              RAC['imgUrl'],
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
                    RAC['technicianName'],
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    RAC['shopName'],
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
                        RAC['rating'],
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
                              builder: (context) => DetailScreen(RAC)));
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
