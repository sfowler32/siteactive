import 'package:flutter/material.dart';
import 'package:siteactive/Components//HomePageButtons.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textControllerEmail;
  TextEditingController textControllerPassword;
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'Assets/SiteActiveWhite.png',
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            Column(
              children: [
                Container(
                    color: Color(0xFF494d4d),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1),
                Container(
                  color: Color(0xFF494d4d),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.height * 0.15),
                      GestureDetector(
                        onTap: null,
                        child: HomePageButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.group_outlined,
                            size: MediaQuery.of(context).size.width * 0.15,
                            color: Color(0xFF494d4d),
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15),
                      GestureDetector(
                        onTap: null,
                        child: HomePageButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.business,
                            size: MediaQuery.of(context).size.width * 0.15,
                            color: Color(0xFF494d4d),
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15),
                      GestureDetector(
                        onTap: null,
                        child: HomePageButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.work_outline,
                            size: MediaQuery.of(context).size.width * 0.15,
                            color: Color(0xFF494d4d),
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.height * 0.15),
                    ],
                  ),
                ),
                Container(
                    color: Color(0xFF494d4d),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  color: Color(0xFF494d4d),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.height * 0.15),
                      GestureDetector(
                        onTap: null,
                        child: HomePageButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.assessment_outlined,
                            size: MediaQuery.of(context).size.width * 0.15,
                            color: Color(0xFF494d4d),
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15),
                      GestureDetector(
                        onTap: null,
                        child: HomePageButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.picture_as_pdf_outlined,
                            size: MediaQuery.of(context).size.width * 0.15,
                            color: Color(0xFF494d4d),
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15),
                      GestureDetector(
                        onTap: null,
                        child: HomePageButton(
                          color: Colors.white,
                          child: Icon(
                            Icons.settings,
                            size: MediaQuery.of(context).size.width * 0.15,
                            color: Color(0xFF494d4d),
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.height * 0.15),
                    ],
                  ),
                ),
                Container(
                    color: Color(0xFF494d4d),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
