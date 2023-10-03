import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isEmailValid(String email) {
    final RegExp emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$',
      caseSensitive: false,
    );

    return emailRegex.hasMatch(email);
  }

  bool isPhoneNumberValid(String phoneNumber) {
    final RegExp phoneRegex = RegExp(
      r'^[7-9]\d{7}$',
      caseSensitive: false,
    );

    return phoneRegex.hasMatch(phoneNumber);
  }

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("res/bg.jpeg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 361 / 390,
              height: MediaQuery.sizeOf(context).height * 545 / 844,
              decoration: ShapeDecoration(
                color: const Color(0xB289875B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height * 28 / 844),
                    child: Text(
                      'انشاء حساب',
                      textAlign: TextAlign.center,
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
                          top: MediaQuery.sizeOf(context).height * 38 / 844),
                      width: MediaQuery.sizeOf(context).width * 332 / 390,
                      height: MediaQuery.sizeOf(context).height * 46 / 844,
                      child: TextFormField(
                        controller: nameController,
                        enableInteractiveSelection: false,
                        autofocus: false,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'الاسم الثلاثي',
                          alignLabelWithHint: false,
                          hintStyle: GoogleFonts.notoSansArabic(
                            color: const Color(0xFF89875B),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: const Color(0xFFD9D9D9),
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
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height * 18 / 844),
                      width: MediaQuery.sizeOf(context).width * 332 / 390,
                      height: MediaQuery.sizeOf(context).height * 46 / 844,
                      child: TextFormField(
                        controller: emailController,
                        enableInteractiveSelection: false,
                        autofocus: false,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'البريد الالكتروني',
                          alignLabelWithHint: false,
                          hintStyle: GoogleFonts.notoSansArabic(
                            color: const Color(0xFF89875B),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: const Color(0xFFD9D9D9),
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
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height * 18 / 844),
                      width: MediaQuery.sizeOf(context).width * 332 / 390,
                      height: MediaQuery.sizeOf(context).height * 46 / 844,
                      child: TextFormField(
                        controller: phoneNumController,
                        enableInteractiveSelection: false,
                        autofocus: false,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'رقم الهاتف',
                          alignLabelWithHint: false,
                          hintStyle: GoogleFonts.notoSansArabic(
                            color: const Color(0xFF89875B),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: const Color(0xFFD9D9D9),
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
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height * 18 / 844),
                      width: MediaQuery.sizeOf(context).width * 332 / 390,
                      height: MediaQuery.sizeOf(context).height * 46 / 844,
                      child: TextFormField(
                        controller: nationalityController,
                        enableInteractiveSelection: false,
                        autofocus: false,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'الجنسية',
                          alignLabelWithHint: false,
                          hintStyle: GoogleFonts.notoSansArabic(
                            color: const Color(0xFF89875B),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: const Color(0xFFD9D9D9),
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
                            top: MediaQuery.sizeOf(context).height * 18 / 844),
                        width: MediaQuery.sizeOf(context).width * 332 / 390,
                        height: MediaQuery.sizeOf(context).height * 46 / 844,
                        child: TextFormField(
                          enableInteractiveSelection: false,
                          autofocus: false,
                          textAlign: TextAlign.right,
                          controller: _passwordController,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            alignLabelWithHint: false,
                            hintStyle: GoogleFonts.notoSansArabic(
                              color: const Color(0xFF89875B),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 1,
                            ),
                            contentPadding: const EdgeInsets.all(10),
                            filled: true,
                            fillColor: const Color(0xFFD9D9D9),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'كلمة المرور',
                            prefixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
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
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 37 / 844,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String fullName = nameController.text;
                      String email = emailController.text;
                      String nationality=nationalityController.text;
                      String phoneNumber = phoneNumController.text;
                      String password = _passwordController.text;

                      if (fullName.isEmpty ||
                          email.isEmpty ||nationality.isEmpty ||
                          phoneNumber.isEmpty ||
                          password.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('أكمل كافة الحقول',textAlign:TextAlign.right,),
                          ),
                        );
                      } else if (!isEmailValid(email)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('أدخل بريد الكتروني صالح',textAlign:TextAlign.right,),
                          ),
                        );
                      } else if (!isPhoneNumberValid(phoneNumber)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('الرجاء إدخال رقم هاتف صالح',textAlign:TextAlign.right,),
                          ),
                        );
                      } else if (password.length < 8) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل.',textAlign:TextAlign.right,),
                          ),
                        );
                      } else if (!password.contains(RegExp(r'[a-z]'))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل.',textAlign:TextAlign.right,),
                          ),
                        );
                      } else if (!password.contains(RegExp(r'[A-Z]'))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل.',textAlign:TextAlign.right,),
                          ),
                        );
                      } else if (!password
                          .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل.',textAlign:TextAlign.right,),
                          ),
                        );
                      } else {}
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF96945E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 149 / 390,
                        MediaQuery.of(context).size.height * 51 / 844,
                      ),
                    ),
                    child: Text(
                      'انشاء حساب',
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
      ),
    );
  }
}


  // Rest of your button properties

