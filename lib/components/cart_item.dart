import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/models/cart.dart';
import 'package:sneakers/models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
          leading: Image.asset(
            widget.shoe.imagePath,
          ),
          title: Text(widget.shoe.name),
          subtitle: Text("\$${widget.shoe.price}"),
          trailing: IconButton(
            onPressed: () => removeFromCart(),
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          )),
    );
  }
}
