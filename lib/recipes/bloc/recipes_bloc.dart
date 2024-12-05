import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tiger_game/data/data.dart';
import 'package:tiger_game/models/meal.dart';
import 'package:tiger_game/models/recipe.dart';
import 'package:tiger_game/recipes/recipes_widget.dart';

part 'recipes_event.dart';
part 'recipes_state.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  RecipesBloc() : super(const RecipesState()) {
    on<RecipesInitialized>(_onRecipesInitialized);
  }

  List<Recipe> recipes = [];

  void _onRecipesInitialized(
    RecipesInitialized event,
    Emitter<RecipesState> emit,
  ) {
    List<Recipe> recipesAll = Data().recipesList();

    if (event.cuisine != Cuisine.none) {
      for (var recipe in recipesAll) {
        if (recipe.cuisine == event.cuisine) {
          recipes.add(recipe);
        }
      }
    } else {
      recipes = List.from(recipesAll);
    }

    emit(
      RecipesState(
        recipes: recipes,
      ),
    );
  }
}
