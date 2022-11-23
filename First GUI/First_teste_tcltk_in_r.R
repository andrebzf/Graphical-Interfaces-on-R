library(tcltk)

#SETTING THEME TO TK GUI
.Tcl("ttk::style theme use clam")

####### CREATING IMAGES:

#CREATING A VARIABLE FOR AN IMAGE:
img1 <- tclVar()
#SETTING THE IMAGE TO THE VARIABLE:
tclimg1 <- tkimage.create("photo", img1, file = "button.png")

img2 <- tclVar()
tclimg2 <- tkimage.create("photo", img2, file = "hearthicon.png")
#######

#CREATING THE TOP LEVEL OF THE GUI
window <- tktoplevel(width = 300,height = 300, background = "gray")
#SETTING THE TOP LEVEL TO UNJUSTABLE
tkwm.resizable(window, FALSE, FALSE)
#SETTING THE TITTLE OF THE WINDOW
tkwm.title(window, "Button Hello User")
#CHANGING THE ICON FROM THE GUI (TCL AND R FUNCTION)
tcl("wm", "iconphoto", window, "-default", tclimg2)

#CREATING A FRAME TO ADJUST ALL THE WIDGETS
frame <- tkframe(window, background = "gray")

#TITLE
label1 <- tklabel(frame, text = "Hello You", font = "Times 20 bold",foreground = "white", background = "gray")
#ENTRY TITLE
label2 <- tklabel(frame,text = "Insert your name below: ", font = "Times 10", foreground = "white", background = "gray" )

##########ENTRY OF VALUES
#CREATING A VARIBLE FOR THE ENTRY
entry_value <- tclVar("")
#CREATING THE ENTRY WIDGET
entry <- ttkentry(frame, textvariable = entry_value)


#CREATING A BUTTON TO INTERACT
click <- tkbutton(frame, text = "CLICK", image = tclimg1, background = "gray" , command = function(){
    #A MESSAGE FOR THE USER IN THE MAIN WINDOWS
    msg <- sprintf("Hello, %s" , tclvalue(entry_value))
    #SETTING THE LABEL WITH THE MESSAGE
    label3 <- tklabel(frame, text = msg, font = "Times 15 bold")
    #PACKING THE LABEL
    tkpack(label3, side = "bottom")
    #CREATING A POPUP MESSAGE
    tkmessageBox(message = "Beautiful Name! <3")
    #PRINTING IN CONSOLE
    print(msg)
    #CLOSING THE MAIN WINDOW AFTER THE OK IN MESSAGE BOX
    tkdestroy(label3)
    tclvalue(entry_value) <- ""
    
  }
)

########ORDERNATING THE WIDGETS
tkpack.propagate(window, FALSE)
tkpack(frame, anchor = "center", expand = T)
tkpack(label1)
tkpack(label2)
tkpack(entry)
tkpack(click)


