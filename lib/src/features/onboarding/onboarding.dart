import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../config/cache/cache.dart';
import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart';
import '../../core/utils/utils.dart';
import '../../core/widgets/core_widgets.dart';
import 'data/models/page_view_attributes.dart';

part 'presentation/views/onboarding_view.dart';
part 'presentation/views/widget/onbaording_dot_indicators_consumer.dart';
part 'presentation/views/widget/onboarding_page_view_consumer.dart';
part 'presentation/views/widget/page_view_next_button_consumer.dart';
part 'presentation/providers/onboarding_providers.dart';
