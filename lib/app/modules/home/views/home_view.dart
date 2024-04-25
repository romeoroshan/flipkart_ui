// ignore_for_file: prefer_const_constructors

import 'package:flipkart_ui/app/modules/home/views/cashback_view.dart';
import 'package:flipkart_ui/app/modules/home/views/options_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    double sWidth=screenSize.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 15,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          currentIndex: 3,
          fixedColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: "Category"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          ]),
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey! Varun Raj",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.outbox,
                  color: Color.fromARGB(255, 246, 223, 23),
                  size: 16,
                ),
                Text(
                  "Plus",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      color: Color.fromARGB(255, 13, 1, 147)),
                ),
                Text(
                  " member >",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 246, 223, 23),
                      ),
                      Text("62")
                    ],
                  ),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                OptionsView(
                  title1: "Orders",
                  icon1: Icons.payment,
                ),
                OptionsView(
                  title1: "Wishlist",
                  icon1: Icons.add_a_photo,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                OptionsView(
                  title1: "Coupons",
                  icon1: Icons.abc,
                ),
                OptionsView(
                  title1: "Help Center",
                  icon1: Icons.ac_unit,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 5,
              color: Color.fromARGB(255, 228, 228, 228),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                    Icons.contact_mail,
                    size: 45,
                    color: Colors.orange,
                  ),
                  title: Text(
                        "Add/Verify your email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: sWidth*0.04),
                      ),
                  subtitle: Text("Get the latest update of your order"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 13, 1, 147)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    child: Text("Update"),
                  ),
              )
            ),
            Container(
              height: 5,
              color: Color.fromARGB(255, 228, 228, 228),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: const [
                  Text(
                    "Credit Options",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mobile_friendly,
                color: Color.fromARGB(255, 13, 1, 147),
                size: 28,
              ),
              title: Text("Personal Loan"),
              subtitle: Text(
                "Instant loan upto 5 lakh",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Color.fromARGB(255, 13, 1, 147),
                size: 28,
              ),
              title: Text("Flipkart Axis Bank Credit Card"),
              subtitle: Text(
                "Apply & enter the world of unlimited benefits!",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Color.fromARGB(255, 13, 1, 147),
                size: 28,
              ),
              title: Text("Flipkart Pay Later"),
              subtitle: Text(
                "Get 20000 worth Times Prime benefits!",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Container(
              height: 5,
              color: Color.fromARGB(255, 228, 228, 228),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: const [
                  Text(
                    "Credit Score",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
                color: Color.fromARGB(255, 13, 1, 147),
                size: 28,
              ),
              title: Text("Check my credit score"),
              subtitle: Text(
                "Free score check. Personalized loan offers",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Container(
              height: 5,
              color: Color.fromARGB(255, 228, 228, 228),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: const[
                  Text(
                    "Featured Offerings",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CashbackView(
                  url:
                      "https://png.pngtree.com/png-vector/20220621/ourmid/pngtree-logo-concept-cashback-blue-banner-with-cashback-offer-on-white-backdrop-vector-png-image_47196810.jpg",
                  title: "Monthly Credit",
                  desc: "Start Now",
                ),
                CashbackView(
                  url:
                      "https://png.pngtree.com/png-clipart/20210818/ourmid/pngtree-e-commerce-promotional-cashback-activities-neon-lights-png-image_3812888.jpg",
                  title: "Monthly Credit",
                  desc: "Start Now",
                ),
                CashbackView(
                  url:
                      "https://png.pngtree.com/png-clipart/20230921/original/pngtree-logo-concept-cashbackblue-banner-on-a-white-background-vector-png-image_12721101.png",
                  title: "Monthly Credit",
                  desc: "Start Now",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
