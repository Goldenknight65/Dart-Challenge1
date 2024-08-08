import 'dart:io';

void main(List<String> arguments) {
  Map<String, List<String>> recipeManger = {};

  late String userInput;
  do {
    print("1-add food 2- display all recipes 3- search 4- remove");
    userInput = stdin.readLineSync()!;
    switch (userInput.trim()) {
      case == "1":
        print("food name");
        String foodName = stdin.readLineSync()!.trim();
        print("ingredients saperate by space");
        String recipe = stdin.readLineSync()!.trim();

        List<String> recipeList = recipe.trim().split(" ");
        recipeManger.addAll({foodName: recipeList});
        break;
      case == "2":
        if (recipeManger.isNotEmpty) {
          print(recipeManger);
        } else {
          print("no reicspes in the data base");
        }
        break;

      case == "3":
        if (recipeManger.isNotEmpty) {
          print("name of the recipe");
          String search = stdin.readLineSync()!;
          if (recipeManger.containsKey(search)) {
            print("the flowing has been remove");
            print(recipeManger[search]);
          } else {
            print("no reicspes in the data base");
          }
        }
        break;

      case == "4":
        if (recipeManger.isNotEmpty) {
          print("name of the recipe");
          String search = stdin.readLineSync()!;
          if (recipeManger.containsKey(search)) {
            print(recipeManger.remove(search));
          } else {
            print("no reicspes in the data base");
          }
        }
        break;
    }
  } while (userInput != "0");
}
