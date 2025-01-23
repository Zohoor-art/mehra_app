import 'package:flutter/material.dart';
import 'package:mehra_app/modules/notifications/NotificationItem.dart';
import 'package:mehra_app/shared/components/constants.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xffFAF5FF),
        appBar: AppBar(
          toolbarHeight: 15,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  MyColor.blueColor,
                  MyColor.purpleColor,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10), // مسافة فوق الكارد الجديد
            Card(
              elevation: 5, // تعيين الظل
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // زوايا مدورة
              ),
              child: Container(
                width: 399, // العرض المطلوب
                height: 52, //
                decoration: BoxDecoration(
                  color: Colors.white, // لون الخلفية
                  borderRadius: BorderRadius.circular(10), // زوايا مدورة
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: MyColor.blueColor),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'الاشعارات',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 12, 12, 12),
                        fontSize: 25,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      size: 22,
                      color: MyColor.blueColor,
                    ),
                  ],
                ),
              ),
            ),
            // قائمة الإشعارات تحت الكارد
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  NotificationItem(
                    username: 'سارة',
                    action: 'علق على قصتك',
                    time: 'قبل 10 دقائق',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  NotificationItem(
                    username: 'محمد',
                    action: 'بدأ متابعتك',
                    time: 'قبل 15 دقيقة',
                    avatarUrl:
                        'assets/images/2.jpg',
                  ),
                  NotificationItem(
                    username: 'ليلى',
                    action: 'أعجب بتعليقك',
                    time: 'قبل 30 دقيقة',
                    avatarUrl:
                        'assets/images/3.jpg',
                  ),
                  NotificationItem(
                    username: 'أحمد',
                    action: 'أعجب بصورة لك',
                    time: 'قبل 5 دقائق',
                    avatarUrl:
                        'assets/images/4.jpg',
                  ),
                  NotificationItem(
                    username: 'سارة',
                    action: 'علق على قصتك',
                    time: 'قبل 10 دقائق',
                    avatarUrl:
                        'assets/images/5.jpg',
                  ),
                  NotificationItem(
                    username: 'محمد',
                    action: 'بدأ متابعتك',
                    time: 'قبل 15 دقيقة',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  NotificationItem(
                    username: 'ليلى',
                    action: 'أعجب بتعليقك',
                    time: 'قبل 30 دقيقة',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  NotificationItem(
                    username: 'أحمد',
                    action: 'أعجب بصورة لك',
                    time: 'قبل 5 دقائق',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  NotificationItem(
                    username: 'سارة',
                    action: 'علق على قصتك',
                    time: 'قبل 10 دقائق',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  NotificationItem(
                    username: 'محمد',
                    action: 'بدأ متابعتك',
                    time: 'قبل 15 دقيقة',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  NotificationItem(
                    username: 'ليلى',
                    action: 'أعجب بتعليقك',
                    time: 'قبل 30 دقيقة',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  NotificationItem(
                    username: 'أحمد',
                    action: 'أعجب بصورة لك',
                    time: 'قبل 5 دقائق',
                    avatarUrl:
                        'assets/images/1.jpg',
                  ),
                  // يمكنك إضافة المزيد من العناصر هنا
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}
