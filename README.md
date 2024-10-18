# Search Store API Dart Application

This is a Dart application that consumes the **Fake Store API** to retrieve and display product, category and user information. 
It implements good programming practices such as model immutability and error handling using the `dartz` library with the `Either` type.

The project structure follows a **clean architecture** approach with separation of responsibilities.

## Features

- Consumption of three Fake Store API endpoints:
  - Products (`/products`)
  - Categories (`/products/categories`)
  - Users (`/users`)
  
- Error handling using `Either` from the `dartz` library.
- Console printing of the obtained data.
- Handling of common HTTP errors (404, 400, 500) and other network failures.

## Packages

- **HTTP**: Package used to make API requests. The http package is developed and maintained by the Dart team, which ensures that it is well integrated with the Dart and Flutter ecosystem.
- **Dartz**: Package for functional error handling with `Either`.
