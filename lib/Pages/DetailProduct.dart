import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch_store/Widgets/CustomContainer.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key, required this.image, required this.title, required this.price});

   final String image;
   final String title;
   final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 40,
                icon: Icon(Icons.arrow_back),
              ),

              Image.asset('assets/heartAppbar.png', width: 30),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => Container(
                  width: double.infinity,
                  height: 385,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),

                  child: Column(
                    children: [
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text(
                          title,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Gap(8),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              '(With Solo Loop)',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          Gap(120),
                          Text(
                            price,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF24E1E),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(15),
                      Padding(
                        padding: const EdgeInsets.only(right: 240),
                        child: Text(
                          'Colors',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Gap(10),
                          CustomContainer(
                            text: 'Green/Grey',
                            colors: [Color(0xff225924), Color(0xffE1DFDF)],
                          ),
                          Gap(10),
                          CustomContainer(
                            text: 'Blue/Black',
                            colors: [Color(0xff0904E7), Color(0xff0B0A0A)],
                          ),
                          Gap(10),
                          CustomContainer(
                            text: 'Orange/Beige',
                            colors: [Color(0xff7B7A9D), Color(0xffC76000)],
                          ),
                        ],
                      ),
                      Gap(10),
                      Padding(
                        padding: const EdgeInsets.only(right: 240),
                        child: Text(
                          'Details ',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color : Color(0xffF24E1E),
                            ),
                          ),
                        ),
                      ),

                      Gap(10),

                      Text('Apple Watch Ultra 2integrates L1 and L5 GPS into an\n antenna design that provides greater range with\nincredible power efficiency. It combines data from both...' ,
                       style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                           color : Colors.grey,
                           fontSize: 11,
                         ),
                       ),
                      ),
                      Gap(12),
                      Container(
                        width: 248, height: 49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color :Color(0xffF24E1E),
                        ),
                        child: Center(child: Text('Add to cart' , style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color : Colors.white,
                          ),
                        ),)),
                      ),

                    ],
                  ),
                ),
              );
            },
            child: Image.asset(image),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
              Gap(15),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent,
                ),
              ),
              Gap(15),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
