// ignore_for_file: deprecated_member_use, library_prefixes, camel_case_types, must_be_immutable

import 'package:bpoo/constant/colorsSheet.dart';
import 'package:bpoo/constant/shared_preference.dart';
import 'package:bpoo/utility/apppadding.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class homePage extends StatefulWidget {
  homePage({super.key, this.move});
  String? move;

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final ScrollController pagescrollController = ScrollController();
  final GlobalKey ourservice = GlobalKey();
  final GlobalKey whoweare = GlobalKey();
  final GlobalKey companyjourney = GlobalKey();

  late VideoPlayerController _controller;

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
  void initState() {
    if (widget.move != null) {
      Future.delayed(const Duration(seconds: 1), () {
        scroller(widget.move);
      });
    }

    _controller = VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
    super.initState();
  }

  void scroller(key) {
    print(key);
    final context = key.currentContext;
    if (context != null) {
      final position = context.findRenderObject()!.getTransformTo(null).getTranslation().y;
      pagescrollController.animateTo(
        position, // Scroll to the position of the widget
        duration: const Duration(seconds: 1), // Scroll animation duration
        curve: Curves.easeInOutExpo,
      );
    }
  }

  final List<Map<String, String>> companyJourney = [
    {"year": "2020", "title": "Foundation and Market Entry"},
    {"year": "2021", "title": "Scaling Operations & Project Acquisition"},
    {"year": "2022", "title": "Consolidating Market Position"},
    {"year": "2023", "title": "Expansion & Innovation"},
    {"year": "2024", "title": "Market Leadership and Sustainability"},
  ];

  @override
  Widget build(BuildContext context) {
    double scrrenHeight = MediaQuery.of(context).size.height;
    double scrrenWidth = MediaQuery.of(context).size.width;

    List<Widget> carossal = [
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/at&t.png',
          fit: BoxFit.fill,
          // fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/adam&eve.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/amazon.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/mw.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/telus.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/quadrant.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/exela.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/kalyan.png',
          fit: BoxFit.cover,
          height: scrrenHeight * 0.16,
          width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/clickworker.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
      Container(
        width: scrrenWidth * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Image.asset(
          'assets/appen.png',
          fit: BoxFit.cover,
          // height: scrrenHeight * 0.16,
          // width: scrrenWidth * 0.2,
        ),
      ),
    ];
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return SingleChildScrollView(
        controller: pagescrollController,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Stack(
                  children: [
                    SizedBox(
                      height: scrrenHeight * 0.6,
                      width: scrrenWidth,
                      child: Image.asset(
                        'assets/background.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scrrenHeight * 0.1422,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Text(
                                'Comprehensive BPO Solutions for Every Aspect of your Business!',
                                style: GoogleFonts.headlandOne(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Unlock Efficiency,Scalability,and innovation-IT & Non-IT Outsourcing at its Best.',
                              style: GoogleFonts.playfair(
                                textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Container(
                                width: scrrenWidth * 0.16,
                                constraints: BoxConstraints(maxWidth: scrrenWidth * 0.8),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            'Get Free Estimated',
                                            style: GoogleFonts.playfair(
                                              textStyle: Theme.of(context).textTheme.displayLarge,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Icon(
                                        CupertinoIcons.arrow_right_circle_fill,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
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
                            'assets/about_us.png',
                            fit: BoxFit.fill,
                            height: scrrenHeight * 0.40,
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
                            Container(
                              key: whoweare,
                              child: Text(
                                "WHO WE ARE",
                                style: GoogleFonts.playfair(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 45,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                                  .animate(onPlay: (controller) => controller.repeat())
                                  .shimmer(color: Colors.yellow, duration: const Duration(milliseconds: 3000)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Jenavi Infotech solutions is a IT/Non-IT (BPO) based company dedicated to [BPO Industries]. Founded in 2021 we specialize in delivering in greeting customers from many parts of the world with customer service related issues for the past 4 years. Jenavi InfoTech always focus on helping the client to be more competitive .We take pride in saying that we always strive to exceed the expectations of our clients and their customers.',
                                style: GoogleFonts.playfair(
                                  color: ColorsSheet.writecontent,
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: themeNotifier.isDark ? Colors.white24 : Colors.grey.shade100,
                width: scrrenWidth * 0.9,
                height: scrrenHeight * 0.65,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    key: ourservice,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'OUR SERVICES',
                            style: GoogleFonts.playfair(
                              textStyle: Theme.of(context).textTheme.displayLarge,
                              fontSize: 45,
                              fontWeight: FontWeight.w500,
                            ),
                          ).animate(onPlay: (controller) => controller.repeat()).shimmer(color: Colors.yellow, duration: const Duration(milliseconds: 3000)),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: scrrenHeight * 0.4,
                                width: scrrenWidth * 0.3,
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: eightPadding, left: fourPadding),
                                      child: Text(
                                        "HEALTH CARE",
                                        style: GoogleFonts.playfair(
                                          letterSpacing: 1,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: largePadding,
                                      child: Text(
                                        "Patient Support Services – 24/7 assistance for your patients. Medical Billing & Coding – Accurate and compliant processing. Claims Management – Efficient claims processing for faster reimbursements. Appointment Scheduling – Seamless scheduling to reduce wait times. Healthcare Data Entry – Secure and precise data management. Telemedicine Support – Virtual healthcare solutions for remote consultations..",
                                        style: GoogleFonts.roboto(
                                          letterSpacing: 1.2,
                                          color: ColorsSheet.writecontent,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 16,
                                        ),
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                      ),
                                      child: Image.asset(
                                        'assets/health_care1.jpg',
                                        fit: BoxFit.cover,
                                        height: scrrenHeight * 0.16,
                                        width: scrrenWidth * 0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: scrrenHeight * 0.4,
                                width: scrrenWidth * 0.3,
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: eightPadding, left: fourPadding),
                                      child: Text(
                                        "HR RECURITMENT & SERVICES",
                                        style: GoogleFonts.playfair(
                                          letterSpacing: 1,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: largePadding,
                                      child: Text(
                                        "Full-Cycle Recruitment – From sourcing to placement, we handle it all! Executive Search & Headhunting – Secure high level talent for leadership roles. Permanent & Temporary Staffing – Flexibility for every hiring need. Industry-Specific Recruitment – Talent that fits your industry’s unique needs. Diversity, Equity, & Inclusion – Building diverse, inclusive teams. Candidate Assessment & Selection – Thorough screening for the perfect match. Onboarding & Candidate Transition – Smooth transitions for new hires. RPO Solutions – Scalable recruitment for your growing business. Employer Branding – Attract top talent by showcasing your company’s culture.",
                                        style: GoogleFonts.roboto(
                                          letterSpacing: 1.2,
                                          color: ColorsSheet.writecontent,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 16,
                                        ),
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                      ),
                                      child: Image.asset(
                                        'assets/hr_rec.jpg',
                                        fit: BoxFit.cover,
                                        height: scrrenHeight * 0.16,
                                        width: scrrenWidth * 0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: scrrenHeight * 0.4,
                                width: scrrenWidth * 0.3,
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: eightPadding, left: fourPadding),
                                      child: Text(
                                        "MARKETING AND SALES",
                                        style: GoogleFonts.playfair(
                                          letterSpacing: 1,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: largePadding,
                                      child: Text(
                                        "We specialize in driving results through tailored Sales & Marketing solutions that elevate your brand and accelerate growth. Our team is dedicated to helping you achieve your goals and maximize ROI with proven strategies. Let us handle your sales and marketing while you focus on growing your business",
                                        style: GoogleFonts.roboto(
                                          letterSpacing: 1.2,
                                          color: ColorsSheet.writecontent,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 16,
                                        ),
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                      ),
                                      child: Image.asset(
                                        'assets/sales.jpg',
                                        fit: BoxFit.cover,
                                        height: scrrenHeight * 0.16,
                                        width: scrrenWidth * 0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: scrrenHeight * 0.4,
                                width: scrrenWidth * 0.3,
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: eightPadding, left: fourPadding),
                                      child: Text(
                                        "TECHNICAL IT /NON IT SUPPORT",
                                        style: GoogleFonts.playfair(
                                          letterSpacing: 1,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: mediumPadding,
                                      child: Text(
                                        "We help manage, maintain, and troubleshoot technology systems, such as computers, networks, software, and hardware. It involves assisting individuals or organizations with resolving technical problems, optimizing performance, and ensuring that their technology runs smoothly. IT support can cover a broad range of tasks, including Software Support Network Support Security Support Data Backup & Recovery User Support",
                                        style: GoogleFonts.playfair(
                                          letterSpacing: 1.5,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                      ),
                                      child: Image.asset(
                                        'assets/about_us.png',
                                        fit: BoxFit.cover,
                                        height: scrrenHeight * 0.16,
                                        width: scrrenWidth * 0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: scrrenHeight * 0.4,
                                width: scrrenWidth * 0.3,
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: eightPadding, left: fourPadding),
                                      child: Text(
                                        "CUSTOMER SERVICES & SUPPORT",
                                        style: GoogleFonts.playfair(
                                          letterSpacing: 1,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: mediumPadding,
                                      child: Text(
                                        "Your customers deserve the best, and we deliver just that. With our dedicated Customer Service & Support solutions, we ensure your clients and customer receive the assistance they need, when they need it. Why Choose Us? Reliable, scalable, and cost-effective solutions for businesses of all sizes. Improve customer loyalty and retention with top-tier support. Enhance your brand reputation through positive customer experiences. Let us handle your customer support, so you can focus on what you do best.",
                                        style: GoogleFonts.playfair(
                                          letterSpacing: 1.5,
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                      ),
                                      child: Image.asset(
                                        'assets/about_us.png',
                                        fit: BoxFit.cover,
                                        height: scrrenHeight * 0.16,
                                        width: scrrenWidth * 0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: scrrenHeight * 0.5,
                                width: scrrenWidth * 0.22,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text('NOTABLE COMPANIES WE WORKED WITH',
                        style: GoogleFonts.playfair(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          // fontStyle: FontStyle.italic,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CarouselSlider(
                        disableGesture: true,
                        options: CarouselOptions(
                            scrollDirection: Axis.horizontal,
                            autoPlay: true,
                            aspectRatio: 3 / 4,
                            viewportFraction: 0.4,
                            autoPlayCurve: Curves.easeInBack,
                            autoPlayInterval: const Duration(seconds: 1),
                            height: 150.0),
                        items: carossal),
                  ),
                ],
              ),
              Container(
                key: companyjourney,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'COMPANY JOURNEY',
                          style: GoogleFonts.playfair(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // First define list of years and descriptions
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(companyJourney.length, (index) {
                          return Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.deepPurple,
                                    child: Text(
                                      '${index + 1}',
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    companyJourney[index]["year"]!,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  SizedBox(
                                    width: 120, // adjust as per your design
                                    child: Text(
                                      companyJourney[index]["title"]!,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              if (index != companyJourney.length - 1)
                                Container(
                                  width: 40,
                                  height: 2,
                                  color: Colors.grey.shade400,
                                  margin: const EdgeInsets.symmetric(horizontal: 8),
                                ),
                            ],
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),

              // Container(
              //   key: companyjourney,
              //   child: Column(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(24.0),
              //         child: Text('COMPANY JOURNEY',
              //             style: GoogleFonts.playfair(
              //               textStyle: Theme.of(context).textTheme.displayLarge,
              //               fontSize: 45,
              //               fontWeight: FontWeight.w500,
              //               // fontStyle: FontStyle.italic,
              //             )),
              //       ),
              //       Wrap(
              //         spacing: 10, // Horizontal spacing
              //         runSpacing: 10,
              //         children: [
              //           Container(
              //             child: _buildStepColumn(context, scrrenWidth, "2020", "Foundation and Market Entry", themeNotifier.isDark),
              //           ),
              //           Container(
              //             child: _buildStepColumn(context, scrrenWidth, "2021", "Scaling Operations & Project Acquisition", themeNotifier.isDark),
              //           ),
              //           Container(
              //             child: _buildStepColumn(context, scrrenWidth, "2022", "Consolidating Market Position", themeNotifier.isDark),
              //           ),
              //           Container(
              //             child: _buildStepColumn(context, scrrenWidth, "2023", "Expansion & Innovation", themeNotifier.isDark),
              //           ),
              //           Container(
              //             child: _buildStepColumn(context, scrrenWidth, "2024", "Market Leadership and Sustainability", themeNotifier.isDark),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   color: Colors.blue.withOpacity(0.2),
              //   child: Column(
              //     children: [
              //       SizedBox(
              //         height: scrrenHeight * 0.1,
              //       ),
              //       SizedBox(
              //         height: scrrenHeight * 0.1,
              //       ),
              //       Stack(
              //         children: [
              //           Container(
              //             color: Colors.blue.withOpacity(0.46),
              //             alignment: Alignment.center,
              //             width: scrrenWidth * 0.79,
              //             child: Padding(
              //               padding: const EdgeInsets.fromLTRB(18.0, 18, 18, 40),
              //               child: Row(
              //                 children: [
              //                   Expanded(
              //                       child: Image.asset(
              //                     'assets/bpo.gif',
              //                     height: scrrenHeight * 0.64,
              //                     width: scrrenWidth * 45,
              //                   )),
              //                   Expanded(
              //                       child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.start,
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       RotationTransition(
              //                         turns: const AlwaysStoppedAnimation(35 / 360),
              //                         child: Container(
              //                           width: 150,
              //                           height: 150,
              //                           alignment: Alignment.center,
              //                           decoration: const BoxDecoration(color: Colors.brown, shape: BoxShape.circle),
              //                           child: Padding(
              //                             padding: const EdgeInsets.fromLTRB(12, 8.0, 8, 6),
              //                             child: Text(
              //                               'Seamlessly Scale your Team :-)',
              //                               style: GoogleFonts.playfair(
              //                                 textStyle: Theme.of(context).textTheme.displayLarge,
              //                                 fontSize: 18,
              //                                 fontWeight: FontWeight.w300,
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                         "JENEVA, a leader in data processing solutions since 2002, offers a complete suite of outsourcing solutions.",
              //                         style: GoogleFonts.headlandOne(
              //                           letterSpacing: 2,
              //                           textStyle: Theme.of(context).textTheme.displayLarge,
              //                           fontSize: 35,
              //                           fontWeight: FontWeight.w700,
              //                         ),
              //                       ),
              //                       const SizedBox(height: 20),
              //                       Text(
              //                         "We are the first BPO that combines AI technology with fully integrated human support to help firms of all sizes work faster, smarter, and cheaper  leveraging US-based project management and global production teams.",
              //                         style: GoogleFonts.playfair(
              //                           letterSpacing: 1.3,
              //                           textStyle: Theme.of(context).textTheme.displayLarge,
              //                           fontSize: 18,
              //                           fontWeight: FontWeight.w300,
              //                         ),
              //                       ),
              //                       SizedBox(
              //                         height: scrrenHeight * 0.052,
              //                       ),
              //                       Text(
              //                         "Our goal is to keep your costs low, quality high, and customers satisfied.",
              //                         style: GoogleFonts.playfair(
              //                           letterSpacing: 1.5,
              //                           textStyle: Theme.of(context).textTheme.displayLarge,
              //                           fontSize: 22,
              //                           fontWeight: FontWeight.w400,
              //                         ),
              //                       ),
              //                     ],
              //                   )),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         height: 30,
              //       ),
              //       Container(
              //         decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              //         width: scrrenWidth * 0.53,
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: TextAnimator(
              //             'Our dedicated team seamlessly integrates with your business so you can scale with confidence.',
              //             atRestEffect: WidgetRestingEffects.wave(),
              //             style: GoogleFonts.headlandOne(
              //               textStyle: Theme.of(context).textTheme.displayLarge,
              //               fontSize: 35,
              //               fontWeight: FontWeight.w700,
              //             ),
              //           ),
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 30,
              //       ),
              //       Container(
              //         width: scrrenWidth * 0.64,
              //         alignment: Alignment.center,
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Container(
              //               height: scrrenHeight * 0.3,
              //               width: scrrenWidth * 0.4,
              //               decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
              //               child: Padding(
              //                 padding: const EdgeInsets.all(18.0),
              //                 child: Column(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   crossAxisAlignment: CrossAxisAlignment.center,
              //                   children: [
              //                     Text("From our Partners",
              //                         style: GoogleFonts.playfair(
              //                           textStyle: Theme.of(context).textTheme.displayLarge,
              //                           color: Colors.black,
              //                           fontSize: 20,
              //                           fontWeight: FontWeight.w700,
              //                         )),
              //                     const SizedBox(
              //                       height: 20,
              //                     ),
              //                     Text(
              //                         "I would not work with any other service provider. The best part of working with TechSpeed is they provide you with flexibility. My advice for anyone considering TechSpeed is pretty straightforward. Do it.",
              //                         style: GoogleFonts.playfair(
              //                           textStyle: Theme.of(context).textTheme.displayLarge,
              //                           fontSize: 18,
              //                           color: ColorsSheet.writecontent,
              //                           fontWeight: FontWeight.w500,
              //                         )),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               height: scrrenHeight * 0.23,
              //               width: scrrenWidth * 0.24,
              //               decoration: BoxDecoration(color: Colors.green.withOpacity(0.5), borderRadius: BorderRadius.circular(15)),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   InkWell(
              //                     onTap: () {
              //                       setState(() {
              //                         _controller.value.isPlaying ? _controller.pause() : _controller.play();
              //                       });
              //                     },
              //                     child: Icon(
              //                       _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              //                       color: themeNotifier.isDark ? Colors.white : Colors.black,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: scrrenHeight * 0.19,
              //                     width: scrrenWidth * 0.2,
              //                     child: _controller.value.isInitialized
              //                         ? AspectRatio(
              //                             aspectRatio: _controller.value.aspectRatio,
              //                             child: VideoPlayer(_controller),
              //                           )
              //                         : Container(),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 30,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildStepColumn(BuildContext context, double scrrenWidth, String year, String title, bool dark) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            width: scrrenWidth * 0.3,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.abc, color: Colors.teal),
                ),
                const SizedBox(width: 8),
                Text(
                  year,
                  style: const TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: scrrenWidth * 0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(2, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                title,
                style: GoogleFonts.playfair(
                  color: ColorsSheet.writecontent,
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
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
          style: const TextStyle(fontSize: 12),
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        Container(
          width: isCenter ? 200 : 120,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
