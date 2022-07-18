// import 'package:flutter/material.dart';
// class PopupPage extends StatefulWidget {
//   @override
//   State<PopupPage> createState() => _PopupPageState();
// }
// class _PopupPageState extends State<PopupPage> {
//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20)
//                     .copyWith(topRight: Radius.circular(0))),
//             padding: EdgeInsets.all(10),
//             elevation: 10,
//             color: Colors.black,
//             child: Container(
//               alignment: Alignment.center,
//               height: 45,
//               width: 45,
//               margin: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 // boxShadow: [BoxShadow(blurRadius: 4, color: Colors.green)],
//                   color: Colors.white,
//                   shape: BoxShape.circle),
//               child: Icon(
//                 Icons.tune,
//                 color: Colors.green,
//               ),
//             ),
//             itemBuilder: (context) {
//               return [
//                 PopupMenuItem(
//                     padding: EdgeInsets.only(right: 50, left: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//
//                       children: [
//                         Row(
//                           children: [
//                             Text('Item Builder',style: TextStyle(color: Colors.white),),
//                           ],
//                         ),
//                         Divider()
//                       ],
//                     )),
//                 PopupMenuItem(
//                     padding: EdgeInsets.only(right: 50, left: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               'Chats',
//                               style: TextStyle(
//                                   color: Colors.green,
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ],
//                         ),
//                         Divider()
//                       ],
//                     )),
//                 PopupMenuItem(
//                     padding: EdgeInsets.only(right: 50, left: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Text(
//                               'Sign out',
//                               style: TextStyle(
//                                   color: Colors.green,
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ],
//                         ),
//                         Divider(
//                           color: Colors.white,
//                           height: 29,
//                         )
//                       ],
//                     )),
//               ];
//             },
//           );
//
//   }
// }
import 'package:flutter/material.dart';
class PopUpMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopUpMenu({Key? key, required this.menuList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
    );
  }
}
