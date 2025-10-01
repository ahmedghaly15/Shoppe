part of '../../cart.dart';

@RoutePage()
class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              CustomSliverAppBar(
                centerTitle: false,
                titleWidget: Row(
                  spacing: 8.w,
                  children: [
                    Text(AppStrings.cart, style: AppTextStyles.font28Bold),
                    const CartLengthConsumer(),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 11.h, bottom: 16.h),
                  child: const ShippingAddressListTile(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
