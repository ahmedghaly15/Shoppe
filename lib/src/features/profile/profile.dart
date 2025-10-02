import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/api_request_result.dart';
import '../../core/api/api_error_model.dart';
import '../../core/models/product.dart';
import '../../core/utils/utils.dart' show executeAndHandleApiRequest;
import 'data/api/profile_api_service.dart';
import 'data/models/shoppe_user.dart';

part 'presentation/views/profile_view.dart';
part 'presentation/providers/recently_viewed_products_provider.dart';
part 'data/repo/profile_repo.dart';
part 'presentation/providers/fetch_profile_provider.dart';
