// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colorsSheet.dart';

class hrRecruitment extends StatefulWidget {
  const hrRecruitment({super.key});

  @override
  State<hrRecruitment> createState() => _hrRecruitmentState();
}

class _hrRecruitmentState extends State<hrRecruitment> {
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
                              'HR Recruitment And Service ',
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
                              "Full Cycle Recruitment",
                              style:  GoogleFonts.playfair(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 45,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text("Full-cycle recruitment refers to the comprehensive process of managing the entire hiring journey—from identifying your staffing needs to the successful placement and onboarding of new employees. Unlike traditional recruitment models, full-cycle recruitment ensures that every aspect of the recruitment process is handled by a dedicated team, ensuring a seamless experience for both clients and candidates.",
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
                                  "Industry Specific Recruitment",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Text("The tech industry is fast-paced, constantly evolving, and highly competitive. Whether you’re looking for software developers, cybersecurity experts, or IT project managers, we specialize in sourcing top talent across all areas of technology and IT.",
                                  style:  GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color:ColorsSheet.writecontent,

                                  ),),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text("In the healthcare industry, the need for skilled and compassionate professionals is critical. From nurses and physicians to medical researchers and healthcare administrators, we provide a full spectrum of healthcare recruitment services that help you find the right talent to deliver high-quality patient care.",
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
                              "Employer Branding",
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
                              'Employer branding refers to the process of creating and promoting a positive image of your company as an employer. It encompasses how your organization is perceived by current employees, potential candidates, and the broader job market. A strong employer brand helps you build a reputation as a great place to work, resulting in increased talent attraction, employee retention, and overall organizational success.',
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
                              'We specialize in helping businesses define and strengthen their employer brand to attract and retain top talent. Whether you need support in creating a strategy, improving employee engagement, or boosting your recruitment efforts, we are here to help you position your company as a top employer in your industry.',
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
            ]
            )
        )
    );
  }
}
