import 'package:flutter/material.dart';
import 'dart:ui' ;
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [

              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topCenter,
                ),
              ),


              SizedBox(
                  child: Stack(
                    children: [
                      Container(
                        child: CustomPaint(
                          size: Size(1000, (270).toDouble(),),
                          painter: RPSCustomPainter(),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 80),
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0, top: 5.0),
                    width: width * 0.8,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: 'Enter your name',
                        labelText: 'Full Name',
                        prefixIcon: Icon(
                          Icons.person_sharp,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8)),
                          borderSide: BorderSide(
                              width: 2, color: Colors.blueGrey
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: width * 0.8,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Your Phone Number',
                        labelText: 'Phone Number',
                        prefixIcon: Icon(
                          Icons.phone,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8)),
                          borderSide: BorderSide(
                              width: 2, color: Colors.blueGrey
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: width * 0.8,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'example@test.com',
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8)),
                          borderSide: BorderSide(
                              width: 2, color: Colors.blueGrey
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: width * 0.8,
                    child: TextFormField(
                      obscureText: _isHidden,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon:
                          const Icon
                            (Icons.lock,
                          ),
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(_isHidden == true ? Icons.visibility : Icons
                                .visibility_off,
                            ),
                          ),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8)),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.blueGrey,
                              )
                          )
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: width * 0.8,
                    child: TextFormField(
                      obscureText: _isHidden,
                      // keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        suffix: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(_isHidden == true ? Icons.visibility : Icons
                              .visibility_off,
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8)),
                          borderSide: BorderSide(
                            width: 2, color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: width * 0.8,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Register', style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: width * 0.8,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey, width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Log in', style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),),
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
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}


class RPSCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromRGBO(128, 0, 165, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    Path path0 = Path();
    path0.moveTo(size.width*-0.1754800,size.height*-0.0029200);
    path0.lineTo(size.width*-0.1754800,size.height*-0.0003600);
    path0.lineTo(size.width*-0.1754800,size.height*0.7746800);
    path0.quadraticBezierTo(size.width*0.0125400,size.height*0.7110800,size.width*0.1274100,size.height*0.7134000);
    path0.cubicTo(size.width*0.1700500,size.height*0.7069000,size.width*0.3259900,size.height*0.7363800,size.width*0.4287400,size.height*0.7926000);
    path0.quadraticBezierTo(size.width*0.7654400,size.height*0.9890200,size.width*1.1210700,size.height*0.7743200);
    path0.lineTo(size.width*1.1210700,size.height*-0.0029200);
    path0.lineTo(size.width*-0.1754800,size.height*-0.0029200);
    path0.close();
    canvas.drawPath(path0, paint0);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}





