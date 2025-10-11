import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart';
import '../../core/api/api_error_model.dart';
import '../../core/api/api_request_result.dart';
import '../../core/helpers/helpers.dart';
import '../../core/models/email_request_body.dart';
import '../../core/providers/core_providers.dart' show emailProvider;
import '../../core/utils/utils.dart';
import '../../core/widgets/core_widgets.dart';
import '../reset_pass/reset_pass.dart' show ResetPassViewParams;
import 'data/api/otp_api_service.dart';
import 'data/models/otp_request_body.dart';
import 'presentation/providers/otp_providers.dart';

part 'data/repo/otp_repo.dart';
part 'presentation/views/otp_view.dart';
part 'presentation/views/widgets/didnt_receive_otp.dart';
part 'presentation/views/widgets/otp_pinput.dart';
part 'presentation/views/widgets/resend_otp_text_button_consumer.dart';
part 'presentation/views/widgets/validate_otp_button_consumer.dart';
part 'presentation/views/widgets/verify_email_consumer_button.dart';
