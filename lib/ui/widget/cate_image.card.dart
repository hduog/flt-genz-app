import 'package:flutter/material.dart';

class CateBLogImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'What are you interested in?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // Spacing between title and cards

          // Grid of interest cards
          GridView.count(
            crossAxisCount: 2, // 2 cards in a row
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              buildInterestCard('User Data', 1924, Icons.data_usage),
              buildInterestCard('Marketing', 19743, Icons.monetization_on),
              buildInterestCard('Science', 3659, Icons.science),
              buildInterestCard('Robotics', 9364, Icons.android),
            ],
          ),
        ],
      ),
    ));
  }

  // Function to create individual interest card
  Widget buildInterestCard(String title, int likes, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60,
            color: Colors.blue, // Color for the icon
          ),
          SizedBox(height: 8), // Spacing between icon and text
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4), // Spacing between title and likes
          Text(
            '$likes ❤️',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
