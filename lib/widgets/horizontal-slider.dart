// import 'package:audacity_demo/common/common.dart';
// import 'package:flutter/material.dart';

// class HorizontalSlider extends StatelessWidget {
//   final String title;
//   final String imgUrl;
//   final double width;
//   final String type;

//   HorizontalSlider(this.title, this.imgUrl,
//       {this.type = "none", this.width = 2.3});

//   @override
//   Widget build(BuildContext context) {
//     Color color = type == "video" ? Color(0xFF0c2b57) : Colors.black;
//     return Container(
//       margin: EdgeInsets.only(top: 5, bottom: 5, right: 15),
//       width: (MediaQuery.of(context).size.width / width) - 20,
//       color: color,
//       child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             getWidget(),
//             Container(height: 5),
//             Container(
//                 alignment: Alignment.center,
//                 padding:
//                     EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
//                 child: Text(
//                   this.title,
//                   maxLines: 2,
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ))
//           ]),
//     );
//   }

//   getVideoTypeWidget() {
//     return Align(
//         alignment: Alignment.centerLeft,
//         child: Stack(children: <Widget>[
//           Container(
//             height: 115,
//             child: FittedBox(fit: BoxFit.fill, child: Common.getImage(imgUrl)),
//           ),
//           Positioned(
//               right: 5,
//               bottom: 5,
//               child: Icon(
//                 Icons.play_circle_filled,
//                 color: Colors.redAccent,
//                 size: 25,
//               ))
//         ]));
//   }

//   getNormalWidget() {
//     return Container(
//       height: 115,
//       child: FittedBox(fit: BoxFit.fill, child: Common.getImage(imgUrl)),
//     );
//   }

//   getNormaPictureTypeWidget() {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: Common.getImage(imgUrl),
//     );
//   }

//   getWidget() {
//     switch (type) {
//       case "picture":
//         return getNormaPictureTypeWidget();
//         break;

//       case "video":
//         return getVideoTypeWidget();
//         break;
//       default:
//         return getNormalWidget();
//     }
//   }
// }

// class HorizontalSliderPicker extends StatelessWidget {
//   final String title;
//   final posts;
//   final type;
//   final double width;
//   final Function onClick;
//   HorizontalSliderPicker(this.title, this.posts, this.onClick,
//       {this.type: "none", this.width: 2.2});

//   @override
//   Widget build(BuildContext context) {
//     return posts != null
//         ? Container(
//             height: 230,
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Expanded(
//                     child: Container(
//                       height: 200,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         itemExtent:
//                             (MediaQuery.of(context).size.width / width) - 20,
//                         children: this
//                             .posts
//                             .map<Widget>(
//                               (post) => InkWell(
//                                   onTap: () => onClick(post),
//                                   child: HorizontalSlider(
//                                       post["title"], post["featured_image"],
//                                       type: type, width: width)),
//                             )
//                             .toList(),
//                       ),
//                     ),
//                   )
//                 ]),
//           )
//         : Container();
//   }
// }
