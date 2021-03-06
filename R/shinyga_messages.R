#' initMessageData - creates Message object
#' 
#' Use this first before addMessageData adds to the notification menu when stuff happens
#' @seealso
#' \url{http://rstudio.github.io/shinydashboard/appearance.html#icons}
#' 
#' @param text Text of message.
#' @param icon Icon taken from shinydashboard. 
#' @param status Color of message. See Details.
#' @return messageData Object to be passed to addMessageData().
#' @family message functions
#' @examples
#' \dontrun{
#' 
#' ## server.r
#' shinyServer(function(input, output, session) {
#' 
#'     messageData <- initMessageData()
#' 
#'     addMessageData(messageData, "A new message!")
#'     
#'       output$messageMenu <- renderDropdownMenu({
#'       
#'       message_df <- data.frame(text = messageData$text,
#'                                icon = messageData$icon,
#'                                status = messageData$status)
#'                                
#'      msgs <- apply(message_df, 1, function(row){
#'                    notificationItem(text = row[['text']], 
#'                                     icon = icon(row[['icon']]), 
#'                                     status = row[['status']])
#'                                     
#'                    })
#'      
#'      dropdownMenu(type="notifications", .list = msgs)
#'      
#'      })
#'     
#' }
#' 
#' ## ui.r
#' 
#' dashboardHeader(title = "GA Forecast",
#'                 dropdownMenuOutput("messageMenu"))
#' }
initMessageData  <- function(text = c('Welcome! Authenticate to get started.'),
                             icon = c('smile-o'),
                             status = c('info')){
  
  rv <- reactiveValues(text=text,
                       icon=icon,
                       status=status)
}


#' addMessageData - creates another Message object
#' 
#' Use this after initMessageData to add a message when stuff happens
#' Icons from shinydashboard functions
#' @seealso
#' \url{http://rstudio.github.io/shinydashboard/appearance.html#icons}
#' 
#' @param messageData Pass in the existing messageObject created by initMessageData.
#' @param addText The message to add.
#' @param addIcon Icon taken from shinydashboard.  See Details. 
#' @param addStatus Color of message, see Details.
#' @return Nothing.
#' @family message functions
#' @examples
#' \dontrun{
#' 
#' ## server.r
#' shinyServer(function(input, output, session) {
#' 
#'     messageData <- initMessageData()
#' 
#'     addMessageData(messageData, "A new message!")
#'     
#'       output$messageMenu <- renderDropdownMenu({
#'       
#'       message_df <- data.frame(text = messageData$text,
#'                                icon = messageData$icon,
#'                                status = messageData$status)
#'                                
#'      msgs <- apply(message_df, 1, function(row){
#'                    notificationItem(text = row[['text']], 
#'                                     icon = icon(row[['icon']]), 
#'                                     status = row[['status']])
#'                                     
#'                    })
#'      
#'      dropdownMenu(type="notifications", .list = msgs)
#'      
#'      })
#'     
#' }
#' 
#' ## ui.r
#' 
#' dashboardHeader(title = "GA Forecast",
#'                 dropdownMenuOutput("messageMenu"))
#' }
addMessageData <- function(messageData,
                           addText,
                           addIcon='users',
                           addStatus='success'){
  
  messageData$text   <- c(addText, isolate(messageData$text))
  messageData$icon   <- c(addIcon, isolate(messageData$icon))
  messageData$status <- c(addStatus, isolate(messageData$status)) 
}
