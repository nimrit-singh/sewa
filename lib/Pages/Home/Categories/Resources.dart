import 'package:flutter/material.dart';

class Resources extends StatefulWidget {
  @override
  _ResourcesScreenState createState() => _ResourcesScreenState();
}

class _ResourcesScreenState extends State<Resources> {
  final TextEditingController _searchController = TextEditingController();
  final List<ResourceCard> _resourceCards = [
    ResourceCard(
      title: 'ADHD Resources',
      description:
          'Explore resources for Attention Deficit Hyperactivity Disorder (ADHD) and find support and information.',
    ),
    ResourceCard(
      title: 'Seizures Resources',
      description:
          'Discover resources related to seizures, their causes, management, and support for individuals affected.',
    ),
    ResourceCard(
      title: 'Special Citizens Resources',
      description:
          'Access resources for individuals with special needs and their caregivers, covering a wide range of topics.',
    ),
    ResourceCard(
      title: 'Panic Disorder Resources',
      description:
          'Access resources for understanding panic disorder. Learn how to provide care and support for individuals with panic disorder.',
    ),
    ResourceCard(
      title: 'Senior Citizen Resources',
      description:
          'Access cognitive exercises and additional resources for the elderly.',
    )
  ];
  List<ResourceCard> _filteredResourceCards = [];

  _ResourcesScreenState() {
    _filteredResourceCards.addAll(_resourceCards);
  }

  void _filterResourceCards(String searchText) {
    setState(() {
      _filteredResourceCards.clear();
      _filteredResourceCards.addAll(_resourceCards.where((card) {
        return card.title.toLowerCase().contains(searchText.toLowerCase());
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Resources',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0, // Increase font size for Resources title
              ),
            ),
           
          ],
        ),
     backgroundColor: Color.fromARGB(255, 26, 25, 25),
        elevation: 0,
        centerTitle: true, ),
      backgroundColor:  Color.fromARGB(255, 26, 25, 25), // Set background color to black
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              color: Colors.white,
              child: TextField(
                controller: _searchController,
                onChanged: (text) {
                  _filterResourceCards(text); // Call the filter function
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search Resources',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredResourceCards.length,
                itemBuilder: (context, index) {
                  print("yo ${context}");
                  return _filteredResourceCards[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResourceCard extends StatelessWidget {
  final String title;
  final String description;

  ResourceCard({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0, // Add elevation to create a card-like effect
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white, // Set background color to white
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0, // Increase font size for card titles
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(
            fontSize: 16.0, // Increase font size for card descriptions
          ),
        ),
      ),
    );
  }
}