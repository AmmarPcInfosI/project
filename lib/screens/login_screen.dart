import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("res/bg.jpeg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 361 / 390,
            height: MediaQuery.sizeOf(context).height * 380 / 844,
            decoration: ShapeDecoration(
              color: Color(0xB289875B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height * 42 / 844),
                  child: Text(
                    'تسجيل دخول',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.notoSansArabic(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height * 37 / 844),
                    width: MediaQuery.sizeOf(context).width * 332 / 390,
                    height: MediaQuery.sizeOf(context).height * 46 / 844,
                    child: TextFormField(
                      enableInteractiveSelection: false,
                      autofocus: false,
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'البريد الالكتروني',
                        alignLabelWithHint: false,
                        hintStyle: GoogleFonts.notoSansArabic(
                          color: Color(0xFF89875B),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                        contentPadding: EdgeInsets.all(10),
                        filled: true,
                        fillColor: Color(0xFFD9D9D9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      style: const TextStyle(
                        color: Color(0xFF89875B),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height * 17 / 844),
                      width: MediaQuery.sizeOf(context).width * 332 / 390,
                      height: MediaQuery.sizeOf(context).height * 46 / 844,
                      child: TextFormField(
                        enableInteractiveSelection: false,
                        autofocus: false,
                        textAlign: TextAlign.right,
                        controller: passwordController,
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          hintStyle: GoogleFonts.notoSansArabic(
                            color: Color(0xFF89875B),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                          contentPadding: EdgeInsets.all(10),
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'كلمة المرور',
                          prefixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFF89875B),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height * 6 / 844),
                      child: InkWell(
                        child: Text(
                          'فقدان كلمة المرور؟',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.actor(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 16 / 844,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF96945E), // Set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 149 / 390,
                      MediaQuery.of(context).size.height * 51 / 844,
                    ),
                  ),
                  child: Text(
                    'تسجيل الدخول',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansArabic(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
