// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class OrganizationModel {
  final String name;
  final String description;
  final String category;
  final String address;
  final String? image1;
  final List<dynamic> products;
  OrganizationModel({
    required this.name,
    required this.description,
    required this.category,
    required this.address,
    this.image1,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'category': category,
      'address': address,
      'image1': image1,
      'products': products,
    };
  }

  OrganizationModel copyWith({
    String? name,
    String? description,
    String? category,
    String? address,
    String? image1,
    List<dynamic>? products,
  }) {
    return OrganizationModel(
      name: name ?? this.name,
      description: description ?? this.description,
      category: category ?? this.category,
      address: address ?? this.address,
      image1: image1 ?? this.image1,
      products: products ?? this.products,
    );
  }

  // factory OrganizationModel.fromMap(Map<String, dynamic> map) {
  //   return OrganizationModel(
  //     name: map['name'] as String,
  //     description: map['description'] as String,
  //     category: map['category'] as String,
  //     address: map['address'] as String,
  //     image1: map['image1'] != null ? map['image1'] as String : null,
  //     products: List<dynamic>.from((map['products'] as List<dynamic>),
  //   ));
  // }
  factory OrganizationModel.fromMap(Map<String, dynamic> map) {
    return OrganizationModel(
      name: map['name'] as String,
      description: map['description'] as String? ?? '',
      category: map['category'] as String,
      address: map['address'] as String,
      image1: map['image1'] as String?,
      products: List<dynamic>.from((map['products'] as List<dynamic>)),
    );
  }

  // factory OrganizationModel.fromJson(Map<String, dynamic> json) {
  //   return OrganizationModel(
  //     name: json['name'] as String,
  //     description: json['description'] as String,
  //     category: json['category'] as String,
  //     address: json['address'] as String,
  //     image1: json['image1'] as String?,
  //     products: List<dynamic>.from(json['products'] as List<dynamic>),
  //   );
  // }
  factory OrganizationModel.fromJson(Map<String, dynamic> json) {
    return OrganizationModel(
      // id: json['id'] as int?,
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      address: json['localization'] ?? "",
      image1: json['image1'] ?? "",
      // owner: json['owner']  ?? "",
      products: json['products'] ?? [],
      category: json['category'] ?? "",
    );
  }
  String toJson() => json.encode(toMap());

  // factory OrganizationModel.fromJson(String source) => OrganizationModel.fromMap(json.decode(source) as Map<String, dynamic>);
  // factory OrganizationModel.fromJson(String source) => OrganizationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OrganizationModel(name: $name, description: $description, category: $category, address: $address, image1: $image1, products: $products)';
  }

  @override
  bool operator ==(covariant OrganizationModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.description == description &&
        other.category == category &&
        other.address == address &&
        other.image1 == image1 &&
        listEquals(other.products, products);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        category.hashCode ^
        address.hashCode ^
        image1.hashCode ^
        products.hashCode;
  }
}
