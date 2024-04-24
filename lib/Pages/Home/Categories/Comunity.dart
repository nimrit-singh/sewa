import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<Community> {
  int radiusInKm = 5; // Initial radius

  // Dummy community data
  List<CommunityCardData> communityData = [
    CommunityCardData(
      title: 'SeniorResidency',
      address: 'Suhana Society',
      distance: '2.2 km away',
      description:
          'A community for senior citizens to stay energetic and engaged.',
    ),
    CommunityCardData(
      title: 'ADHD Talks',
      address: 'Plot 135, Landran',
      distance: '1.5 km away',
      description:
          'A welcoming community that organizes meetups to discuss ADHD and personal experiences.',
    ),
    CommunityCardData(
      title: 'Autism Friends',
      address: 'Sector 94, Plot 11, JLPL',
      distance: '3.0 km away',
      description:
          'A community that helps autistic teenagers have a social life and connect with others.',
    ),
    // Add more CommunityCardData objects as needed.
  ];

  void _increaseRadius() {
    setState(() {
      radiusInKm += 3;
      // Update community data with additional cards within the new radius
      if (radiusInKm == 8) {
        communityData.addAll([
          CommunityCardData(
            title: 'New Community 1',
            address: 'New Address 1',
            distance: '6.0 km away',
            description: 'Description for new community 1.',
          ),
          CommunityCardData(
            title: 'New Community 2',
            address: 'New Address 2',
            distance: '7.0 km away',
            description: 'Description for new community 2.',
          ),
          // Add more new community cards here.
        ]);
      }
    });
  }

  void _decreaseRadius() {
    if (radiusInKm > 5) {
      setState(() {
        radiusInKm -= 3;
        // Remove community cards outside of the new radius
        communityData.removeWhere((data) {
          final distance = double.tryParse(data.distance.split(' ')[0]) ?? 0;
          return distance > radiusInKm;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Community',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        elevation: 0,
        centerTitle: true,),
      
      backgroundColor:  Color.fromARGB(255, 26, 25, 25),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          Text(
            '$radiusInKm km Radius',
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: communityData.length,
              itemBuilder: (context, index) {
                final data = communityData[index];
                return CommunityCard(
                  title: data.title,
                  address: data.address,
                  distance: data.distance,
                  description: data.description,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decreaseRadius,
                child: Text('-3 km'),
              ),
              SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: _increaseRadius,
                child: Text('+3 km'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CommunityCardData {
  final String title;
  final String address;
  final String distance;
  final String description;

  CommunityCardData({
    required this.title,
    required this.address,
    required this.distance,
    required this.description,
  });
}

class CommunityCard extends StatelessWidget {
  final String title;
  final String address;
  final String distance;
  final String description;

  CommunityCard({
    required this.title,
    required this.address,
    required this.distance,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.home, color: Colors.black),
                    const SizedBox(width: 8.0),
                    Text(
                      address,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.black),
                    const SizedBox(width: 8.0),
                    Text(
                      distance,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}