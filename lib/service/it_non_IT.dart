// ignore_for_file: file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colorsSheet.dart';

class technicalIt extends StatefulWidget {
  const technicalIt({super.key});

  @override
  State<technicalIt> createState() => _technicalItState();
}

class _technicalItState extends State<technicalIt> {
  @override
  Widget build(BuildContext context) {
    double scrrenHeight = MediaQuery.of(context).size.height;
    double scrrenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(children: [
              Stack(
                children: [
                  Positioned(
                      child: Image.asset(
                        'assets/hr_home.jpg',
                        fit: BoxFit.fill,
                        height: scrrenHeight * 0.8,
                        width: scrrenWidth,
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
                              height: scrrenHeight * 0.1422,
                            ),
                            Text(
                              'Technical IT & NON IT Service ',
                              style: GoogleFonts.headlandOne(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .displayLarge,
                                fontSize: 56,
                                color:Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
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
                            'assets/full_cycle.jpg',
                            fit: BoxFit.fill,
                            height: scrrenHeight * 0.8,
                            width: scrrenWidth,
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
                              "Technical IT Services ",
                              style:  GoogleFonts.playfair(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 45,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(" we offer a wide range of technical IT services designed to streamline your operations, improve efficiency, and enhance your cybersecurity. Whether you need to upgrade your infrastructure, adopt cloud technology, or safeguard your data, we have the expertise to provide tailored solutions that suit your specific needs.",
                              style:  GoogleFonts.playfair(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color:ColorsSheet.writecontent,
                              ),
                            ),

                            const SizedBox(
                              height: 13,
                            ),
                          ],
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
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: SizedBox(
                            width: scrrenWidth*0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Non-IT Services",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("We understand that each business has specific operational challenges, and we are committed to providing tailored solutions that address your unique needs. Our non-IT services are designed to empower your workforce, streamline processes, and ensure seamless business operations.",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:ColorsSheet.writecontent,

                                  ),),

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
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            'assets/industry_rec.jpg',
                            fit: BoxFit.fill,
                            height: scrrenHeight * 0.8,
                            width: scrrenWidth,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


            ]
            )
        )
    );
  }
}
