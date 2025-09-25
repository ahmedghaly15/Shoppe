part of '../../product_details.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomScrollView(slivers: []));
  }
}
