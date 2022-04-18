import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class myDrawer extends StatelessWidget {
  const myDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                child: Image.network("https://instagram.fblr1-4.fna.fbcdn.net/v/t51.2885-19/278394302_5242943052395177_444422780608796714_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fblr1-4.fna.fbcdn.net&_nc_cat=105&_nc_ohc=TEBOsJXr03YAX84XRgr&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT-g2Tt7IZcb833d41oKFOpZTypXSPPPjSpuewv2KsV6Kg&oe=62655A65&_nc_sid=7bff83"),
              ),
              accountName: Text("Aditya Verma"),
               accountEmail: Text("toaditya07@gmail.com",
               
               )
               )
               ),
               ListTile(
                 leading: Icon(CupertinoIcons.home,color: Colors.white,),
                 title: Text("Home",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                   
                 ),),
               ),
                ListTile(
                 leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                 title: Text("Profile",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                   
                 ),),
               ),
                ListTile(
                 leading: Icon(CupertinoIcons.tickets_fill,color: Colors.white,),
                 title: Text("Book Tickets",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                   
                 ),),
               )

          ],
        ),
      ),
      
    );
  }
}
