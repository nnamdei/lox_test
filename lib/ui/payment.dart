import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/ui/appointment/appointment_success.dart';
import 'package:lox/utils/colors.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  Item? selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Mastercard',
        Icon(
          Icons.credit_card,
          color: AppColors.color2,
        )),
    const Item(
        'Visa Card',
        Icon(
          Icons.credit_card,
          color: AppColors.color2,
        )),

  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.arrow_back,
                            size: 16,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Payment method'),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: AppColors.color7,
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: DropdownButton<Item>(
                              focusColor: AppColors.color7,
                              isDense: true,
                              // iconEnabledColor: AppColors.color7,
                              hint: Row(
                                children: <Widget>[
                                  Icon(Icons.credit_card),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Credit/Debit card',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                ],
                              ),
                              value: selectedUser,
                              isExpanded: true,
                              onChanged: (value) {
                                setState(() {
                                  selectedUser = value;
                                });
                              },
                              items: users.map((Item user) {
                                return DropdownMenuItem<Item>(
                                  value: user,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: <Widget>[
                                        user.icon,
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          user.name,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        children: [
                          Text(
                            'Order',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.edit,
                            size: 12,
                            color: AppColors.color2,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text('Edit',
                              style: TextStyle(
                                  color: AppColors.color2,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Nurse'), Text('Quantity')],
                      ),
                    ),
                        SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Divider(height: 0.2, color: Colors.grey),
                    ),
                        SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Seun Olumide'),
                              Text('\$250'),
                            ],
                          ),
                          Text('1')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Divider(height: 0.2, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Total'), Text('\$280.00')],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AppointmentList()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16),
                        child: DottedBorder(
                          color: Colors.black, //color of dotted/dash line
                          strokeWidth: 2, //thickness of dash/dots
                          dashPattern: [1, 3],
                          //dash patterns, 10 is dash width, 6 is space width
                          child: Container(
                              //inner container
                              height: 48, //height of inner container
                              // width:
                              //     double.infinity, //width to 100% match to parent container.
                              // color: Colors.yellow,
                              child: Center(
                                child: Text(
                                  'Discount code',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              )), //background color of inner container
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: GestureDetector(
                        onTap: (){
                                                  Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => AppointmentSuccess()));
                        },
                        child: Container(
                          decoration: BoxDecoration(color: AppColors.color2),
                          height: 48,
                          child: Center(
                              child: Text(
                            'PAY',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  void popupButtonSelected(String? value) {}
}
