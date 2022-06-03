import 'package:book12/Widgets/BookTile.dart';
import 'package:book12/model/ModelClass.dart';
import 'package:book12/providers/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Home_page extends StatefulWidget {

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<ModelClass> _searchList=[];
  List<ModelClass> _listbooks= [];
  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final providermodel = Provider.of<ModelProvider>(context,listen: false);
    providermodel.getALLBooks(_listbooks);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         color: Color(0xffF4F5F9),
         padding: EdgeInsets.symmetric(horizontal: 17),
         child: Container(
           width: MediaQuery.of(context).size.width,
           child: Column(
             children: <Widget>[
               SizedBox(height: 50,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 11),
                 child: Text("Welcome to SmartLibrary App",
                     style: TextStyle(
                         fontWeight: FontWeight.w500,
                         fontSize: 24
                     ),),
               ),
               SizedBox(height: 10,),
               Container(
                 child: new Card(
                   elevation: 0,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(16.0),
                   ),
                   margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                   child: Padding(
                     padding: const EdgeInsets.all(3.0),
                     child: ListTile(
                       dense: true,

                       title: TextField(
                         controller: controller,
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           prefixIcon: Icon(Icons.search),
                           filled: false,
                           hintText: 'search',
                         ),
                         // onChanged: onChangedtext,
                       ),
                       trailing: new IconButton(
                         icon: new Icon(Icons.cancel),
                         onPressed: () {
                           controller.clear();
                           onChangedtext('');
                         },
                       ),
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 3,),

               Expanded(
                   child: ListView.builder(
                     itemCount: _listbooks.length,
                       scrollDirection: Axis.vertical,
                       physics: ClampingScrollPhysics(),
                       shrinkWrap: true,
                       itemBuilder: (context,i) {
                        return BookTile(
                          title: _listbooks[i].title.toString(),
                          authors: _listbooks[i].authors.toString(),
                          branch: _listbooks[i].branch.toString(),
                          copies: _listbooks[i].copies,
                          imageUrl: "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
                          unitCost: _listbooks[i].unitCost,
                        );
                       }
                   )
               )

             ],
           ),
         ),
       )

    );
  }
  onChangedtext(String s) async {
    _searchList.clear();
    if (s.isEmpty) {
      setState(() {});
      return;
    }
    // _listbooks.forEach((user) {
    //   if (user.description.contains(s)||user.number.contains(s)||user.status.contains(s)) {
    //     _listbooks.add(user);
    //   }
    // });
    setState(() {});
  }
}
