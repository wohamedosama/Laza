/// Constants for Home Screen
/// Follows Single Responsibility Principle - centralized constants
class HomeConstants {
  // Private constructor to prevent instantiation
  HomeConstants._();

  // UI Constants
  static const double defaultPadding = 20.0;
  static const double defaultSpacing = 15.0;
  static const double searchBarHeight = 50.0;
  static const double brandItemHeight = 50.0;
  static const double productCardAspectRatio = 0.65;
  static const int gridCrossAxisCount = 2;

  // Text Constants
  static const String chooseBrandText = 'Choose Brand';
  static const String viewAllText = 'View All';
  static const String newArrivalText = 'New Arrival';
  static const String searchHintText = 'Search...';

  // Brand Data
  static const List<Map<String, dynamic>> brands = [
    {'name': 'Adidas', 'logo': 'sports_soccer'},
    {'name': 'Nike', 'logo': 'sports_basketball'},
    {'name': 'Fila', 'logo': 'sports_tennis'},
  ];

  // Product Data
  static const List<Map<String, dynamic>> products = [
    {
      'name': 'Nike Sportswear Club Fleece',
      'price': '\$99',
      'color': 0xFFB4E4D3,
    },
    {
      'name': 'Trail Running Jacket Nike Windrunner',
      'price': '\$99',
      'color': 0xFF6DBBE6,
    },
    {'name': 'Training Top Nike Dri-FIT', 'price': '\$99', 'color': 0xFFF5F5F5},
    {
      'name': 'Nike Sportwear Futura Luxe',
      'price': '\$99',
      'color': 0xFF4D7FE8,
    },
  ];
}
