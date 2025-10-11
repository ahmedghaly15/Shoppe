import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart';
import '../../core/api/api_error_model.dart';
import '../../core/api/api_request_result.dart';
import '../../core/helpers/helpers.dart';
import '../../core/providers/core_providers.dart';
import '../../core/utils/utils.dart';
import '../../core/widgets/core_widgets.dart';
import 'data/api/reset_pass_api_service.dart';
import 'data/models/reset_pass_request_body.dart';
import 'presentation/providers/reset_pass_provider.dart';

part 'data/models/reset_pass_view_params.dart';
part 'data/repo/reset_pass_repo.dart';
part 'presentation/views/reset_pass_view.dart';
part 'presentation/views/widgets/confirm_pass_field_consumer.dart';
part 'presentation/views/widgets/reset_pass_button_consumer.dart';
part 'presentation/views/widgets/reset_pass_form_consumer.dart';
