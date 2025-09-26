import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart' show AppColors, AppTextStyles;
import '../../core/models/product.dart';
import '../../core/utils/utils.dart' show AppStrings;
import '../../core/widgets/core_widgets.dart'
    show CustomCachedNetworkImage, PrimaryButton;

part 'presentation/views/product_details_view.dart';
part 'presentation/views/widgets/product_header_delegate.dart';
part 'presentation/views/widgets/product_detail_section_title.dart';
part 'presentation/views/widgets/wish_product_icon_button.dart';
part 'presentation/views/widgets/add_to_cart_and_buy_now_buttons.dart';
part 'presentation/views/widgets/product_pictures_list_view.dart';
part 'presentation/views/widgets/product_final_price_and_discount.dart';
