import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepOrangeAccent.withOpacity(0.2),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 60.00,
                  bottom: 10,
                ),
                // color: Colors.greenAccent,
                padding: EdgeInsets.all(2),
                height: 70,
                width: 70,
                child: CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    backgroundImage: NetworkImage(
                        "https://scontent.fdac41-1.fna.fbcdn.net/v/t1.6435-9/48369001_1413961365407090_7945538121477652480_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=174925&_nc_eui2=AeEhVj6SMG3u9VmSa9p2lUqlbm0PllSJ--pubQ-WVIn76oXXrWV1O90_ElnCQ0DXzvuFnkiD-Dkgz0cegt1_x2QZ&_nc_ohc=_nG6uZhZyAcAX_rNgDB&_nc_ht=scontent.fdac41-1.fna&oh=00_AT_14541WkqrPwrgjArHSBo8p9_-9k9DEQ9ZzgERw1MIfA&oe=631EE73F")),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  "  Farhan Ferdous",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  "  farhanferdous@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10.00,
                    bottom: 10.00,
                  ),
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.greenAccent,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.white,
                    ),
                  ),
                  width: 250,
                  child: Text(
                    "SIGN OUT",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Icon(Icons.food_bank, size: 30, color: Colors.white),
                title: Text(
                  "Recent Orders",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.food_bank_outlined,
                    size: 30, color: Colors.white),
                title: Text(
                  "Previous Orders",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.control_point_duplicate,
                    size: 30, color: Colors.white),
                title: Text(
                  "Points",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, size: 30, color: Colors.white),
                title: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard_customize,
                    size: 30, color: Colors.white),
                title: Text(
                  "Dashboard",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home_filled, size: 30, color: Colors.white),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
                height: 10,
                endIndent: 10.00,
                indent: 10.00,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 10,
                  bottom: 5,
                ),
                child: Text(
                  "Communicate",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.lock, size: 30, color: Colors.white),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.call, size: 30, color: Colors.white),
                title: Text(
                  "Contact Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
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
