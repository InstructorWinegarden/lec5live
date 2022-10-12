# lecture 5 live run
vec_colors <- c("yellow", "green", "blue")

vec_colors[1]
vec_colors[c(1,2)]

vec_squares <- c(1, 4, 9, 16, 25)

vec_mixed <- c(25, "yellow", TRUE)

vec_squared <- sqrt(vec_squares)

c(1, 2, 3, 4, 5) + c(1, 4, 9, 16, 25)

vec1 <- c(1, 2, 3, 4, 5, 6)
vec2 <- c(1, 2)

vec1 + vec2

grades <- c(88, 95, 99, 82, 85)
low_grades <- grades[grades < 90]

(1:100)[c(T,F)]

words <- c("this", "what", "is", "not", "making", "hello", "sense")
phrase <- paste(words[c(T,F)], collapse= " ")

?paste
print(phrase)

shoe_sizes <- c(5.5, 11, 7, 8, 4)
shoe_sizes[c(TRUE, FALSE, FALSE, TRUE, TRUE)]

shoe_is_small <- shoe_sizes < 6

small_shoes <- shoe_sizes[shoe_is_small]
small_shoes <- shoe_sizes[shoe_sizes < 6]

my_list <- list(1, "2", TRUE)

person1 <- list(first_name = "Bob", favorite_band = "Blink 182")

person1$first_name
person1[["first_name"]]
person1[[1]]

person1 <- list(first_name = "Bob",
                favorite_band = "Blink 182",
                age = 50,
                hair_color = "red",
                single = FALSE
                )

person1["first_name"]
person1[["first_name"]]

prices <- list(p1=100, p2=200)
lapply(prices, sqrt)

fn_add_two <- function(num) {
  answer <- num + 2
  return(answer)
}

lapply(prices, fn_add_two)
sapply(prices, fn_add_two)

?lapply
?sapply

my_grades <- list(a1 = 87, a2 = 90, a3 = 92)
my_grades$a2
my_grades$a4
my_grades$a4 <- 72
my_grades[["a5"]] <- 99
my_grades$a7 <- 100
my_grades$a6 <- 80

my_grades[[7]]

my_grades2 <- list(
  vec_homeworks = c(87, 90, 92, 72, 99),
  vec_exercises = c(1, 1, 0, 1, 1, 1 ,1)
)

mean(my_grades2$vec_homeworks)
mean(my_grades2$vec_exercises)

lapply(my_grades2, mean)

fn_add_two <- function(num) {
  answer <- num + 2
  return(answer)
}

fn_add_n <- function(num1, num2) {
  answer <- num1 + num2
  return(answer)
}

my_grades
lapply(my_grades, fn_add_two)

my_grades_upgraded <- lapply(my_grades, fn_add_n, 5)

my_grades2_upgraded <- lapply(my_grades2, fn_add_n, 5)

data_protest <- read.csv("https://countlove.org/data/data.csv")

head(data_protest)
View(data_protest)

num_attendees <- data_protest$Attendees

num_attendees

max_attendees <- max(num_attendees, na.rm = TRUE)
max_attendees

?max

height <- c(58, 59, 60, 61, 62) 
weight <- c(115, 117, 120, 123, 126)
my_data <- data.frame(height, weight)
my_data["height"]
my_data$height
my_data[["height"]]

