years<-c("20 years old", "1 years old")
extract_numeric(years)

d1 <- strsplit(years, " ");d1
d1 <- strsplit(dados4, " ");d1

fun1 <- function(years) {
  ge<-gregexpr("(^-?|(?<=\\D)-)?(\\d\\.?\\d*?)+",years,perl=T)
  return(as.numeric(sapply(regmatches(years,ge),paste0,collapse="")))
}
df1[] <- lapply(df1,fun1)

extract_numeric(dados4[4])

dados5 <- dados4[4] %>% list();dados5

dados5 <- as.numeric(regmatches(dados5, regexpr("\\d+", dados5)))
dados5

dados5[is.na(as.numeric(dados5)),]

library(stringr)
numextract <- function(string){str_extract(string, "\\-*\\d+\\.*\\d*")} 
numextract(c("30.5ml", "37ml"))

dados5<-numextract(c(dados4[3])
numextract(">2g") %>% as.double()

colnames(dados4)
rename(dados4,::letters[1:26]::)           
LETTERS2<-c(LETTERS[1:26];LETTERS2
            
names(dados4) <- c(letters(1:26))

            