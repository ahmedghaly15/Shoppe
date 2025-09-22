import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show ShadForm, SvgPicture;
import 'package:shoppe/src/core/helpers/helpers.dart';

import '../../config/theming/theming.dart' show AppTextStyles;
import '../../core/api/api_request_result.dart';
import '../../core/models/email_request_body.dart';
import '../../core/providers/form_providers.dart';
import '../../core/utils/utils.dart'
    show AppStrings, Assets, executeAndHandleApiRequest;
import '../../core/widgets/core_widgets.dart';
import '../otp/otp.dart';
import 'data/api/forgot_pass_api_service.dart';
import 'presentation/providers/forgot_pass_provider.dart';

part 'data/repo/forgot_pass_repo.dart';
part 'presentation/views/forgot_password_view.dart';
part 'presentation/views/widgets/forgot_pass_button_consumer.dart';
part 'presentation/views/widgets/forgot_pass_section.dart';
part 'presentation/views/widgets/forgot_password_form_consumer.dart';
