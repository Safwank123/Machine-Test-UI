import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedCategory = 'Colour'; 
  String selectedOption = ''; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Filters',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.black),
            onPressed: () {Navigator.pop(context);},
          ),
        ],
      ),
      body: Row(
        children: [
          
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.35,
            child: ListView(
              children: [
                _buildCategoryItem('Categories'),
                _buildCategoryItem('Colour'),
                _buildCategoryItem('Horoscope'),
                _buildCategoryItem('Size'),
                _buildCategoryItem('Gender'),
                _buildCategoryItem('Series'),
                _buildCategoryItem('Price Range'),
                _buildCategoryItem('Discount'),
                _buildCategoryItem('Occasion'),
                _buildCategoryItem('Ingredients'),
              ],
            ),
          ),
         
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const SizedBox(height: 16),
                  if (selectedCategory == 'Colour') ...[
                    _buildColorOption(Colors.blue, 'Red (12)'),
                    SizedBox(height: 10,),
                    _buildColorOption(Colors.red, 'Red (9)'),
                     SizedBox(height: 10,),
                    _buildColorOption(Colors.green, 'Green (13)'),
                     SizedBox(height: 10,),
                    _buildColorOption(Colors.yellow, 'Yellow (11)'),
                     SizedBox(height: 10,),
                    _buildColorOption(Colors.purpleAccent, 'Purple (3)'),
                     SizedBox(height: 10,),
                    _buildColorOption(Colors.white, 'White (7)'),
                     SizedBox(height: 10,),
                    _buildColorOption(Colors.redAccent, 'Red( 12)'),
                     SizedBox(height: 10,),
                    _buildColorOption(Colors.brown, 'Brown (4)'),
                  ] else if (selectedCategory == 'Categories') ...[
                     _buildRadioOption('EDT'),
                    _buildRadioOption('EDP'),
                    _buildRadioOption('Musk'),
                    _buildRadioOption('Mamoul'),
                    _buildRadioOption('Oud Burner'),
                  ],
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title) {
    final isSelected = selectedCategory == title;
    return Container(
      color: isSelected ? Colors.black : Colors.transparent,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: () {
          setState(() {
            selectedCategory = title;
            selectedOption = ''; 
          });
        },
      ),
    );
  }

  Widget _buildRadioOption(String title) {
    return Row(
      children: [
        Radio<String>(
          value: title,
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          activeColor: Colors.black,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildColorOption(Color color, String label, {Color? borderColor}) {
    final isSelected = selectedOption == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = label;
        });
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: color,
                  border: Border.all(
                    color: isSelected ? Colors.black : (borderColor ?? Colors.transparent),
                    width: isSelected ? 2 : 1,
                  ),
                ),
              ),
              if (isSelected)
                const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 16, 
                ),
            ],
          ),
          const SizedBox(width: 10), 
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
