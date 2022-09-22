
import 'package:flutter/material.dart';
import 'package:week4/home.dart/login.dart';


class logedscreen extends StatelessWidget {
  const logedscreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.amber[400],
    title: Center(child: Text('list of actors')),
  ),
  floatingActionButton: FloatingActionButton(onPressed: (){
   logout(context);
  },
  child:Icon(Icons.logout),
  
  ),

body:


 
     ListView(
     


      children:
        ListTile.divideTiles(
          context: context,
          tiles:
        
        [ 
        listtilewidget(name: "sahad", photourl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStJjg7fApMkC3QNEnTaE7kRCWqYmGsov07JfUzsAppHu8dUbwagqrr3lmZzN-0SsGyW_4&usqp=CAU'),
         const listtilewidget(name: "mohalal", photourl:'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Mohanlal_Viswanathan_Nair_BNC.jpg/220px-Mohanlal_Viswanathan_Nair_BNC.jpg'),
          listtilewidget(name: "suresh gobi", photourl:'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Suresh_Gopi_2022.jpg/220px-Suresh_Gopi_2022.jpg'),
          
                  listtilewidget(name: "sahad", photourl:'https://media.gettyimages.com/photos/vadodara-india-indian-cricketer-sachin-tendulkar-plays-a-shot-on-way-picture-id73158992?k=20&m=73158992&s=612x612&w=0&h=QX1omR3Zv6UHFMouJux-MoYPO_iySWu434LKmUuEZoM='),
                  listtilewidget(name: "sahad", photourl:'https://media.gettyimages.com/photos/india-players-celebrate-the-wicket-of-louise-milliken-of-new-zealand-picture-id52599259?k=20&m=52599259&s=612x612&w=0&h=szUVCH4NK9SCeE9WUcw-mK0rc69QImoVui5GAlMq4Ak='),
                  listtilewidget(name: "sahad", photourl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI3CJckilQUj4eENRIBr5tfzQFttwAiYYJNUCiHgzS&s'),
                  listtilewidget(name: "sahad", photourl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYnLnv7Pak3sIjDXn2sNjkRRrIKQ-vaKMUT2Jm-PB3Pw&s'),
     
      ]  
      ).toList(),

          
      ),


  

 );
  



}
}

void logout(BuildContext cnt) {
  
    Navigator.of(cnt).pushAndRemoveUntil(MaterialPageRoute(builder: (cnt1)=>login()) , (route) => false);
}


















class listtilewidget extends StatelessWidget {
  const listtilewidget({Key? key, required this.name, required this.photourl}) : super(key: key);

final String name;
final String photourl; 
  @override
  Widget build(BuildContext context) {
    return ListTile(
  leading: CircleAvatar(
    radius: 25,
backgroundImage: NetworkImage(photourl)),
  title: Text(name,style: TextStyle(
    fontWeight: FontWeight.bold
  ),),
  
  
  );
  
  }
  

  }
