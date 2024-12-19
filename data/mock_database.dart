import '../models/meal.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  final List<Meal> _meals = [];
  @override
  void addMeal(Meal meal) {
    _meals.add(meal);
  }

  @override
  void deleteMeal(Meal meal) {
    _meals.remove(meal);
  }

  @override
  List<Meal> getMeals() {
    return _meals;
  }

  @override
  void updateMeal(Meal oldMeal, Meal newMeal) {
    if (_meals.contains(oldMeal)) {
      final index = _meals.indexOf(oldMeal);
      _meals[index] = newMeal;
    }
  }
}
