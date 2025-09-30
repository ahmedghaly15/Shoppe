import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/api_request_result.dart';
import '../../core/utils/utils.dart';
import 'data/api/orders_api_service.dart';
import 'data/models/checkout_request_body.dart';
import 'data/models/checkout_request_response.dart';
import 'data/models/fetch_orders_request_body.dart';
import 'data/models/fetch_orders_request_response.dart';

part 'presentation/views/orders_view.dart';
part 'data/repo/orders_repo.dart';
