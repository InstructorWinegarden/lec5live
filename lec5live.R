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

?lapply
