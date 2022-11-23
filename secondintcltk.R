#Button insert in list and print the list.
library(tcltk)

number = tclVar("")
main <- tktoplevel(bg="gray")
tktitle(main) <- "List"

wind <- tkframe(main, bg = "gray")

entry <- tkentry(wind, textvariable = number)


tkpack.propagate(main,FALSE)
tkpack(entry,side="top",pady=50)
tkpack(wind, fill="both",expand = TRUE)