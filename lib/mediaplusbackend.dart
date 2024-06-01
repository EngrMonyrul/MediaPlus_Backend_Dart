//-------------------------------------->
//---- Author: Monirul Islam
//---- Created On: 5/30/2024 at 12:59PM
//---- Note: This class is a library or collection of necessary libraries or dependencies or set of codes or files of project
//---- Necessary Link : (https://dart.dev/language/libraries)
//--------------------------------------->
library mediaplusbackend;

/*------------------------>
*-------> imports
<-------------------------*/
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mediaplusbackend/models/baseResponse/base_response.dart';
import 'package:mediaplusbackend/utils/diServices/initDi/init_di.dart';
import 'package:provider/provider.dart';
import 'package:get_it/get_it.dart';
import 'package:retrofit/http.dart';

import 'models/item/item.dart';
import 'models/trendingVideoResponse/trending_video_response.dart';
import 'network/api_client.dart';

/*------------------------>
*-------> exports
<-------------------------*/
export 'utils/diServices/initDi/init_di.dart';
export 'network/api_client.dart';
/*-------------------> data models <-------------------*/
export 'models/trendingVideoResponse/trending_video_response.dart';
export 'models/item/item.dart';
export 'models/contentDetails/content_details.dart';
export 'models/contentRating/content_rating.dart';
export 'models/localized/localized.dart';
export 'models/thumbnails/thumbnails.dart';
export 'models/default/default.dart';
export 'models/statistics/statistics.dart';
export 'models/pageInfo/page_info.dart';

/*------------------------>
*-------> parts
<-------------------------*/
part 'my_app.dart';
part 'utils/initPackages/init_packages.dart';
part 'utils/initProviders/init_providers.dart';
part 'utils/errorHandling/error_handling.dart';
part 'utils/inteceptors/custom_interceptor.dart';
part 'utils/enums/region_enum.dart';

/*-------------------> providers <-------------------*/
part 'data/providers/trendingMediaProviders/trending_media_provider.dart';
part 'data/providers/trendingMediaProviders/trending_media_provider_impl.dart';

/*-------------------> repo <-------------------*/
part 'repository/trending_media_repo.dart';

/*-------------------> di_services <-------------------*/
part 'utils/diServices/regDi/reg_di.dart';

/*-------------------> storage <-------------------*/
part 'data/localStorage/local_storage.dart';
part 'data/localStorage/local_storage_impl.dart';

/*-------------------> network <-------------------*/
