import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shoppe/src/core/helpers/helpers.dart';

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart' show AppTextStyles;
import '../../core/api/api_error_model.dart';
import '../../core/api/api_request_result.dart';
import '../../core/providers/form_providers.dart';
import '../../core/utils/utils.dart';
import '../../core/widgets/core_widgets.dart';
import 'data/api/register_api_service.dart';
import 'data/models/register_request_body.dart';
import 'presentation/providers/register_provider.dart';

part 'data/repo/register_repo.dart';
part 'presentation/views/register_view.dart';
part 'presentation/views/widgets/register_consumer_button.dart';
part 'presentation/views/widgets/register_form_consumer.dart';
part 'presentation/views/widgets/register_section.dart';
