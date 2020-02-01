import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.indigo[100],
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15,),
              Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 30,),
              Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                clipBehavior: Clip.hardEdge,
                elevation: 15,
                child: Image.asset(
                  'assets/images/profile.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 25,),
              Text(
                'Mahmoud Eslami',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 90,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                    child: Text(
                  '@mamouti',
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(35))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      OptionItem(
                        image: 'assets/images/shipping_amount.png',
                        text: 'Shipping Amount',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OptionItem(
                        image: 'assets/images/business_setting.png',
                        text: 'Payment Setting',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OptionItem(
                        image: 'assets/images/setting_profile.png',
                        text: 'Setting Profile',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OptionItem(
                        image: 'assets/images/logout.png',
                        text: 'Log Out',
                      ),
                      SizedBox(height: 20,)
                    ],
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

class OptionItem extends StatelessWidget {
  final String image;
  final String text;

  const OptionItem({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          image,
          width: 50,
        ),
        SizedBox(width: 30,),
        Expanded(
          child: Text('$text',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        IconButton(
          onPressed: () {print('clicked');},
          icon: Icon(Icons.arrow_forward_ios,color: Colors.grey[400],size: 12,),
        ),
      ],
    );
  }
}
