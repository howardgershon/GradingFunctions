grades.surface <-
function(path, pathToPng = './') {

    grades = read.csv(path)

    grades.val = as.matrix(grades[2:nrow(grades), 2:(ncol(grades)-1)])

    png(pathToPng)

    persp(grades.val, col=heat.colors(10), phi=45, theta=45, xlab='student', ylab='problem')

    dev.off()

}
