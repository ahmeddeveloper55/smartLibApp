import 'package:flutter/material.dart';
class BookTile extends StatelessWidget {
  final String title;
  final String authors;
  final String branch;
  final String copies;
  final String unitCost;
  final String imageUrl;

  const BookTile({Key key, this.title, this.authors, this.branch, this.copies, this.unitCost, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.bottomLeft,
        height: 180,
       child: Stack(
         children: [
               SafeArea(
                 child: Container(
                   width: MediaQuery.of(context).size.width - 35,

                   height: 170,
                   padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(12)
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         width: MediaQuery.of(context).size.width - 220 -80,
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width - 220,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: [

                                 Padding(
                                   padding: const EdgeInsets.only(top:8.0),
                                   child: Text(title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                 ),

                                 Text(authors,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500)),

                             SizedBox(height: 4,),
                             Text(branch,style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400)),
                             SizedBox(height: 4,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text("Copies : $copies",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                 Spacer(),
                                 Text("Unit Cost : $unitCost",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400))
                               ],
                             ),

                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),


           Container(
             height: 150,

             margin: EdgeInsets.only(left: 12,top: 6),
             child: Image.network(imageUrl,width: 100,height:150 ,fit: BoxFit.cover,),
           )
         ],
       ),
      ),

      );

  }
}

