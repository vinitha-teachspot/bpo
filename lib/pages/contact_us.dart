// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:bpoo/constant/colorsSheet.dart';
import 'package:bpoo/utility/appcolour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant/shared_preference.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _NameController = TextEditingController();
  final _messageController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  bool? check4 = false;

  Color container1Color = Colors.white;
  Color container2Color = Colors.white;

  Future<void> send() async {
    final Email email = Email(
      body: _emailController.text,
      subject: _NameController.text,
      recipients: [_messageController.text],
      // attachmentPaths: attachments,
      // isHTML: isHTML,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
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
      // If an email client is available, launch it
      await launch(emailUri.toString());
    } else {
      // If no email client is available, open Chrome with a web-based email service
      final Uri chromeUri = Uri.parse('https://mail.google.com');
      if (await canLaunch(chromeUri.toString())) {
        await launch(chromeUri.toString());
      } else {
        // Handle error if neither can be launched
        throw 'Could not open email client or web mail';
      }
    }
  }

  Future<void> _launchWhatsApp(String phoneNumber) async {
    final String url = 'https://wa.me/$phoneNumber'; // WhatsApp link format

    if (await canLaunch(url)) {
      // If WhatsApp is available, launch it with the given phone number
      await launch(url);
    } else {
      // Handle error if WhatsApp cannot be launched
      throw 'Could not open WhatsApp';
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

  Future<void> _launchMap(double latitude, double longitude) async {
    final Uri mapUri = Uri(
      scheme: 'geo',
      path: '$latitude,$longitude',
      queryParameters: {
        'q': '$latitude,$longitude', // optional for search functionality
      },
    );

    if (await canLaunch(mapUri.toString())) {
      // If a map app is available (like Google Maps), launch it
      await launch(mapUri.toString());
    } else {
      // If no map app is available, open the map in Google Maps website
      final Uri browserUri = Uri.parse('https://www.google.com/maps/search/?q=$latitude,$longitude');
      if (await canLaunch(browserUri.toString())) {
        await launch(browserUri.toString());
      } else {
        // Handle error if neither can be launched
        throw 'Could not open map app or web map';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Consumer( builder: (context, ThemeModel themeNotifier, child){
      return SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Text(
              'Contact Us',
              style:  GoogleFonts.playfair(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 45,
                fontWeight: FontWeight.w500,
                // fontStyle: FontStyle.italic,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: screenHeight * 0.6,
                    width: screenWidth * 0.3,
                    child: Image.asset(
                      'assets/company_location.png',
                      fit: BoxFit.fill,
                      height: screenHeight * 0.40,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: screenHeight * 0.7,
                    //   width: screenWidth * 0.6,
                    decoration: BoxDecoration(
                      color:themeNotifier.isDark?Colors.grey.withOpacity(0.5): Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 6),
                            child: Text(
                              'We are here for you',
                              style:  GoogleFonts.playfair(
                                  textStyle: Theme.of(context).textTheme.displayLarge,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                // fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Wrap(
                                  spacing: 8.0, // Horizontal spacing between children
                                  runSpacing: 8.0, // Vertical spacing between rows
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width / 2 - 20, // Adjust width dynamically
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 239, 247, 250),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          cursorColor: Colors.black,
                                          controller: _NameController,
                                          decoration: InputDecoration(
                                            labelText: 'Name',

                                            labelStyle:  GoogleFonts.playfair(
                                              textStyle: Theme.of(context).textTheme.displayLarge,
                                              fontSize: 16,
                                              color:Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter your name';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width / 2 - 20, // Adjust width dynamically
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 239, 247, 250),
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          cursorColor: Colors.black,
                                          controller: _emailController,
                                          decoration: InputDecoration(
                                            labelText: 'Email',
                                            labelStyle:  GoogleFonts.playfair(
                                              textStyle: Theme.of(context).textTheme.displayLarge,
                                              fontSize: 16,
                                              color:Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                          keyboardType: TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter your email';
                                            } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                              return 'Please enter a valid email';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width / 2 - 20, // Adjust width dynamically
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 239, 247, 250),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        controller: _phoneNumberController,
                                        decoration: InputDecoration(
                                          labelText: 'Phone Number',
                                          labelStyle:  GoogleFonts.playfair(
                                            textStyle: Theme.of(context).textTheme.displayLarge,
                                            fontSize: 16,   color:Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.number,
                                        // validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return 'Please enter your email';
                                        //   } else if (!RegExp(r'\S+@\S+\.\S+')
                                        //       .hasMatch(value)) {
                                        //     return 'Please enter a valid Phone Number';
                                        //   }
                                        //   return null;
                                        // },
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 - 20, // Adjust width dynamically
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 239, 247, 250),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      controller: _messageController,
                                      decoration: InputDecoration(
                                        labelText: 'Message',
                                        labelStyle:  GoogleFonts.playfair(
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,   color:Colors.black,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      maxLines: 4,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your message';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Wrap(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text('Which describe your better?',
                                              style:  GoogleFonts.playfair(
                                                textStyle: Theme.of(context).textTheme.displayLarge,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Wrap(
                                              spacing: 10.0, // Horizontal spacing between elements
                                              runSpacing: 10.0, // Vertical spacing between rows
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Checkbox(
                                                        value: check1,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            check1 = value;
                                                          });
                                                        }),
                                                    Text('Customer',
                                                        style:  GoogleFonts.playfair(
                                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                        )),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Checkbox(
                                                        value: check2,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            check2 = value;
                                                          });
                                                        }),
                                                    Text('Employee',
                                                        style:  GoogleFonts.playfair(
                                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                        )),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Checkbox(
                                                        value: check3,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            check3 = value;
                                                          });
                                                        }),
                                                    Text('Franchise',
                                                        style:  GoogleFonts.playfair(
                                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                        )),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Checkbox(
                                                        value: check4,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            check4 = value;
                                                          });
                                                        }),
                                                    Text('Vendor',
                                                        style:  GoogleFonts.playfair(
                                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!.validate()) {
                                            send();
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: primary,
                                        ),
                                        child: Text(
                                          'Submit',
                                          style:  GoogleFonts.playfair(
                                            textStyle: Theme.of(context).textTheme.displayLarge,
                                            fontSize: 18,
                                            color:Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Hi! We are always here to help you ',
                style:  GoogleFonts.playfair(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                  // fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchEmail('Jenaviinfotechsolutions@gmail.com');
                        },
                        child: Container(
                          height: screenHeight * 0.2,
                          //width: screenWidth * 0.26, // Keep the width fixed or dynamic
                          decoration: BoxDecoration(
                            color: container1Color,
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
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  'assets/gmail.png',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                // Ensure text adjusts within available space
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email ',
                                        style:  GoogleFonts.playfair(
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 24,
                                          color:Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        'Jenaviinfotechsolutions@gmail.com',
                                        style:  GoogleFonts.playfair(
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 16,
                                          color:themeNotifier.isDark?ColorsSheet.writecontent:Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        softWrap: true, // Allow wrapping
                                        overflow: TextOverflow.ellipsis, // Truncate text if too long
                                      ),
                                    ],
                                  ),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: screenHeight * 0.2,
                        //  width: screenWidth * 0.26, // Keep the width fixed or dynamic
                        decoration: BoxDecoration(
                          color: container1Color,
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
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                'assets/linkedin.png',
                                width: 40.0,
                                height: 40.0,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              // Ensure text adjusts within available space
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'LinkedIn ',
                                      style:  GoogleFonts.playfair(
                                        textStyle: Theme.of(context).textTheme.displayLarge,
                                        fontSize: 24,color:Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      'https://www.linkedin.com/company/\njenavi-infotech-solutions',
                                      style:  GoogleFonts.playfair(
                                        textStyle: Theme.of(context).textTheme.displayLarge,
                                        fontSize: 16,
                                        color:themeNotifier.isDark?ColorsSheet.writecontent:Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      softWrap: true, // Allow wrapping
                                      overflow: TextOverflow.ellipsis, // Truncate text if too long
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    // Dynamically adjusts the width of the second container
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          color: container2Color,
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
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                'assets/instagram.png',
                                width: 40.0,
                                height: 40.0,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Instagram',
                                      style:  GoogleFonts.playfair(
                                        textStyle: Theme.of(context).textTheme.displayLarge,
                                        fontSize: 24,color:Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Flexible(
                                      child: Text(
                                        'https://www.instagram.com/jenaviinfotech',
                                        style:  GoogleFonts.playfair(
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 16,
                                          color:themeNotifier.isDark?ColorsSheet.writecontent:Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchPhoneDialer('7598620991');
                        },
                        child: Container(
                          height: screenHeight * 0.2,
                          //width: screenWidth * 0.26, // Keep the width fixed or dynamic
                          decoration: BoxDecoration(
                            color: container1Color,
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
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  'assets/telephone.png',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                // Ensure text adjusts within available space
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Contact ',
                                        style:  GoogleFonts.playfair(
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 24,color:Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        '91-7598620991',
                                        style: TextStyle(fontSize: 16, color:themeNotifier.isDark?ColorsSheet.writecontent:Colors.black,),
                                        softWrap: true, // Allow wrapping
                                        overflow: TextOverflow.ellipsis, // Truncate text if too long
                                      ),
                                    ],
                                  ),
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
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchWhatsApp('6383221149');
                        },
                        child: Container(
                          height: screenHeight * 0.2,
                          //  width: screenWidth * 0.26, // Keep the width fixed or dynamic
                          decoration: BoxDecoration(
                            color: container1Color,
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
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  'assets/whatsapp.png',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                // Ensure text adjusts within available space
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'WhatsApp',
                                        style:  GoogleFonts.playfair(
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 24,color:Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        '91-6383221149',
                                        style: TextStyle(fontSize: 16, color:themeNotifier.isDark?ColorsSheet.writecontent:Colors.black,),
                                        softWrap: true, // Allow wrapping
                                        overflow: TextOverflow.ellipsis, // Truncate text if too long
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    // Dynamically adjusts the width of the second container
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchMap(11.020407, 77.020233);
                        },
                        child: Container(
                          height: screenHeight * 0.2,
                          decoration: BoxDecoration(
                            color: container2Color,
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
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  'assets/maps.png',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ' Address',
                                        style:  GoogleFonts.playfair(
                                          textStyle: Theme.of(context).textTheme.displayLarge,
                                          fontSize: 24,color:Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Flexible(
                                        child: Text(
                                          '  21, sankar layout,\n  5th St, Hope College,\n  Coimbatore, Tamil Nadu 641004',
                                          style:  GoogleFonts.playfair(
                                            textStyle: Theme.of(context).textTheme.displayLarge,
                                            fontSize: 18,
                                            color:themeNotifier.isDark?ColorsSheet.writecontent:Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          softWrap: true,
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });

  }
}
