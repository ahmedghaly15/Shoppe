import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/api_request_result.dart';
import '../../core/utils/utils.dart';
import '../../core/api/api_error_model.dart';
import 'data/api/cart_api_service.dart';

import 'data/models/fetch_cart_request_response.dart';

part 'presentation/views/cart_view.dart';
part 'data/repo/cart_repo.dart';
part 'presentation/providers/fetch_cart_provider.dart';
