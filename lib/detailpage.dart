

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karyapramoedya/model/karya.dart';

class DetailPage extends StatelessWidget{

  final Karya data;
  DetailPage({@required this.data});
  final textTitle = TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Yellowtail');
  final textSynopsys = TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Merriweather');
  final textReleased = TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'Merriweather', fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/wesley_tingey_unsplash.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
        )
      ) ,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(data.imgPath),
                  ),
                ),
                FavouriteButton(),
                SizedBox(height: 20),
                Text(data.title, style: textTitle),
                SizedBox(height: 14),
                Text(data.published, style: textReleased),
                SizedBox(height: 20),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    child: SingleChildScrollView(
                      child: Text(data.synopsis, textAlign: TextAlign.center, style: textSynopsys),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget{
  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton>{

  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
      return IconButton(
        icon: Icon(
          isFavourite ? Icons.favorite : Icons.favorite_border,
          color: Colors.white,
        ),
        onPressed: (){
          setState(() {
            isFavourite = !isFavourite;
          });
        },
      );
  }
}