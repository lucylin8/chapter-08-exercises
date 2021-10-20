# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- c("porridge","fried egg","seaweeed")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- c("salmon","rice","greens")

# Create a list `meals` that has contains your breakfast and lunch
meals <-list("breakfast" = my_breakfast,"lunch" = my_lunch)
  #print(meals)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner
meals[["dinner"]] <- c("rice","meat","veggies","drink")
  #print(meals)
# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner<- c(meals$dinner)
  #print(dinner)

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
  new_lunch<-c(meals[["lunch"]])
  meals[5] <- new_lunch


# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meals <- list(meals$breakfast, meals$lunch)
  #print(early_meals)

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
num_of_food <- lapply(meals, length)
  #print(num_of_food)


# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector
add_pizza <- function(meal_vector)
{
  new_index <- length(meal_vector) + 1
  meal_vector[new_index] <- "pizza"
  print(meal_vector)
}

# Create a vector `better_meals` that is all your meals, but with pizza!


