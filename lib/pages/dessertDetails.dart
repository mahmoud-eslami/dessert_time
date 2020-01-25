import 'package:dessert_time/resource/colors.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.detailsBkColor,
      body:
//      CustomScrollView(
//        slivers: <Widget>[
//          SliverAppBar(
//            pinned: true,
//            backgroundColor: AppColor.detailsBkColor,
//            expandedHeight: 300,
//            flexibleSpace: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text('IRAN'),
//                Text('NAME'),
//                Text('asdasdasdasdasdasd'),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    IconButton(icon: Icon(Icons.favorite), onPressed: (){},color: Colors.red,),
//                    IconButton(icon: Text('Find Nearest store'), onPressed: (){}),
//                  ],
//                )
//              ],
//            ),
//            title: Center(
//                child: Text(
//              'Product Detail',
//              style: TextStyle(
//                  color: Colors.black,
//                  fontSize: 12,
//                  fontWeight: FontWeight.w900),
//            )),
//            leading: IconButton(
//              icon: Icon(
//                Icons.keyboard_backspace,
//                color: AppColor.detailsIconColor,
//              ),
//              onPressed: () {
//                Navigator.pop(context);
//              },
//            ),
//            actions: <Widget>[
//              IconButton(
//                icon: Icon(Icons.share),
//                onPressed: () {},
//                color: AppColor.detailsIconColor,
//              )
//            ],
//          ),
//          SliverList(
//            delegate:
//          ),
//        ],
//      ),
      SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace,
                      color: AppColor.detailsIconColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Text(
                  'Product Detail',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
                ),
                IconButton(
                    icon: Icon(Icons.share, color: AppColor.detailsIconColor),
                    onPressed: () {}),
              ],
            ),
                Expanded(
                  child: DraggableScrollableSheet(
                    minChildSize: 0.5,
                    maxChildSize: 0.8,
                    builder: (context, scrollController) {
                      return Container(
                        decoration: BoxDecoration(
                            color: AppColor.detailsDraggableSheetColor,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(35))),
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: 25,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(title: Text('Item $index'));
                          },
                        ),
                      );
                    },
                  ),
                )
          ],
        ),
      ),
    );
  }
}
