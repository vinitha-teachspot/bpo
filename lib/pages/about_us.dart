// ignore_for_file: library_prefixes, camel_case_types, deprecated_member_use

import 'package:bpoo/constant/colorsSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import '../Cubit/page_change_index/page_change_cubit.dart';
import '../constant/shared_preference.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({super.key});

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
  void hover() {
    Container(
      color: Colors.cyan,
      height: 250,
    );
  }

  void launchmail() {
    UrlLauncher.launchUrl(Uri.parse("Jenaviinfotechsolutions@gmail.com"));
  }

  void launchMAp() {
    // MapUtils.openMap(-3.823216,-38.481700);
    UrlLauncher.launchUrl(Uri.parse("http://www.google.com/maps/dir"));
  }

  void navigateTo(double lat, double lng) async {
    var uri = Uri.parse("google.navigation:q=$lat,$lng&mode=d");
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch ${uri.toString()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    double scrrenHeight = MediaQuery.of(context).size.height;
    double scrrenWidth = MediaQuery.of(context).size.width;

    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Opacity(
                        opacity: 0.9,
                        child: Image.asset(
                          'assets/about_bg.jpg',
                          fit: BoxFit.fill,
                          height: scrrenHeight * 0.8,
                          width: scrrenWidth,
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: scrrenHeight * 0.1422,
                              ),
                              Text(
                                'Culture and Geography',
                                style: GoogleFonts.headlandOne(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 56,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Powered by remarkable agents and cutting-edge technology',
                                style: GoogleFonts.playfair(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Container(
              //   color: Colors.red,
              //   child: Padding(
              //     padding: const EdgeInsets.all(18.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Expanded(
              //           child: Text(
              //             "Customer Service",
              //             style: GoogleFonts.playfair(
              //               textStyle: Theme.of(context).textTheme.displayLarge,
              //               color: Colors.white,
              //               fontSize: 25,
              //               fontWeight: FontWeight.w300,
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           child: Text(
              //             "InBound / OutBound Sales",
              //             style: GoogleFonts.playfair(
              //               textStyle: Theme.of(context).textTheme.displayLarge,
              //               color: Colors.white,
              //               fontSize: 25,
              //               fontWeight: FontWeight.w300,
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           child: Text(
              //             "Back Office",
              //             style: GoogleFonts.playfair(
              //               textStyle: Theme.of(context).textTheme.displayLarge,
              //               color: Colors.white,
              //               fontSize: 25,
              //               fontWeight: FontWeight.w300,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
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
                            'assets/ofc.jpg',
                            fit: BoxFit.fill,
                            height: scrrenHeight * 0.58,
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
                              "WHO WE ARE",
                              style: GoogleFonts.playfair(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 45,
                                fontWeight: FontWeight.w500,
                                // fontStyle: FontStyle.italic,
                              ),
                            ).animate(onPlay: (controller) => controller.repeat()).shimmer(color: Colors.yellow, duration: const Duration(milliseconds: 3000)),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              'BPO Centers is a nearshore outsourcing company based out of California with facilities throughout Mexico. We specialize in providing the highest quality customer support to brands that rely on outstanding customer experiences for their growth.',
                              style: GoogleFonts.playfair(
                                letterSpacing: 1.5,
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                // fontStyle: FontStyle.italic,
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
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Container(
                  color:Colors.grey.shade100,
                  width: scrrenWidth * 0.9,
                  // height: scrrenHeight * 0.70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Mission Circle
                            _buildCircle(
                              title: 'MISSION',
                              description:
                              'Our mission is to deliver exceptional outsourcing solutions that help businesses optimize operations, enhance customer experiences, and drive sustainable growth. Through innovation, dedication, and operational excellence, we empower our clients to focus on their core competencies while we handle the rest.',
                              color: Colors.blue.shade100,
                              imagePath: 'assets/ourmission.png',
                            ),
                            // Vision Circle
                            _buildCircle(
                              title: 'VISION',
                              description:
                              'To be the leading global provider of transformative BPO services, recognized for our commitment to quality, innovation, and customer-centric solutions. We aim to continuously evolve and adapt to meet the dynamic needs of businesses worldwide, setting new standards of excellence in outsourcing.',
                              color: Colors.green.shade100,
                              imagePath: 'assets/ourvision.png',
                            ),
                            _buildCircle(
                              title: 'VALUES',
                              description:
                              'Quality: Commitment to Excellence in Service \n Growth: Empowering Agents Through Skill Development\nCollaboration: Building Stronger Teams Through Clear Communication\nResponsibility: Fostering a Culture of Continuous Improvement',
                              color: Colors.amber.shade100,
                              isCenter: true,
                              imagePath: 'assets/ourvalue.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 9,),
              Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        'THE BPO WAY',
                        style: GoogleFonts.playfair(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          // fontStyle: FontStyle.italic,
                        ),
                      ).animate(onPlay: (controller) => controller.repeat()).shimmer(color: Colors.yellow, duration: const Duration(milliseconds: 3000)),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: scrrenWidth * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Our Advantage",
                                  style: GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    // fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Quality is BPO Centers’ highest priority, and our quality assurance teams work everyday to ensure this standard is met. Your customers are thrilled when they speak and chat with agents who are culturally similar, accent neutral, and truly care about solving their issues. Our agents work with cutting-edge technology and best practices from around the globe, and it is simple to scale with us as our pricing model significantly reduces your total cost to serve.',
                                  style: GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 18,
                                    color: ColorsSheet.writecontent,
                                    fontWeight: FontWeight.w500,
                                    // fontStyle: FontStyle.italic,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: scrrenWidth * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Our Mission and Commitment",
                                  style: GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    // fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'We are committed to providing exceptional agents who deliver high-quality customer care and true brand ambassadorship. By applying our native English and professional culture with high-class training, our agents become an essential extension to your team. We at BPO Centers are dedicated to ensuring complete satisfaction with honesty and transparency.',
                                  style: GoogleFonts.playfair(
                                    textStyle: Theme.of(context).textTheme.displayLarge,
                                    fontSize: 18,
                                    color: ColorsSheet.writecontent,
                                    fontWeight: FontWeight.w500,
                                    // fontStyle: FontStyle.italic,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Center(
                        child: InkWell(
                            onTap: () {
                              context.read<PageChangeCubit>().ContactUSS();
                            },
                            child: Container(
                              color: Colors.greenAccent,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Contact Us'),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Text('Let’s Connect!',
                      style: GoogleFonts.playfair(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        // fontStyle: FontStyle.italic,
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('We look forward to hearing from you.',
                      style: GoogleFonts.playfair(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        // fontStyle: FontStyle.italic,
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  Text('For more information, please contact us ',
                      style: GoogleFonts.playfair(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        // fontStyle: FontStyle.italic,
                      )),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildCircle({
    required String title,
    required String description,
    required Color color,
    bool isCenter = false,
    required String imagePath,
  }) {
    return Column(
      children: [
        // Circle with image
        CircleAvatar(
          radius: isCenter ? 60 : 60,
          backgroundColor: color,
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: isCenter ? 120 : 120,
              height: isCenter ? 120 : 120,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
          // maxLines: 5,
          // overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        Container(
          width: isCenter ? 200 : 200,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12,color: ColorsSheet.writecontent),
            //maxLines: 5,
            //   overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
