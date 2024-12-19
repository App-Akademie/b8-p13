import '../models/meal.dart';

abstract class DatabaseRepository {
  void addMeal(Meal meal);
  List<Meal> getMeals();
  void deleteMeal(Meal meal);
  void updateMeal(Meal oldMeal, Meal newMeal);
}
