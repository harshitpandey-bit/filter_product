class ProductModel {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  // Rating? rating;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    // this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id'],
      title: data['title'],
      price: data['price'],
      description: data['description'],
      category: data['category'],
      image: data['image'],
      // rating: data['rating'] != null ? Rating.fromJson(data['rating']) : null,
    );
  }

  Map<String, dynamic> toJson(ProductModel data) {
    return {
      "id": data.id,
      "title": data.title,
      "price": data.price,
      "description": data.description,
      "category": data.category,
      "image": data.image,
      // "rating": data.rating!.toJson(data.rating!)
    };
  }
}