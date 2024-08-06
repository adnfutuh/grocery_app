class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;
//konstraktor
  Product(
    this.name,
    this.price,
    this.quantity,
    this.image,
    this.description,
  );
}

final List<Product> allData = [
  Product('Wortel', '10.000', '1kg', 'assests/img1.png',
      'Terdapat banyak vitamin di dalam buah dan sayur'),
  Product('Tomat', '10.000', '1kg', 'assests/img2.png',
      'Terdapat banyak vitamin di dalam buah dan sayur'),
  Product('Mangga', '30.000', '1kg', 'assests/img3.png',
      'Terdapat banyak vitamin di dalam buah dan sayur'),
  Product('Jagung', '20.000', '1kg', 'assests/img4.png',
      'Terdapat banyak vitamin di dalam buah dan sayur'),
  Product('Apel', '25.000', '1kg', 'assests/img5.png',
      'Terdapat banyak vitamin di dalam buah dan sayur'),
  Product('Nanas', '20.000', '1kg', 'assests/img6.png',
      'Terdapat banyak vitamin di dalam buah dan sayur'),
];
