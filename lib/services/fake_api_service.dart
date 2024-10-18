import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import '../util/api_error.dart';

class ApiService {
  static const baseUrl = 'https://fakestoreapi.com';

  Future<Either<ApiError, List<dynamic>>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/products'));
      if (response.statusCode == 200) {
        return Right(json.decode(response.body));
      } else {
        return Left(handleHttpError(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ApiError('Network error: ${e.toString()}'));
    }
  }

  Future<Either<ApiError, List<dynamic>>> fetchCategories() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/products/categories'));
      if (response.statusCode == 200) {
        return Right(json.decode(response.body));
      } else {
        return Left(handleHttpError(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ApiError('Network error: ${e.toString()}'));
    }
  }

  Future<Either<ApiError, List<dynamic>>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/users'));
      if (response.statusCode == 200) {
        return Right(json.decode(response.body));
      } else {
        return Left(handleHttpError(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ApiError(e.toString()));
    }
  }
}
