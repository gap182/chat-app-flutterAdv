import 'package:flutter/material.dart';



class Labels extends StatelessWidget {

  final String ruta;
  final String mensaje1;
  final String mensaje2;

  const Labels({
    Key key, 
    this.ruta, 
    this.mensaje1, 
    this.mensaje2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.mensaje1, style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),),
          SizedBox(height: 10,),
          GestureDetector(
            child: Text(this.mensaje2, style: TextStyle(color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: (){

              Navigator.pushReplacementNamed(context, this.ruta);
            },
            )
        ],
      ),
    );
  }
}
