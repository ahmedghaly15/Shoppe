import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show LucideIcons;
import 'package:shoppe/src/core/helpers/helpers.dart';

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart' show AppColors, AppTextStyles;
import '../../core/api/api_request_result.dart';
import '../../core/models/product.dart';
import '../../core/utils/utils.dart';
import '../../core/api/api_error_model.dart';
import '../../core/widgets/core_widgets.dart';
import '../product_details/product_details.dart'
    show ProductQuantityIconButtonsConsumer, productQuantityProvider;
import 'data/models/checkout_request_body.dart';
import 'data/models/remove_product_from_cart_request_body.dart';
import 'presentation/providers/checkout_provider.dart';
import 'data/api/cart_api_service.dart';

import 'data/models/checkout_request_response.dart';
import 'data/models/fetch_cart_request_response.dart';

part 'presentation/views/cart_view.dart';
part 'data/repo/cart_repo.dart';
part 'presentation/providers/fetch_cart_provider.dart';
part 'presentation/views/widgets/cart_length_consumer.dart';
part 'presentation/views/widgets/shipping_address_list_tile.dart';
part 'presentation/views/widgets/cart_sliver_list_consumer.dart';
part 'presentation/views/widgets/cart_item_widget.dart';
part 'presentation/views/widgets/checkout_button_consumer.dart';
part 'presentation/providers/cart_length_provider.dart';
part 'presentation/views/widgets/total_price_and_checkout_button.dart';
part 'presentation/providers/fetch_product_provider.dart';
part 'presentation/providers/remove_product_from_cart_provider.dart';
part 'presentation/views/widgets/remove_product_from_cart_consumer.dart';
