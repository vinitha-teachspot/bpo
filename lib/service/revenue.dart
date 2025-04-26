// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colorsSheet.dart';

class revenue extends StatefulWidget {
  const revenue({super.key});

  @override
  State<revenue> createState() => _revenueState();
}

class _revenueState extends State<revenue> {
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
                              'Customer Service & Support ',
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
                              "Customer Services ",
                              style:  GoogleFonts.playfair(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 45,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text("We specialize in offering a wide range of customer service solutions that cater to various business needs. Whether you are looking for a customer support center, virtual assistant services, or personalized client interactions, we are here to help you achieve service excellence and customer satisfaction.",
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
                                  "Customer Support ",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("Customer support is a critical component of a successful business. It involves assisting customers with inquiries, technical issues, troubleshooting, and resolving any problems they may encounter. Offering excellent customer support ensures a positive experience, builds trust, and boosts customer loyalty. At [Your Company Name], we provide customer support services that are tailored to meet your specific business needs. Our goal is to create an efficient, responsive, and customer-centric environment that keeps your clients satisfied and engaged.",
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
