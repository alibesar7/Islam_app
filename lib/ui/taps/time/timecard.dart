import 'package:flutter/material.dart';
import '../../../utils/Appcolors.dart';

class Timecard extends StatelessWidget {
    Timecard({super.key});
  final List<Map<String, String>> prayerTimes = [
    {'name': 'Fajr', 'time': '03:52', 'period': 'AM'},
    {'name': 'Dhuhr', 'time': '12:01', 'period': 'PM'},
    {'name': 'Asr', 'time': '03:38', 'period': 'PM'},
    {'name': 'Maghrib', 'time': '06:59', 'period': 'PM'},
    {'name': 'Isha', 'time': '08:25', 'period': 'PM'},
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .3,
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            // Top Date Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '16 Jul,',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Pray Time',
                  style: TextStyle(
                    color: AppColors.black .withOpacity(0.7),
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '09 Muh,',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2024',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Tuesday',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1446',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: size.height * .02),

            Expanded(
              child:  PageView.builder(
                itemCount: prayerTimes.length,
                controller: PageController(viewportFraction: .3, initialPage: 2),
                itemBuilder: (context, index) {
                  final prayer = prayerTimes[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.blackappbarbg ,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            prayer['name']!,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            prayer['time']!,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            prayer['period']!,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: size.height * .04),

            // Bottom Row: Next Prayer
            Row(
              children: [
                SizedBox(width: size.width * .2),
                Text(
                  'Next Pray - 02:32',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.volume_off),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
