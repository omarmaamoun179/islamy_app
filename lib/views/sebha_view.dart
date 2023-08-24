import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  double angel = 0;
  int count = 0;
  int index = 0;
  List<String> tsbehat = ['سبحان الله', 'الحمد لله', 'الله أكبر'];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: h * .4,
          width: w,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: w * .48,
                top: h * .05,
                child: Image.asset(
                  'assets/images/head of seb7a.png',
                ),
              ),
              Positioned(
                top: h * .15,
                left: w * .29,
                child: Transform.rotate(
                  angle: angel,
                  child: Image.asset(
                    'assets/images/body of seb7a.png',
                    height: h * .22,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: h * .05,
        ),
        Container(
          alignment: Alignment.center,
          height: h * .08,
          width: w * .15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffD0BC9F),
          ),
          child: Text(
            count.toString(),
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSansArabic(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: h * .05,
        ),
        ElevatedButton(
            onPressed: () {
              count++;
              setState(() {});
              _rotate();
              ChangeTasbeh();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffB7935F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text(
              tsbehat[index],
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
      ],
    );
  }

  void _rotate() {
    setState(() {
      angel += 0.1;
    });
  }

  void ChangeTasbeh() {
    if (count == 34) {
      tsbehat[index++];
      count = 0;
    } if(index > 2){
      index = 0;
    }
    
  }
}
