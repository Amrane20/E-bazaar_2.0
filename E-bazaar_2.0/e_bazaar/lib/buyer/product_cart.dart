// import 'package:app/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountType.dart';
import 'package:flutter_application_1/buyer/product_detail.dart';

bool isFavorited = false;

class singleProduct extends StatefulWidget {
  final imageUrl;
  const singleProduct({super.key, required this.imageUrl});

  @override
  State<singleProduct> createState() => _singleProductState();
}

class _singleProductState extends State<singleProduct> {
  @override
  Widget build(BuildContext context) {
    // sigleProduct method returns a single cart of the product
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailsPage()));
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  widget.imageUrl,
                  width: MediaQuery.of(context).size.width * 0.42,
                  height: 210,
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 14.0, top: 5, right: 30.0, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("\$ 20.15"),
                const SizedBox(
                  width: 65.0,
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      accountType != Account.guest
                          ? setState(() {
                              if (isFavorited == false) {
                                isFavorited = true;
                              } else {
                                isFavorited = false;
                              }
                            })
                          : print("you have to log in to like");
                      print(isFavorited);
                    },
                    icon: Icon(isFavorited
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text("Product_one"),
          ),
        ],
      ),
    );

/*
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        singleProduct(),
       const SizedBox(
          width: 16.0,
        ),
        singleProduct()
      ],
    );
    */
  }
}
