// ignore_for_file: camel_case_types

import 'package:bpoo/constant/colorsSheet.dart';
import 'package:bpoo/service/healthcare.dart';
import 'package:bpoo/service/hr_recruitment.dart';
import 'package:bpoo/service/revenue.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../constant/shared_preference.dart';
import 'it_non_IT.dart';
import 'marketSales.dart';


class service extends StatefulWidget {
  const service({super.key, required this.index});
  final int index;
  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    double scrrenHeight = MediaQuery.of(context).size.height;
    double scrrenWidth = MediaQuery.of(context).size.width;
    return Consumer( builder: (context, ThemeModel themeNotifier, child){
      return widget.index == 0
          ? SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(children: [
                Stack(
                  children: [
                    Positioned(
                        child: Image.asset(
                          'assets/customer_support.jpg',
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
                                'BPO and IT Services',
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Redefining global outsourcing experience',
                                    style:  GoogleFonts.playfair(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: 25,color:ColorsSheet.writecontent,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'By delivering reliable solutions.',
                                    style:  GoogleFonts.playfair(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,color:ColorsSheet.writecontent,
                                      fontSize: 25,
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
                              'assets/inbound.jpg',
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
                                "InBound Service",
                                style:  GoogleFonts.playfair(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 45,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text("In today’s fast-paced and customer-centric world, providing seamless and efficient customer service is key to building lasting relationships and maintaining brand loyalty. Inbound services in BPO (Business Process Outsourcing) have become a crucial component of this effort, allowing companies to outsource their customer support operations and focus on what they do best—innovating and growing their business.\nWe specialize in offering comprehensive inbound services designed to enhance your customer experience and ensure that every interaction leaves a positive impression. Whether it's handling customer queries, managing support requests, or addressing technical issues, our team of trained professionals is here to help, 24/7.",
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
                                    "OutBound Service",
                                    style:  GoogleFonts.playfair(
                                      textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text("Outbound services in Business Process Outsourcing (BPO) refer to the outsourced functions where a company or service provider initiates communication with customers, rather than responding to incoming inquiries. These services are designed to proactively reach out to customers for various purposes such as sales, marketing, surveys, reminders, or customer support. \nWe specialize in providing top-tier outbound services that help businesses reach their customers in meaningful ways. Whether it’s generating leads, conducting surveys, promoting new products, or collecting payments, our dedicated team ensures every interaction is handled with professionalism and care.",
                                    style:  GoogleFonts.playfair(
                                      textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color:ColorsSheet.writecontent,

                                    ),)
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
                              'assets/outbound.jpg',
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
                                "Customer Support",
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
                              Text(
                                'BPO Centers is an extension of your office and is the front-facing team in your customer support operations. While providing personal and deep customer experiences, our highly-trained agents efficiently handle all incoming support tickets.',
                                style:  GoogleFonts.playfair(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .displayLarge,
                                  color:ColorsSheet.writecontent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                'Our support teams increase customer retention as well as lower the total cost to serve. We are committed to partnering with your company to help develop and optimize your outstanding customer support operations.',
                                style:  GoogleFonts.playfair(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .displayLarge,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500, color:ColorsSheet.writecontent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    color:themeNotifier.isDark?Colors.blue.withOpacity(0.2): Colors.greenAccent.withOpacity(0.4),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.pink,
                                                Colors.orange
                                              ])),
                                      child: const Padding(
                                        padding:
                                        EdgeInsets.all(8.0),
                                        child:
                                        Icon(CupertinoIcons.phone),
                                      ),
                                    ),
                                    SizedBox(
                                      width: scrrenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Voice support",
                                          style:  GoogleFonts.playfair(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                            fontSize: 34,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: scrrenWidth * 0.3,
                                          child: Text(
                                            'Phone support is a vital and a necessary median for effective customer care. Our accent-neutral agents seamlessly and effectively communicate with your customers. We utilize your company’s guidance to answer questions, increase sales, and resolve questions related to your products and services.',
                                            style:  GoogleFonts.playfair(
                                              textStyle:
                                              Theme.of(context)
                                                  .textTheme
                                                  .displayLarge,
                                              fontSize: 18, color:ColorsSheet.writecontent,
                                              fontWeight:
                                              FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.pink,
                                                Colors.orange
                                              ])),
                                      child: const Padding(
                                        padding:
                                        EdgeInsets.all(8.0),
                                        child: Icon(CupertinoIcons
                                            .chat_bubble_text),
                                      ),
                                    ),
                                    SizedBox(
                                      width: scrrenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Live Chat Support ",
                                          style:  GoogleFonts.playfair(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                            fontSize: 34,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: scrrenWidth * 0.3,
                                          child: Text(
                                            'As the need to communicate with your customers grows with technology, BPO Centers stays up-to-date with the latest software and tech to interact with your customers in real-time. We’re able to increase sales, resolve concerns, and maintain loyalty to your brand. A good live chat solution will also increase your core KPI’s.',
                                            style:  GoogleFonts.playfair(
                                              textStyle:
                                              Theme.of(context)
                                                  .textTheme
                                                  .displayLarge, color:ColorsSheet.writecontent,
                                              fontSize: 18,
                                              fontWeight:
                                              FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.pink,
                                                Colors.orange
                                              ])),
                                      child: const Padding(
                                        padding:
                                        EdgeInsets.all(8.0),
                                        child:
                                        Icon(CupertinoIcons.mail),
                                      ),
                                    ),
                                    SizedBox(
                                      width: scrrenWidth * 0.01,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Email Support",
                                          style:  GoogleFonts.playfair(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                            fontSize: 34,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: scrrenWidth * 0.3,
                                          child: Text(
                                            'A proficient email program is crucial to a successful customer service solution.  Our agents are able to provide concise, clear and responsive email support resolving issues quickly and effectively.',
                                            style:  GoogleFonts.playfair(
                                              textStyle:
                                              Theme.of(context)
                                                  .textTheme
                                                  .displayLarge,
                                              fontSize: 18, color:ColorsSheet.writecontent,
                                              fontWeight:
                                              FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/customer_support1.jpg',
                            fit: BoxFit.fill,
                            height: scrrenHeight * 0.8,
                            width: scrrenWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ]))):
      widget.index==1?const healthCare():
      widget.index==2?const hrRecruitment():
      widget.index==3?const marketSales():
      widget.index==4?const technicalIt():
      widget.index==5?const revenue():
      Container();
    });


  }
}

