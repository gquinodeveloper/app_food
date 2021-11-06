import 'package:app_foods/pages/home/home_page.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            "assets/food_2.jpeg",
            width: double.infinity,
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              top: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back to \nGood Food",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: AppTheme.kPrimary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: AppTheme.kPrimary,
                      fontSize: 13.0,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.kPrimary),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.kPrimary),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    //hintText: "Ingrese su password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        print("Mostrar password");
                      },
                      child: Icon(
                        Icons.remove_red_eye,
                        size: 20.0,
                        color: AppTheme.kPrimary,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: AppTheme.kPrimary,
                      fontSize: 13.0,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.kPrimary),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.kPrimary),
                    ),
                  ),
                  onChanged: (value) {
                    print("Value: $value");
                  },
                ),
                SizedBox(height: 40.0),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, _, __) {
                            return HomePage();
                          },
                          transitionsBuilder: (_, animation, __, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 1000),
                        ),
                      );
                    },
                    child: Container(
                      width: 350.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: AppTheme.kPrimary,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Login in",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
                    width: 350.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.face, color: Colors.black54),
                        SizedBox(width: 10.0),
                        Text(
                          "Sign Up with Facebook",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Terms of User ',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'and',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy Policy',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
