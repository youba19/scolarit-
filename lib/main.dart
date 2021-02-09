import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'ContainerWgt.dart';

import 'maj/maj_screen.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
 /* Future<List<Etudiant>> etudiant;
  TextEditingController controller=TextEditingController();
  int mat;
  String nom;
  String prenom;
  String section;
  String groupe;

  final fromKey=new GlobalKey<FormState>();
  var dbHelper;
  bool isUpdating;
@override
void initState(){
  super.initState();
  dbHelper=DBHelper();
  isUpdating=false;

}
refrechListe(){
  setState(() {
    etudiant=dbHelper.getEtudiants();
  });
}
clearName(){
controller.text='';
  }
validate(){
  if(fromKey.currentState.validate()){
    fromKey.currentState.save();
    if(isUpdating){
      Etudiant e=Etudiant(mat: mat,nom: nom,prenom: prenom,section: section,groupe: groupe);
   dbHelper.update(e);
   setState(() {
     isUpdating=false;
   });
   clearName();
    }else{
      Etudiant e=Etudiant(mat: null,nom: nom,prenom: prenom,section: section,groupe: groupe);
   dbHelper.save(e);
    }
  }
}*/
/*form(){
  return Form(
  key: fromKey,
    child: Row(
      children:<Widget> [
        SizedBox(width: 10.0,),
        majScreen(title: 'matricule',controller: controller,variable: nom,),
        SizedBox(width: 10.0,),
        majScreen(title: 'nom',controller: controller,variable: prenom,),
        SizedBox(width: 10.0,),
        majScreen(title: 'Prenom',controller: controller,variable: prenom,),
        SizedBox(width: 10.0,),
        majScreen(title: 'Section',controller: controller,variable: section,),
        SizedBox(width: 10.0,),
        majScreen(title: 'Groupe',controller: controller,variable: groupe,),
        SizedBox(width: 10.0,),

        Column(
        children:<Widget>[
          FlatButton(
              onPressed: validate,
              child: Text('add')),
          FlatButton(
              onPressed: (){
                setState(() {
                  isUpdating=false;
                });
                clearName();
              },
              child: Text('annuler')),
        ],
      ),
      ],),

  );
}*/

  int _selectedIndex = 0;
List<Widget> containers=[
  Container(
    padding: EdgeInsets.only(top: 50.0),
    width:double.infinity,
    height: double.infinity,
    child: Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        child:
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

        children:<Widget> [


        //  majScreen(),
         SizedBox(width: 10.0,),
          majScreen(title: 'matricule',),
          SizedBox(width: 10.0,),
          majScreen(title: 'nom',),
          SizedBox(width: 10.0,),
          majScreen(title: 'Prenom',),
          SizedBox(width: 10.0,),
          majScreen(title: 'Section',),
          SizedBox(width: 10.0,),
          majScreen(title: 'Groupe',),
          SizedBox(width: 10.0,),


        Column(
          children:<Widget> [
           ContainerWgt( text: "Ajouter"),
            SizedBox(height: 10.0,),

            ContainerWgt( onpressed: (){}, text: "Annuler"),

          ],
        ),


        ],
  ),
      ),

        Row(
          children: <Widget>[
            SizedBox(width: 40.0,),
            ContainerWgt( onpressed: (){}, text: "Recherche"),
          ],
        ),


      DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'matricule',
              ),
            ),
            DataColumn(
              label: Text(
                'nom',
              ),
            ),
            DataColumn(
              label: Text(
                'Prenom',
              ),
            ),
            DataColumn(
              label: Text(
                'Section',
              ),
            ),
            DataColumn(
              label: Text(
                'Groupe',
              ),
            ),
          ],
          rows: const <DataRow>[
      DataRow(
      cells: <DataCell>[
      DataCell(Text('Mohit')),
  DataCell(Text('23')),
        DataCell(Text('Mohit')),
        DataCell(Text('23')),
        DataCell(Text('23')),

],
  ),
  DataRow(
  cells: <DataCell>[
  DataCell(Text('Aditya')),
  DataCell(Text('24')),
    DataCell(Text('Mohit')),
    DataCell(Text('23')),
    DataCell(Text('23')),

  ],
  ),

  ],
  ),

      ],),


  ),
  Container(
    width:double.infinity,
    height: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,

      children:<Widget> [
        ContainerWgt( onpressed: (){}, text: "Cértafica Scolarité"),
        ContainerWgt( onpressed: (){}, text: "Etudiant par Section"),
        ContainerWgt( onpressed: (){}, text: "Bulletin"),
      SizedBox(height: 500,)
      ],
    ),),
  Container(
    width:double.infinity,
    height: double.infinity,
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:<Widget> [
          Text(""),
        /*  ContainerWgt( onpressed: (){}, text: "Etudiant"),
          ContainerWgt( onpressed: (){}, text: "Module"),
          ContainerWgt( onpressed: (){}, text: "Examen"),*/

        ],
      ),
    ),),


];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor:Colors.white,
        //Color(0xff6002ee),


      body: Row(

        children: <Widget>[

           Padding(padding: EdgeInsets.only(top: 600)),
         

          NavigationRail(

            backgroundColor: Color(0xff6002ee),
           minWidth: 120.0,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {

                _selectedIndex = index;
              });
            },

            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(

                icon: Icon(Icons.system_update_rounded,size: 50,color: Colors.white,),
                selectedIcon: Icon(Icons.update_sharp,size: 70,color: Colors.white,),
                label: Text('Mise a jour',style: TextStyle(color: Colors.white),),

              ),
              NavigationRailDestination(
                icon: Icon(Icons.cases,size: 50,color: Colors.white,),
                selectedIcon: Icon(Icons.cases,size: 70,color: Colors.white,),
                label: Text('Etats',style: TextStyle(color: Colors.white)),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.exit_to_app,size: 50,color: Colors.white,),
                selectedIcon: Icon(Icons.exit_to_app,size: 70,color: Colors.white,),
                label: Text('Quiter',style: TextStyle(color: Colors.white)),

              ),
            ],
          ),
          VerticalDivider(thickness:1, width: 1),
          // This is the main content.
          Expanded(
            child: containers[_selectedIndex],
          )
        ],
      ),
    );
  }
}

