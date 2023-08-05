enum Quantity_Type { Custard, Kg }

enum Product_Type { RED, GREEN }

class ProductModel {
  String pName;
  Product_Type pType;
  Quantity_Type qty;
  double value;
  bool available;

  ProductModel({
    required this.pName,
    required this.pType,
    required this.qty,
    required this.value,
    required this.available,
  });
}
