library(tcltk)

.Tcl("ttk::style theme use clam")

window <- tktoplevel(width = 800, height = 600, background = "gray")

tkwm.title(window, "Notas 2023.1")

frame <- tkframe(window, background = "gray")

frame2 <- tkframe(window, background  = "gray")

frameb <- tkframe(window, background = "gray")
frameb2 <- tkframe(window, background = "gray")

title <- tklabel(frame, text = "Notas 2023.1", font = "Times 30 bold", foreground = "white", background = "gray")

textonomes <- tklabel(frame, text = "Nome do Aluno:", font = "Times 15", foreground = "white", background = "gray")
textonotas <- tklabel(frame2, text = "Notas", font = "Times 20 bold", foreground = "white", background = "gray")

textom <- tklabel(frame2, text = "Matematica: ", font = "Times 15", foreground = "white", background = "gray")
textop <- tklabel(frame2, text = "Portugues: ", font = "Times 15", foreground = "white", background = "gray")
textoh <- tklabel(frame2, text = "Historia: ", font = "Times 15", foreground = "white", background = "gray")
textog <- tklabel(frame2, text = "Geografia: ", font = "Times 15", foreground = "white", background = "gray")
textof <- tklabel(frame2, text = "Filosofia: ", font = "Times 15", foreground = "white", background = "gray")
textos <- tklabel(frame2, text = "Sociologia: ", font = "Times 15", foreground = "white", background = "gray")
textob <- tklabel(frame2, text = "Biologia: ", font = "Times 15", foreground = "white", background = "gray")
textoi <- tklabel(frame2, text = "Ingles: ", font = "Times 15", foreground = "white", background = "gray")

nomevar <- tclVar()
notamvar <- tclVar()
notapvar <- tclVar()
notahvar <- tclVar()
notagvar <- tclVar()
notafvar <- tclVar()
notasvar <- tclVar()
notabvar <- tclVar()
notaivar <- tclVar()

entradanome <- ttkentry(frame, textvariable = nomevar)
entradanotam <- ttkentry(frame2, textvariable = notamvar)
entradanotap <- ttkentry(frame2, textvariable = notapvar)
entradanotah <- ttkentry(frame2, textvariable = notahvar)
entradanotag <- ttkentry(frame2, textvariable = notagvar)
entradanotaf <- ttkentry(frame2, textvariable = notafvar)
entradanotas <- ttkentry(frame2, textvariable = notasvar)
entradanotai <- ttkentry(frame2, textvariable = notaivar)
entradanotab <- ttkentry(frame2, textvariable = notaivar)


notatable <- matrix(0,ncol = 9, nrow = 40)



colnames(notatable) <- c("Nome", "Matematica", "Portugues", "Historia", "Geografia", "Filosofia", "Sociologia", "Biologia", "Ingles")

notatable <- as.data.frame(notatable)


write_xlsx(notatable,col_names = TRUE, path = "C:/Users/obarb/OneDrive/Documentos/CODES/Graphical-Interfaces-on-R/GUI NOTAS/test.xlsx")



count <- 1

click1 <- tkbutton(frameb, text = "Concluir", font = "Times 20 bold", background = "#32CD32", width = 10, height = 2, command = function(){
  
  
  
  
  
})



click2 <- tkbutton(frameb2, text = "Importar Dados", font = "Times 10 bold", background = "gray", width = 13, height = 2, command = function(){
  
  
  
  
  
})


tkpack.propagate(window, FALSE)
tkpack(frame, frame2,expand = T, side = "left")

tkpack(title)

tkpack(textonomes, anchor = "w")
tkpack(entradanome, anchor = "e")


tkpack(textonotas,anchor = "center")
tkpack(textom,anchor ="w")
tkpack(entradanotam, anchor = "se")

tkpack(textop,anchor ="w")
tkpack(entradanotap, anchor = "se")

tkpack(textoh,anchor ="w")
tkpack(entradanotah, anchor = "se")

tkpack(textog,anchor ="w")
tkpack(entradanotag, anchor = "se")

tkpack(textof,anchor ="w")
tkpack(entradanotaf, anchor = "se")

tkpack(textos,anchor ="w")
tkpack(entradanotas, anchor = "se")

tkpack(textob,anchor ="w")
tkpack(entradanotab, anchor = "se")

tkpack(textoi,anchor ="w")
tkpack(entradanotai, anchor = "se")

tkpack(frameb, side = "left")
tkpack(frameb2, side = "bottom")
tkpack(click2, side ="left")
tkpack(click1)
