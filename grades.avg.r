grades.summary <-
function(path, pathTopPng = './') {
    #this is the data file with the grades#
    grades <- read.csv(path)

    divs = grades[1,2:ncol(grades)]

    grades.avg = as.matrix(apply(grades[, 2:ncol(grades)], 2, mean)/divs)

    png(pathToPng)

    plot(as.numeric(grades.avg), type='l', col = 'blue')

    dev.off()

}
