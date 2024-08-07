import 'package:flutter/material.dart';
import 'package:grocery_app/components/data.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key, required this.product});
  final Product product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int count = 0;
  void addCount() {
    count = count + 1;
    setState(() {});
  }

  void removeCount() {
    if (count != 0) {
      count = count - 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            'Detail',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.product.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
          Center(
            child: Hero(
              tag: widget.product.image,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.product.image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Row(
              children: [
                Text(
                  'Rp${widget.product.price}',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '/${widget.product.quantity}',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.product.description,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: removeCount,
                        icon: const Icon(
                          Icons.remove_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        count.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        onPressed: addCount,
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 190,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Pesan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
