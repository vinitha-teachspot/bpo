// ignore_for_file: camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colorsSheet.dart';

class healthCare extends StatefulWidget {
  const healthCare({super.key});

  @override
  State<healthCare> createState() => _healthCareState();
}

class _healthCareState extends State<healthCare> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    List<Widget> carousal = [
      Container(
          width: screenWidth * 0.3,
          height: screenHeight*0.3,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.5),
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.72), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 2, // blur radius
              ),
            ],
          ),
          child:  const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Patient Support Service"),
          )
      ),
      Container(
          width: screenWidth * 0.3,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.5),
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 2, // blur radius
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Medical Billing & Coding"),
          )
      ),
      Container(
          width: screenWidth * 0.3,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.5),
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 2, // blur radius
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Claim Process"),
          )
      ),
      Container(
          width: screenWidth * 0.3,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.5),
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 2, // blur radius
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Appointment Scheduling"),
          )
      ),

    ];

    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(children: [
              Stack(
                children: [
                  Positioned(
                      child: Image.asset(
                        'assets/health.jpg',
                        fit: BoxFit.fill,
                        height: screenHeight * 0.68,
                        width: screenWidth,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenHeight * 0.1422,
                            ),
                            Text(
                              'Health Care',
                              style: GoogleFonts.headlandOne(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .displayLarge,
                                fontSize: 56,
                                color:Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Start making small changes today to live a healthier and happier life.',
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: 25, color:Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),

                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              Container(
                color: Colors.pinkAccent,
                height: 56,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 10, 18, 18),
                child:   CarouselSlider(
                    disableGesture: true,
                    options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        aspectRatio: 3 / 4,
                        viewportFraction: 0.4,
                        autoPlayCurve: Curves.easeInBack,
                        autoPlayInterval: const Duration(seconds: 1),
                        height: 300.0),
                    items: carousal),
              ),

              Column(
                children:  AnimateList(
                    children:[
                      Text('Seamless scheduling to reduce wait times',
                        style: Theme.of(context).textTheme.labelLarge?.apply(fontSizeDelta: 10,
                            fontWeightDelta: 2,color:  Colors.red),).animate(
                          onPlay: (controller)=>controller.repeat()
                      ).shimmer(
                          color: Colors.yellow,
                          duration:const Duration(milliseconds: 3000)
                      )
                    ]
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 0, 18, 18),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: SizedBox(
                            width: screenWidth*0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Health Care Data Entry",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("In the healthcare industry, accurate data management is crucial for patient care, regulatory compliance, and operational efficiency. Healthcare data entry involves inputting, updating, and maintaining various types of patient and medical information into databases, electronic health records (EHR), and other management systems. At [Your Company Name], we specialize in providing healthcare data entry services that ensure the timely and precise handling of healthcare data, allowing healthcare providers to focus on patient care and other core tasks.",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:ColorsSheet.writecontent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/medical.jpg',
                            fit: BoxFit.fill,
                            height: screenHeight * 0.68,
                            width: screenWidth,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 0, 18, 18),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            'assets/att_girl.jpg',
                            fit: BoxFit.fill,
                            height: screenHeight * 0.8,
                            width: screenWidth,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment Scheduling",
                              style:  GoogleFonts.playfair(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .displayLarge,
                                fontSize: 45,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text("Effective appointment scheduling is a key component of any service-based business. Whether you're in healthcare, beauty, or consulting, managing appointments efficiently ensures that customers are satisfied, resources are optimally allocated, and your business runs smoothly. At [Your Company Name], we offer comprehensive appointment scheduling services designed to help businesses organize, manage, and optimize appointments with ease.",
                              style:  GoogleFonts.playfair(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color:ColorsSheet.writecontent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),


            ])));
  }
}
