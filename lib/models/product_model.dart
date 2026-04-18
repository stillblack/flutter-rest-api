class ProductModel {
  final bool success;
  final String message;
  final List<Data> data;

  ProductModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      data: (json['data'] as List? ?? []).map((e) => Data.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
    'data': data.map((e) => e.toJson()).toList(),
  };
}

class Data {
  final String id;
  final bool onSale;
  final int salePercent;
  final int sold;
  final bool sliderNew;
  final bool sliderRecent;
  final bool sliderSold;
  final String date;
  final String title;
  final Categories? categories;
  final Subcat? subcat;
  final Shop? shop;
  final String price;
  final String saleTitle;
  final String salePrice;
  final String description;
  final String color;
  final String size;
  final bool inWishlist;
  final List<Images> images;

  Data({
    required this.id,
    required this.onSale,
    required this.salePercent,
    required this.sold,
    required this.sliderNew,
    required this.sliderRecent,
    required this.sliderSold,
    required this.date,
    required this.title,
    this.categories,
    this.subcat,
    this.shop,
    required this.price,
    required this.saleTitle,
    required this.salePrice,
    required this.description,
    required this.color,
    required this.size,
    required this.inWishlist,
    required this.images,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['_id'] ?? '',
      onSale: json['on_sale'] ?? false,
      salePercent: json['sale_percent'] ?? 0,
      sold: json['sold'] ?? 0,
      sliderNew: json['slider_new'] ?? false,
      sliderRecent: json['slider_recent'] ?? false,
      sliderSold: json['slider_sold'] ?? false,
      date: json['date'] ?? '',
      title: json['title'] ?? '',
      categories: json['categories'] != null
          ? Categories.fromJson(json['categories'])
          : null,
      subcat: json['subcat'] != null ? Subcat.fromJson(json['subcat']) : null,
      shop: json['shop'] != null ? Shop.fromJson(json['shop']) : null,
      price: json['price'] ?? '',
      saleTitle: json['sale_title'] ?? '',
      salePrice: json['sale_price'] ?? '',
      description: json['description'] ?? '',
      color: json['color'] ?? '',
      size: json['size'] ?? '',
      inWishlist: json['in_wishlist'] ?? false,
      images: (json['images'] as List? ?? [])
          .map((e) => Images.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    '_id': id,
    'on_sale': onSale,
    'sale_percent': salePercent,
    'sold': sold,
    'slider_new': sliderNew,
    'slider_recent': sliderRecent,
    'slider_sold': sliderSold,
    'date': date,
    'title': title,
    'categories': categories?.toJson(),
    'subcat': subcat?.toJson(),
    'shop': shop?.toJson(),
    'price': price,
    'sale_title': saleTitle,
    'sale_price': salePrice,
    'description': description,
    'color': color,
    'size': size,
    'in_wishlist': inWishlist,
    'images': images.map((e) => e.toJson()).toList(),
  };
}

class Categories {
  final String id;
  final String type;
  final int salePercent;
  final String date;
  final String name;
  final String image;

  Categories({
    required this.id,
    required this.type,
    required this.salePercent,
    required this.date,
    required this.name,
    required this.image,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      id: json['_id'] ?? '',
      type: json['type'] ?? '',
      salePercent: json['sale_percent'] ?? 0,
      date: json['date'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    '_id': id,
    'type': type,
    'sale_percent': salePercent,
    'date': date,
    'name': name,
    'image': image,
  };
}

class Subcat {
  final String id;
  final String type;
  final int salePercent;
  final String date;
  final String name;

  Subcat({
    required this.id,
    required this.type,
    required this.salePercent,
    required this.date,
    required this.name,
  });

  factory Subcat.fromJson(Map<String, dynamic> json) {
    return Subcat(
      id: json['_id'] ?? '',
      type: json['type'] ?? '',
      salePercent: json['sale_percent'] ?? 0,
      date: json['date'] ?? '',
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    '_id': id,
    'type': type,
    'sale_percent': salePercent,
    'date': date,
    'name': name,
  };
}

class Shop {
  final String id;
  final bool isActive;
  final String createdAt;
  final String name;
  final String description;
  final String shopEmail;
  final String shopAddress;
  final String shopCity;
  final String userId;
  final String image;

  Shop({
    required this.id,
    required this.isActive,
    required this.createdAt,
    required this.name,
    required this.description,
    required this.shopEmail,
    required this.shopAddress,
    required this.shopCity,
    required this.userId,
    required this.image,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: json['_id'] ?? '',
      isActive: json['is_active'] ?? false,
      createdAt: json['created_At'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      shopEmail: json['shopemail'] ?? '',
      shopAddress: json['shopaddress'] ?? '',
      shopCity: json['shopcity'] ?? '',
      userId: json['userid'] ?? '',
      image: json['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    '_id': id,
    'is_active': isActive,
    'created_At': createdAt,
    'name': name,
    'description': description,
    'shopemail': shopEmail,
    'shopaddress': shopAddress,
    'shopcity': shopCity,
    'userid': userId,
    'image': image,
  };
}

class Images {
  final String id;
  final String url;

  Images({required this.id, required this.url});

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(id: json['id'] ?? '', url: json['url'] ?? '');
  }

  Map<String, dynamic> toJson() => {'id': id, 'url': url};
}
