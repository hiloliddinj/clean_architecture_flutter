import 'package:dartz/dartz.dart';


import '../../../core/error/failure.dart';
import '../../../core/usecases/usecases.dart';
import '../../entities/profile/profile_info/profile.dart';
import '../../repositories/profile/profile_repository.dart';

class GetProfileLocalInfo implements UseCase<Profile, NoParams> {
  final ProfileRepository repository;

  GetProfileLocalInfo(
    this.repository,
  );

  @override
  Future<Either<Failure, Profile>> call(NoParams params) async {
    return await repository.getProfileLocalInfo();
  }
}
