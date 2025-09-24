import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show TextInputFormatter;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' hide ShimmerEffect;
import 'package:shoppe/src/core/helpers/helpers.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../config/theming/theming.dart' show AppColors, AppTextStyles;
import '../api/api.dart' show ApiErrorMessage;
import '../providers/form_providers.dart';
import '../utils/utils.dart' show AppStrings;

part 'adaptive_circular_progress_indicator.dart';
part 'cancel_text_button.dart';
part 'custom_input_form_field.dart';
part 'email_field_consumer.dart';
part 'flutter_error_details_view.dart';
part 'name_field_consumer.dart';
part 'pass_field_consumer.dart';
part 'primary_button.dart';
part 'shad_dialog_view.dart';
part 'custom_cached_network_img.dart';
part 'custom_skeletonizer.dart';
part 'custom_dots_indicator.dart';
