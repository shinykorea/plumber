library(plumber) # server
#library(RMySQL) # DB

CONTROLLER_PATH = "controller/"
server <- plumber$new()
controllers <- gsub( ".R" , "" , list.files( path = CONTROLLER_PATH ) )
for (controller in controllers) {
  m <- plumber$new( paste( CONTROLLER_PATH , controller , ".R" , sep = "" ) )
  server$mount( paste("/", controller, sep="") , m)
}
server$run(port=8000, host = "0.0.0.0")
