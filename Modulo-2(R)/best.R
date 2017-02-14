# Check that estado and outcome are valid 
# Return hospital name in that estado with lowest 30-day death rate 
best <- function(state, outcome) {
        ## Read outcome data
        data <- read.csv("~/IES/Data Science/Curso/Modulo-2(R)/outcome-of-care-measures.csv")
        
        ## Check that state and outcome are valid
        states <- levels(data[, 7])[data[, 7]]
        state_flag <- FALSE
        for (i in 1:length(states)) {
                if (state == states[i]) {
                        state_flag <- TRUE
                }
        }
        if (!state_flag) {
                stop ("invalid state")
        } 
        if (!((outcome == "heart attack") | (outcome == "heart failure")
              | (outcome == "pneumonia"))) {
                stop ("invalid outcome")
        }
        
        ## Return hospital name in that state with lowest 30-day death rate
        col <- if (outcome == "heart attack") {
                11
        } else if (outcome == "heart failure") {
                17
        } else {
                23
        }
        
        data[, col] <- suppressWarnings(as.numeric(levels(data[, col])[data[, col]]))
        data[, 2] <- as.character(data[, 2])
        statedata <- data[grep(state, data$State), ]
        orderdata <- statedata[order(statedata[, col], statedata[, 2], na.last = NA), ]
        orderdata[1, 2]
}