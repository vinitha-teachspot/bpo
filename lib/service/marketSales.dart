// ignore_for_file: camel_case_types, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colorsSheet.dart';

class marketSales extends StatefulWidget {
  const marketSales({super.key});

  @override
  State<marketSales> createState() => _marketSalesState();
}

class _marketSalesState extends State<marketSales> {
  @override
  Widget build(BuildContext context) {
    double scrrenHeight = MediaQuery.of(context).size.height;
    double scrrenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
                children: [
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
                                  'Marketing And Sales ',
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
                                height: scrrenHeight * 0.4,
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
                                  " Digital Marketing",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("With the world becoming more connected online, digital marketing has become a critical tool for businesses to reach and engage their target audience. We use a mix of digital strategies to improve your online visibility, engage with potential customers, and increase conversions.",
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
                                      "Brand Strategy and Positioning",
                                      style:  GoogleFonts.playfair(
                                        textStyle: Theme.of(context).textTheme.displayLarge,
                                        fontSize: 45,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Text("A strong, consistent brand identity helps differentiate your company in the marketplace and builds trust with potential customers. We help you define your brand’s voice, values, and positioning to create a lasting impression on your audience.",
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
                                height: scrrenHeight * 0.4,
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
                                'assets/full_cycle.jpg',
                                fit: BoxFit.fill,
                                height: scrrenHeight * 0.4,
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
                                  "Market Research and Analysis",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("Understanding your market and customer needs is critical to making informed decisions. Our market research services provide valuable insights into customer preferences, competitor strategies, and industry trends, helping you make data-driven decisions.",
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
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                'assets/full_cycle.jpg',
                                fit: BoxFit.fill,
                                height: scrrenHeight * 0.4,
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
                                  "Sales Strategy and Consulting",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("We work closely with your sales team to develop strategies that align with your business objectives, target audience, and market conditions. Whether you're looking to refine your existing process or build a new one, our consultants will guide you to success.",
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
                                      " CRM and Sales Automation",
                                      style:  GoogleFonts.playfair(
                                        textStyle: Theme.of(context).textTheme.displayLarge,
                                        fontSize: 45,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Text("Using CRM tools and sales automation can significantly improve your sales team’s productivity, allowing them to spend more time on selling and less on administrative tasks. We help you implement and optimize CRM systems to manage leads, track communications, and streamline your sales efforts.",
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
                                height: scrrenHeight * 0.4,
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
                                'assets/full_cycle.jpg',
                                fit: BoxFit.fill,
                                height: scrrenHeight * 0.4,
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
                                  " Sales Performance Analytics",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("Data-driven sales strategies lead to better decision-making. We help you track sales performance and key metrics, providing insights that can be used to improve strategies and increase conversion rates.",
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
                ]
            )
        )
    );
  }
}
