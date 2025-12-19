import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch_store/Models/WatchModel.dart';
import 'package:watch_store/Pages/DetailProduct.dart';
import 'package:watch_store/Widgets/CustomCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int selectIndex = -1;

List<String> watchs = ['Smart watch', 'Casio', 'Tissot', 'Seiko'];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/filerAppbar.png', width: 30),
              Gap(20),
              Container(
                width: 198,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 1.5),
                ),
                child: Row(
                  children: [
                    Gap(10),
                    Image.asset('assets/icon_search.png', width: 22),
                    Gap(10),
                    Text(
                      'Search Product',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Gap(25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Find your suitable\nwatch now.',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
            ),
          ),

          Gap(15),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: watchs.length,
                separatorBuilder: (_, __) => Gap(20),
                itemBuilder: (context, index) {
                  bool isSelect = index == selectIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          watchs[index],
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              fontSize: 18,
                              color: isSelect
                                  ? Color(0xffF24E1E)
                                  : Color(0xff9095A6),
                            ),
                          ),
                        ),

                        if (isSelect)
                          Container(
                            width: 40,
                            height: 2.3,
                            color: Color(0xffF24E1E),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Gap(20),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemCount: watchItem.length,
                itemBuilder: (context, index) {
                  final item = watchItem[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => DetailProduct(
                            image: item.image,
                            title: item.title,
                            price: item.price,
                          ),
                        ),
                      );
                    },
                    child: CustomCard(
                      image: item.image,
                      title: item.title,
                      subtitle: item.subtitle,
                      price: item.price,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
