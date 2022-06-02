import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        'Android',
        Icon(
          Icons.android,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Flutter',
        Icon(
          Icons.flag,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'ReactNative',
        Icon(
          Icons.format_indent_decrease,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'iOS',
        Icon(
          Icons.mobile_screen_share,
          color: const Color(0xFF167F67),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: DropdownButton<Item>(
                        hint: Row(
                          children: <Widget>[
                            Icon(Icons.credit_card),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Credit card',
                              style: TextStyle(color: Colors.black),
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
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        children: [
                          Text('Order'),
                          Spacer(),
                          Icon(Icons.edit),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text('Edit')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Nurse'), Text('Quantity')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Divider(height: 0.2, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Order'),
                              Text('\$250'),
                            ],
                          ),
                          Text('1')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Divider(height: 0.2, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Total'), Text('\$280.00')],
                      ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue),
                        height: 48,
                        child: Center(
                            child: Text(
                          'PAY',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  void popupButtonSelected(String? value) {}
}
