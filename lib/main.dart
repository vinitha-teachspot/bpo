// import 'package:bp/particle.dart';
// ignore_for_file: deprecated_member_use, library_prefixes

import 'package:bpoo/constant/colorsSheet.dart';
import 'package:bpoo/pages.dart';
import 'package:bpoo/service/service.dart';
import 'package:bpoo/utility/appcolour.dart';
import 'package:bpoo/utility/apppadding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'Cubit/page_change_index/page_change_cubit.dart';
import 'pages/about_us.dart';
import 'constant/shared_preference.dart';
import 'pages/contact_us.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void setLocale(Locale locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(
        builder: (context, ThemeModel themeNotifier, child) {
          return BlocProvider(
            create: (context) => PageChangeCubit(),
            child: MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeClass.lightTheme,
              home: const MyHomePage(
                title: 'BPO',
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void hover() {
    Container(
      color: Colors.cyan,
      height: 250,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Future<void> _launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': 'Hello!',
        'body': 'How are you?',
      },
    );

    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      final Uri chromeUri = Uri.parse('https://mail.google.com');
      if (await canLaunch(chromeUri.toString())) {
        await launch(chromeUri.toString());
      } else {
        throw 'Could not open email client or web mail';
      }
    }
  }

  Future<void> _launchPhoneDialer(String phoneNumber) async {
    final Uri phoneUri = Uri(
      scheme: 'tel', // This is the URI scheme for phone calls
      path: phoneNumber, // The phone number to dial
    );

    if (await canLaunch(phoneUri.toString())) {
      // If the phone dialer can be launched, open it with the phone number
      await launch(phoneUri.toString());
    } else {
      // Handle error if the dialer cannot be launched (although it should be available on most devices)
      throw 'Could not open phone dialer';
    }
  }

  Future<void> _launchWhatsApp(String phoneNumber) async {
    final String url = 'https://wa.me/$phoneNumber'; // WhatsApp link format

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not open WhatsApp';
    }
  }

  Future<void> _launchMap(double latitude, double longitude) async {
    final Uri mapUri = Uri(
      scheme: 'geo',
      path: '$latitude,$longitude',
      queryParameters: {
        'q': '$latitude,$longitude',
      },
    );

    if (await canLaunch(mapUri.toString())) {
      await launch(mapUri.toString());
    } else {
      final Uri browserUri = Uri.parse('https://www.google.com/maps/search/?q=$latitude,$longitude');
      if (await canLaunch(browserUri.toString())) {
        await launch(browserUri.toString());
      } else {
        throw 'Could not open map app or web map';
      }
    }
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

  final ScrollController _scrollController = ScrollController();
  bool _showAppBar = true;

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      if (_showAppBar) {
        setState(() {
          _showAppBar = false;
        });
      }
    } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      if (!_showAppBar) {
        setState(() {
          _showAppBar = true;
        });
      }
    }
  }

  String activeTab = "";

  @override
  Widget build(BuildContext context) {
    double scrrenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
        body: CustomScrollView(controller: _scrollController, slivers: [
          if (_showAppBar)
            SliverAppBar(
                expandedHeight: 130.0,
                floating: true,
                pinned: true,
                snap: true,
                toolbarHeight: MediaQuery.of(context).size.height / 8,
                leading: Container(),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.vertical(
                    bottom: new Radius.elliptical(screenWidth, 22.0),
                  ),
                ),
                flexibleSpace: Container(
                  decoration: const BoxDecoration(),
                  child: FlexibleSpaceBar(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          height: scrrenHeight * 0.10,
                        ),
                        BlocBuilder<PageChangeCubit, PageChangeState>(
                          builder: (context, pagestate) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8.0, 30, 0, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          // Home Button
                                          MouseRegion(
                                            onEnter: (event) {
                                              // setState(() {
                                              //   activeTab = "Home";
                                              // });
                                              // context.read<PageChangeCubit>().home();
                                            },
                                            child: _buildTab(
                                              context: context,
                                              label: "Home",
                                              isActive: activeTab == "Home",
                                              onTap: () {
                                                setState(() {
                                                  activeTab = "Home";
                                                });
                                                context.read<PageChangeCubit>().home();
                                              },
                                            ),
                                          ),
                                          // About Us Button
                                          MouseRegion(
                                            onEnter: (event) {
                                              // setState(() {
                                              //   activeTab = "About Us";
                                              // });
                                              // context.read<PageChangeCubit>().aboutUss();
                                            },
                                            child: _buildTab(
                                              context: context,
                                              label: "About Us",
                                              isActive: activeTab == "About Us",
                                              onTap: () {
                                                setState(() {
                                                  activeTab = "About Us";
                                                });
                                                context.read<PageChangeCubit>().aboutUss();
                                              },
                                            ),
                                          ),
                                          // Services Button with MouseRegion for hover
                                          MouseRegion(
                                            // onEnter: (event) {
                                            //   setState(() {
                                            //     activeTab = "Services"; // Optional for hover state
                                            //   });
                                            //   _showPopupMenu(context, event.position);
                                            // },
                                            child: GestureDetector(
                                              onTapDown: (details) {
                                                setState(() {
                                                  activeTab = "Services"; // Optional for hover state
                                                });
                                                _showPopupMenu(context, details.globalPosition);
                                              },
                                              child: _buildTab(
                                                context: context,
                                                label: "Services",
                                                isActive: activeTab == "Services",
                                                onTap: () {},
                                              ),
                                            ),
                                          ),
                                          // Contact Us Button
                                          MouseRegion(
                                            onEnter: (event) {
                                              // setState(() {
                                              //   activeTab = "Contact Us";
                                              // });
                                              // context.read<PageChangeCubit>().ContactUSS();
                                            },
                                            child: _buildTab(
                                              context: context,
                                              label: "Contact Us",
                                              isActive: activeTab == "Contact Us",
                                              onTap: () {
                                                setState(() {
                                                  activeTab = "Contact Us";
                                                });
                                                context.read<PageChangeCubit>().ContactUSS();
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    BlocBuilder<PageChangeCubit, PageChangeState>(
                      builder: (context, pagestate) {
                        if (pagestate is Pageservicess) {
                          return service(index: pagestate.indexes);
                        }
                        if (pagestate is PagePagess) {
                          return const pages();
                        }
                        if (pagestate is PageContactUSS) {
                          return const ContactUs();
                        }
                        if (pagestate is PageChangeaboutUss) {
                          return const aboutUs();
                        }
                        if (pagestate is PageChangeInitial) {
                          return homePage();
                        }
                        if (pagestate is PageChangehome) {
                          return homePage(move: pagestate.moves);
                        }
                        return Container();
                      },
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 56,
                        ),
                        Container(
                          color: themeNotifier.isDark ? Colors.blue.withOpacity(0.2) : Colors.grey.shade100,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/logo.png',
                                    height: MediaQuery.of(context).size.height * 0.2,
                                    width: 200,
                                  )
                                      .animate(onPlay: (controller) => controller.repeat())
                                      .shimmer(color: themeNotifier.isDark ? Colors.yellow : Colors.red, duration: const Duration(milliseconds: 3000)),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              _buildTextTitle('Services', context, themeNotifier.isDark),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().servicess(index: 1);
                                                  },
                                                  child: _buildText('Health care', context)),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().servicess(index: 5);
                                                  },
                                                  child: _buildText('Customer Service & Support', context)),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().servicess(index: 4);
                                                  },
                                                  child: _buildText('Technical IT & Non IT Support', context)),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().servicess(index: 2);
                                                  },
                                                  child: _buildText('HR Recruitment & Service', context)),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().servicess(index: 3);
                                                  },
                                                  child: _buildText('Marketing & Sales', context)),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              _buildTextTitle('Company', context, themeNotifier.isDark),
                                              GestureDetector(
                                                onTap: () {
                                                  context.read<PageChangeCubit>().aboutUss();
                                                },
                                                child: _buildText('About us', context),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().home(move: "whoweare");
                                                  },
                                                  child: _buildText('Who we are', context)),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().home(move: "companyjourney");
                                                  },
                                                  child: _buildText('Our story', context)),
                                              InkWell(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().home(move: "ourservice");
                                                  },
                                                  child: _buildText('Our services', context)),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              _buildTextTitle('Support', context, themeNotifier.isDark),
                                              GestureDetector(
                                                  onTap: () {
                                                    context.read<PageChangeCubit>().ContactUSS();
                                                  },
                                                  child: _buildText('Contact Us', context)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _launchEmail('Jenaviinfotechsolutions@gmail.com');
                                    },
                                    child: _buildSocialIcon('assets/gmail.png'),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: _buildSocialIcon('assets/linkedin.png'),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: _buildSocialIcon('assets/instagram.png'),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _launchPhoneDialer('7598620991');
                                    },
                                    child: _buildSocialIcon('assets/telephone.png'),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _launchWhatsApp('6383221149');
                                    },
                                    child: _buildSocialIcon('assets/whatsapp.png'),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        _launchMap(11.020407, 77.020233);
                                      },
                                      child: _buildSocialIcon('assets/maps.png')),
                                ],
                              ),
                              const SizedBox(
                                height: 6,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            childCount: 1,
          )),
        ]),
      );
    });
  }

  void _showPopupMenu(BuildContext context, Offset position) async {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy,
        overlay.size.width - position.dx,
        overlay.size.height - position.dy,
      ),
      items: [
        PopupMenuItem(
          value: 'Option 1',
          child: InkWell(
              onTap: () {
                context.read<PageChangeCubit>().servicess(index: 0);
              },
              child: const Text('BPO and IT Services')),
        ),
        PopupMenuItem(
          value: 'Option 2',
          child: InkWell(
              onTap: () {
                context.read<PageChangeCubit>().servicess(index: 1);
              },
              child: const Text('Health Care')),
        ),
        PopupMenuItem(
          value: 'Option 3',
          child: InkWell(
              onTap: () {
                context.read<PageChangeCubit>().servicess(index: 2);
              },
              child: const Text('HR Recruitment & Service')),
        ),
        PopupMenuItem(
          value: 'Option 4',
          child: InkWell(
              onTap: () {
                context.read<PageChangeCubit>().servicess(index: 3);
              },
              child: const Text('Marketing & Sales')),
        ),
        PopupMenuItem(
          value: 'Option 5',
          child: InkWell(
              onTap: () {
                context.read<PageChangeCubit>().servicess(index: 4);
              },
              child: const Text('Technical IT & Non IT Support')),
        ),
        PopupMenuItem(
          value: 'Option 5',
          child: InkWell(
              onTap: () {
                context.read<PageChangeCubit>().servicess(index: 5);
              },
              child: const Text('Customer Service & Support')),
        ),
      ],
    );
  }
}

Widget _buildTab({
  required BuildContext context,
  required String label,
  required bool isActive,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: GoogleFonts.playfair(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 12,
              color: isActive ? Colors.black : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: 2,
          width: isActive ? label.length * 8.0 : 0, // Adjust width dynamically based on text
          color: isActive ? primary : Colors.transparent,
        ),
      ],
    ),
  );
}

Widget _buildText(String text, BuildContext context) {
  return Text(
    text,
    style: GoogleFonts.playfair(
      textStyle: Theme.of(context).textTheme.bodyLarge,
      fontSize: 18,
      color: ColorsSheet.writecontent,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget _buildTextTitle(String title, BuildContext context, bool dark) {
  return Text(
    title,
    style: GoogleFonts.playfair(
      textStyle: Theme.of(context).textTheme.bodyLarge,
      fontSize: 20,
      color: dark ? Colors.white : Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _buildSocialIcon(String assetPath) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Image.asset(
      assetPath,
      width: 30,
      height: 30,
    ),
  );
}
