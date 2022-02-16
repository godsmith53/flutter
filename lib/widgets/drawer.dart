import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class myDrawer extends StatelessWidget {
  const myDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://instagram.fdel24-1.fna.fbcdn.net/v/t51.2885-19/274124219_313205064204222_7593770219055443378_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fdel24-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=Bx6M55zlRRMAX-GwB61&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT9qPA-rV0mRz6NwQG8eGD3sQWbdShPmn_vvyLSLRj83og&oe=62143534&_nc_sid=7bff83";
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
                backgroundImage: NetworkImage(imageUrl),
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
