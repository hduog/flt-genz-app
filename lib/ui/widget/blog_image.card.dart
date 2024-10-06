import 'package:flutter/material.dart';

class BlogsImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        children: [
          buildNewsCard(context), // First Card
          SizedBox(width: 16), // Spacing between cards
          buildNewsCard(context), // Second Card
          SizedBox(width: 16),
          buildNewsCard(context), // Third Card
        ],
      ),
    );
  }

  // Function to build a single card
  Widget buildNewsCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
              'https://picsum.photos/200/300'), // Replace with the image you want to use
          fit: BoxFit.cover,
        ),
      ),
      width: 300, // Fixed width for each card
      height: 200,
      child: Stack(
        children: [
          // Dark overlay for text contrast
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          // Positioned text and content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // "Sports" Tag
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Sports',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                // Bottom Row: Logo, Title, and Info
                Row(
                  children: [
                    // CNN Indonesia and Verified Icon
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/100/100'), // Replace with actual logo
                      radius: 12,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'CNN Indonesia',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 16,
                    ),
                    Spacer(),
                    Text(
                      '6 hours ago',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Headline Text
                Text(
                  'Alexander wears modified helmet in road races',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
