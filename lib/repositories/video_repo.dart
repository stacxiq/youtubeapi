import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:elearning/core/constants/api_constants.dart';
import 'package:elearning/core/models/failure.dart';
import 'package:elearning/core/network/error_handler.dart';
import 'package:elearning/core/network/network_service.dart';

class VideosRepository {
  Future<Either<Failure, Response>> fetchVideos() async {
    try {
      final response = await Network.dio.get(
          'search?part=snippet&channelId=${ApiConstants.channel_id}&maxResults=10000&order=date&type=video&videoDefinition=high&key=${ApiConstants.api_key}');
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}

final videoRepo = VideosRepository();
