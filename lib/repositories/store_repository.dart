import 'package:dartz/dartz.dart';
import '../models/user_model.dart';
import '../models/product_model.dart';
import '../models/category_model.dart';
import '../services/fake_api_service.dart';
import '../util/api_error.dart';

class StoreRepository {
  final ApiService apiService;

  StoreRepository(this.apiService);

  Future<Either<ApiError, List<Product>>> getProducts() async {
    final result = await apiService.fetchProducts();
    return result.map((data) => data.map((product) => Product.fromJson(product)).toList());
  }

  Future<Either<ApiError, List<Category>>> getCategories() async {
    final result = await apiService.fetchCategories();
    return result.map((data) => data.map((category) => Category.fromJson(category)).toList());
  }

  Future<Either<ApiError, List<User>>> getUsers() async {
    final result = await apiService.fetchUsers();
    return result.map((data) => data.map((user) => User.fromJson(user)).toList());
  }
}
