
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class PokedexRepositoryImp implements PokedexRepository{

        final PokedexRemoteDataSource remoteDataSource;
        PokedexRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    