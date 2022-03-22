#Exo de R
  
            # ANALYSE UNIVARIEE

  #Exo_1

# Charger l'extension
library(questionr)
# Charger la base hdv2003
data("hdv2003")
# Affectation de la base 
df <- hdv2003
# Dimention de la base et noms de variables
dim(df)
colnames(df)

  #Exo_2

# Analyse descriptive de la colonne heures.tv
summary(df["heures.tv" ])
# Representation par un diagramme en 10 classe de heures.tv
hist(df$heures.tv, breaks = 10,
     main = "Histogramme representant des heures de travaille des enquetes",
     xlab = "Heure de travaille",)

  #Exo_3
# trie a plat
table(df$trav.imp)
# trie a plat, effectifs et frequences
tab <-table(df$trav.imp)
freq(tab,
       #valid indique si on souhaite ou non affcher les pourcentages sur les valeurs valides
       valid = FALSE, 
       total = TRUE, 
       sort = "dec")
# Y a-t-il des valeurs manquantes
#Etant donné que le total des fréquences  est 100% donc il n'y a pas de valeurs manquantes
# Representation avec diagramme en barre
barplot(tab,col = c("skyblue","snow","thistle","yellow"),legend.text = c("Moins important que le reste", "Aussi important que le reste", "Peu important", "Le plus important"),args.legend=list(x="topleft")) 
# Representation avec diagramme en barre couleur tomate
barplot(tab, col = "tomato2")
# Representation avec diagramme en barre couleur preferee
barplot(tab, col = "wheat")


                # ANALYSE BIVARIEE

    # EXO_1
