#Button print.
library(tcltk)
number <- tclVar("")

click <- function(){
    print(paste("Click: ", tclvalue(number)))
    tclvalue(number) <- "/"
}
tk <- tktoplevel(bg="Black")

tktitle(tk)<- "Titulo"

frame <- tkframe(tk, bg = "gray", width = 500, height = 500)
entry <- tkentry(frame, textvariable = number)
button <- tkbutton(frame, text="Click", command=click)


tkpack.propagate(tk,FALSE)
tkpack(entry,side="top",pady=50)
tkpack(button,side="top")
tkpack(frame, fill="both",expand = TRUE)


