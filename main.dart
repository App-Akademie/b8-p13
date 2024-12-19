import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/meal.dart';

void main() {
  DatabaseRepository mockDatabase = MockDatabase();
  final kebap = Meal(
      title: 'Döer', cousine: 'Türkisch', location: 'Stadtzentrum', price: 8);

  mockDatabase.addMeal(kebap);
}
