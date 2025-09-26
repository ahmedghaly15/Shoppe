import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/api/api_request_result.dart';
import '../../core/utils/utils.dart';
import 'data/api/reviews_api_service.dart';
import 'data/models/fetch_product_reviews_request_body.dart';
import 'data/models/fetch_product_reviews_request_response.dart';
import '../../core/api/api_error_model.dart';

part 'data/repo/reviews_repo.dart';
part 'presentation/providers/fetch_product_reviews_provider.dart';
part 'presentation/views/reviews_view.dart';
