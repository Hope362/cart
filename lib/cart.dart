import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  List<String> list2 = [];

  List<Map<String, dynamic>> list = [
    {
      "image": "https://img.icons8.com/bubbles/2x/product.png",
      "name": "ayhaga2",
      "price": 50,
      "status": 1,
      "date": "2020-12-26"
    },
    {
      "image": "https://img.icons8.com/bubbles/2x/product.png",
      "name": "ayhaga3",
      "price": 20,
      "status": 1,
      "date": "2020-12-26"
    },
    {
      "image": "https://img.icons8.com/bubbles/2x/product.png",
      "name": "ayhaga4",
      "price": 40,
      "status": 0,
      "date": "2020-12-26"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
          child: Scaffold(
          appBar: AppBar(
            title: Text(
              'طلبات',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: ListView.builder(
              itemCount: list.length,
              itemBuilder: (cnontext, i) => Card(
                    child: ListTile(
                      leading: Image.network(list[i]['image']),
                      title: Text(list[i]['name']),
                      subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                        list[i]['status']==1?Text('متاح'):Text('غير متاح'),
                          Text(list[i]['date'])
                        ],
                      ) ,
                      trailing: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('ج.م${list[i]['price']}'),
                      ),

                    ),

                  ))),
    );
  }
}
