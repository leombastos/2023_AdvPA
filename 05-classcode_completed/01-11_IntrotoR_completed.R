## 2023 CRSS 4060/6060 - Jan 11 Agenda

# Housekeeping:
## Website (bookmark it!): https://leombastos.github.io/bastoslab/teaching/2023-apa/2023-apa.html
## GitHub: material, constantly being updated 
## YouTube: recordings  

# Setting up RStudio:
## Tools > Global Options > General > Workspace > uncheck "Restore ...", select "Never" on dropdown menu  
## Tools > Global Options > R markdown > Show in document outline > Sections and Named Chunks


# Learning objectives ----
# - Become familiarized with using R and RStudio
# - Learn about R terminology and syntax
# - Understand different object types
# - Create a simple data, explore it with numbers and graphics
# - Learn about RStudio projects, create your own, set up proper sub-directories  


# 1) R/Rstudio ----

## Why R? 
### free, 
### runs on multiple platforms, 
### online community and support, 
### continuous development, 
### reproducible research!

## Why RStudio?
### Integrates various components of an analysis
### Colored syntax
### Syntax suggestions

## RStudio panels
### Script  
### Console
### Environment
### Files/Plots/Help

# 2) R terminology ----
## Object
45
45/13
a <- 45/13
a

b <- c(10,15, 5)
b

c <- "precision ag"
c

## Object classes
### Data frame
d <- data.frame(number = b,
                id = c)

d

### Matrices
e <- matrix(c(b,b), 
            ncol = 2 )
e

### Lists 
f <- list("number" = a, "numbers" = b,
          "word" = c, "data" = d)

f

class(f)

class(f$number)


## Function
mean(b)

mean(x = b)

## Argument
help("mean")

b2 <- c(10,15,5,NA)

mean(b2)

mean(x = b2, 
     na.rm = TRUE)

mean(b2, 
     TRUE)

mean(TRUE,
     b2)

mean(na.rm = TRUE, 
     x = b2)

## Package
## Install vs. load a package
## Let's install package tibble, then load it
install.packages("tibble")
library(tibble)

# 3) Creating a data set, exploring it ----
intro <- tribble(~name, ~height, ~favcrop, 
                 "L", 1, "soybeans",
                 "P", 2, "corn"
                 )
  
# Check class, summary, and structure
class(intro)
summary(intro)

head(intro, n = 2)
tail(intro, n = 2)

class(intro$favcrop)

# Sampling the dataset
# First row only
intro[1 , ]


# First column only
intro[ , 1]

# Rows 1 to 3 and columns 1 to 3
intro[1:3 , 1:3]

# Rows 1 and 3 and columns 1 and 3
intro[c(1,3) , c(1,3)]

# 4) ggplot2 philosophy and plots ---- 

library(ggplot2)
# Point
ggplot(data = intro, 
       mapping = aes(y = height, 
                     x = name, 
                     color = favcrop))+
  geom_point()

# Customizing
ggplot(data = intro, 
       mapping = aes(y = height, 
                     x = name, 
                     color = favcrop,
                     shape = favcrop))+
  geom_point()+
  scale_color_colorblind()+
  theme_dark()


# Exporting
ggsave("~/Desktop/plot1.png")

# 5) RStudio projects ----
## Create a folder on your Desktop named 2023_AdvPA-initials
## Create sub-folders data, code, output
## Create an RStudio project at the level of main folder (e.g., 2023_AdvPA-initials)
## Create an Rmarkdwon file (just to explore, not saving it) 

# 6) Assignment #1 - Play with ggplot
# Play with scale_color_ , explore the available options, choose one different from the one in class
# play with theme_ , explore the available options, choose one different from the one in class
# Export your new version saving it as "plot_a1_LASTNAME.png"
# Upload your new plot to GitHub under issue "Assignment #1"






