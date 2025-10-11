import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/experimental/persist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show LucideIcons;

import '../../config/router/app_router.dart';
import '../../config/theming/theming.dart';
import '../../core/providers/core_providers.dart';
import '../../core/utils/utils.dart';

part 'presentation/views/layout_view.dart';
part 'presentation/views/widgets/custom_navigation_destination.dart';
part 'presentation/providers/layout_active_index_provider.dart';
