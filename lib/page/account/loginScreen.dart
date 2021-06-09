import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qltt_danthanh/page/home/home_page.dart';

class LoginScreen extends StatefulWidget{
@override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{

  bool isRememberMe = false;


  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Tài Khoản",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.account_box,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Tài khoản',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Mật Khẩu",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top:14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Quên mật khẩu"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Quên mật khẩu',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(data: ThemeData(unselectedWidgetColor :Colors.white)
              , child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value){
                  setState(() {
                    isRememberMe = value;
                  });
                },
              )
          ),
          Text(
            'Ghi nhớ tài khoản',
            style: TextStyle(
              color : Colors.white,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 25
      ),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          'Đăng Nhập',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildSignInBtn(){
    return GestureDetector(
      onTap: () => print("Sign Up Pressed"),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Không có tài khoản',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                )
            ),
            TextSpan(
              text: 'Đăng Ký',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e)
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Đăng nhập',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSignInBtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}