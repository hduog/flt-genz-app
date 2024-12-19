import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/FavoriteData/FavoriteData.dart';

class TagProfile extends StatelessWidget {
  final FavoriteData favorite; 

  const TagProfile({Key? key, required this.favorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return Container(
      
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5), 
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Text(
        favorite.nameFavorite,
        style: const TextStyle(fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
      }
    
  }

