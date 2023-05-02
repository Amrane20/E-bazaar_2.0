// import 'package:app/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/buyer/product_detail.dart';

bool isFavorited = false;
class productCart extends StatefulWidget {
  const productCart({super.key});

  @override
  State<productCart> createState() => _productCartState();
}

class _productCartState extends State<productCart> {
  @override
  Widget build(BuildContext context) {
    // sigleProduct method returns a single cart of the product
    Widget singleProduct() {
      return Expanded(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                   Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductDetailsPage()));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(
                      "assets/images/slider.jpg",
                      width: MediaQuery.of(context).size.width*0.42,
                      height: 210,
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, top: 13, right: 30.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ 20.15"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if(isFavorited==false) {
                          isFavorited = true;
                        } else {
                          isFavorited = false;
                        }
                        });
                        print(isFavorited);
                      },
                      icon: Icon(isFavorited ? Icons.favorite_rounded : Icons.favorite_border_rounded ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text("Product_one"),
              ),
            ],
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        singleProduct(),
        SizedBox(
          width: 16.0,
        ),
        singleProduct()
      ],
    );
  }
}
