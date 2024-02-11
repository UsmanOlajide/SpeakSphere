import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speaksphere/widgets/app_route.dart';
import 'package:speaksphere/widgets/constants.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 33,
        // width: 303,
        decoration: BoxDecoration(
          border: Border.all(color: greyBorder),
          borderRadius: BorderRadius.circular(10),
        ),
        //* work stack ---------------------------------------
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/homescreen/flag.svg'),
                  const SizedBox(width: 4),
                  SvgPicture.asset('assets/droparrow.svg'),
                ],
              ),
              const SizedBox(width: 34),
              InkWell(
                onTap: () =>
                    GoRouter.of(context).pushNamed(AppRoute.streak.name),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/homescreen/flames.svg'),
                    const SizedBox(width: 3),
                    Text(
                      '2',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(101, 12, 1, 1),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 47.9),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/homescreen/goal.svg',
                    height: 13.0,
                    width: 13.0,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '17',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(101, 12, 1, 1),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 85),
              Row(
                children: [
                  SvgPicture.asset('assets/homescreen/notification.svg'),
                  const SizedBox(width: 3),
                ],
              ),
              // const SizedBox(width: ),
            ],
          ),
        ),
      ),
    );
  }
}
