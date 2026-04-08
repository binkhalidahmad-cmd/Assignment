import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  // Makes the entire screen scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section with Padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  
                  // Header Row with Menu, Address, and Store Badge
                  Row(
                    children: [
                      // Menu Button
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(child: Icon(Icons.menu, size: 25)),
                      ),
                      const SizedBox(width: 10),
                      
                      // Delivery Address
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deliver to",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text("Halal Lab Office"),
                              Icon(Icons.arrow_drop_down, size: 23),
                            ],
                          ),
                        ], 
                      ),
                      const Spacer(),
                      
                      // Store Badge with Notification
                      Badge(
                        label: const Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        padding: const EdgeInsets.all(2),
                        backgroundColor: Colors.deepOrange,
                        offset: const Offset(-5, 0),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.store,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // Greeting Text
                  const Row(
                    children: [
                      Text(
                        "Hey Halal,",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        " Good Afternoon",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // Search Bar
                  const SearchBarWidget(),
                  const SizedBox(height: 20),
                  
                  // All Categories Header
                  Row(
                    children: [
                      const Text(
                        "All Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded, size: 15),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            
            // Horizontal Categories List
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(16, 10, 0, 10),
                children: [
                  _buildCategoryChip(true, "https://cdn-icons-png.flaticon.com/512/1828/1828617.png", "All"),
                  _buildCategoryChip(false, "https://cdn-icons-png.flaticon.com/512/1046/1046784.png", "Burger"),
                  _buildCategoryChip(false, "https://cdn-icons-png.flaticon.com/512/1046/1046785.png", "Pizza"),
                  _buildCategoryChip(false, "https://cdn-icons-png.flaticon.com/512/2909/2909535.png", "Sushi"),
                  _buildCategoryChip(false, "https://cdn-icons-png.flaticon.com/512/2917/2917995.png", "Dessert"),
                  _buildCategoryChip(false, "https://cdn-icons-png.flaticon.com/512/1046/1046852.png", "Drinks"),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Open Restaurants Header
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "Open Restaurants",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All >",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 10),
            
            // Restaurant Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // Restaurant 1 - Rose Garden
                  _buildRestaurantCard(
                    imageUrl: "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=500",
                    name: "Rose Garden Restaurant",
                    cuisine: "Burger • Chicken • Rice • Wings",
                    rating: "4.5",
                    deliveryTime: "30-40 min",
                    reviews: "1.2k+ reviews",
                  ),
                  
                  const SizedBox(height: 15),
                  
                  // Restaurant 2 - Pizza Heaven
                  _buildRestaurantCard(
                    imageUrl: "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500",
                    name: "Pizza Heaven",
                    cuisine: "Pizza • Pasta • Garlic Bread • Wings",
                    rating: "4.8",
                    deliveryTime: "25-35 min",
                    reviews: "2.5k+ reviews",
                  ),
                  
                  const SizedBox(height: 15),
                  
                  // Restaurant 3 - Sushi Master
                  _buildRestaurantCard(
                    imageUrl: "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=500",
                    name: "Sushi Master",
                    cuisine: "Sushi • Rolls • Sashimi • Tempura",
                    rating: "4.9",
                    deliveryTime: "35-45 min",
                    reviews: "890+ reviews",
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Helper method to build category chips
  Widget _buildCategoryChip(
    bool isActive,
    String imageUrl,
    String categoryName,
  ) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isActive ? const Color(0xFFFFD27C) : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
      child: Row(
        children: [
          // Category Image
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error, size: 20);
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 13),
          
          // Category Name
          Text(
            categoryName,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  // Helper method to build restaurant cards
  Widget _buildRestaurantCard({
    required String imageUrl,
    required String name,
    required String cuisine,
    required String rating,
    required String deliveryTime,
    required String reviews,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Restaurant Image
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 150,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                  ),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  height: 150,
                  color: Colors.grey.shade100,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ),
          
          // Restaurant Info
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Restaurant Name
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                
                // Cuisine Type
                Text(
                  cuisine,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8),
                
                // Rating and Delivery Time Row
                Row(
                  children: [
                    // Star Icon
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    const SizedBox(width: 4),
                    
                    // Rating
                    Text(
                      rating,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 4),
                    
                    // Reviews
                    Text(
                      reviews,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 8),
                    
                    // Dot Separator
                    Text(
                      "•",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 8),
                    
                    // Delivery Time
                    Icon(
                      Icons.access_time,
                      size: 14,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    
                    Text(
                      deliveryTime,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 8),
                
                // Offer Tag
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "20% OFF • Min order ",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                    ),
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

// Search Bar Widget
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Search dishes, restaurants",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey, size: 22),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),
    );
  }
}