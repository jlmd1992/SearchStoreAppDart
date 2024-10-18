import 'package:search_store_app/repositories/store_repository.dart';
import 'package:search_store_app/services/fake_api_service.dart';

void main() async {
  final apiService = ApiService();
  final storeRepository = StoreRepository(apiService);

  final productsResult = await storeRepository.getProducts();

  productsResult.fold(
    (error) => print('Error to get products: ${error.toString()}'),
    (products) {
      print('Products:');
      for (var product in products) {
        print('Title: ${product.title}');
        print('Description: ${product.description}');
        print('Price: \$${product.price}');
        print('Category: ${product.category}');
        print('Image URL: ${product.image}\n');
      }
    },
  );

  final categoriesResult = await storeRepository.getCategories();
  categoriesResult.fold(
    (error) => print('Error to get categories: ${error.toString()}'),
    (categories) {
      print('Categories:');
      for (var category in categories) {
        print('Name: ${category.name}\n');
      }
    },
  );

  final usersResult = await storeRepository.getUsers();
  usersResult.fold(
    (error) => print('Error to get users: ${error.toString()}'),
    (users) {
      print('Users:');
      for (var user in users) {
        print('Id: ${user.id}');
        print('Email: ${user.email}');
        print('Username: ${user.username}');
        print('Name: ${user.name.firstname} ${user.name.lastname}');
        print('Address: ${user.address.city}, Street: ${user.address.street}');
        print('Phone: ${user.phone}');
        print('Location: Lat: ${user.address.geolocation.lat}, Lon: ${user.address.geolocation.long}\n');
      }
    },
  );
}