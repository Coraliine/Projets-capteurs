#### 1. Importation des 8 jeux de données

#### 1. Importation des 8 jeux de données

## Installation du package here

install.packages("here")

# Charger le package here
library(here)

# Importer les jeux de données
data.D24130006 <- read.csv(here("data", "D24130006(01-08-2024@14.csv"), header = TRUE, sep = ";")
data.D24130009 <- read.csv(here("data", "D24130009(01-08-2024@14.csv"), header = TRUE, sep = ";")
data.D24130002 <- read.csv(here("data", "D24130002(01-08-2024@14.csv"), header = TRUE, sep = ";")
data.D24130004 <- read.csv(here("data", "D24130004(01-08-2024@14.csv"), header = TRUE, sep = ";")
data.D24130003 <- read.csv(here("data", "D24130003(01-08-2024@14.csv"), header = TRUE, sep = ";")
data.D24091017 <- read.csv(here("data", "D24091017(01-08-2024@14.csv"), header = TRUE, sep = ";")
data.D24091020 <- read.csv(here("data", "D24091020(01-08-2024@14.csv"), header = TRUE, sep = ";")
data.D24091014 <- read.csv(here("data", "D24091014(01-08-2024@14.csv"), header = TRUE, sep = ";")

#### 2.Préparation des données

# 2.1. Pour le capteur D24130006

#Remplacer les virgules par des points
data.D24130006$Temp <- gsub(",", ".", data.D24130006$Temp)

# Convertir la colonne "Temp" en numérique
data.D24130006$Temp <- as.numeric(data.D24130006$Temp)

# Convertir la colonne "Date" en format Date
data.D24130006$Date <- as.Date(data.D24130006$Date, format = "%Y-%m-%d")

# 2.2. Pour le capteur D24130009

#Remplacer les virgules par des points
data.D24130009$Temp <- gsub(",", ".", data.D24130009$Temp)

# Convertir la colonne "Temp" en numérique
data.D24130009$Temp <- as.numeric(data.D24130009$Temp)

# Convertir la colonne "Date" en format Date
data.D24130009$Date <- as.Date(data.D24130009$Date, format = "%Y-%m-%d")

# 2.3. Pour le capteur D24130002

#Remplacer les virgules par des points
data.D24130002$Temp <- gsub(",", ".", data.D24130002$Temp)

# Convertir la colonne "Temp" en numérique
data.D24130002$Temp <- as.numeric(data.D24130002$Temp)

# Convertir la colonne "Date" en format Date
data.D24130002$Date <- as.Date(data.D24130002$Date, format = "%Y-%m-%d")

# 2.4. Pour le capteur D24130004

#Remplacer les virgules par des points
data.D24130004$Temp <- gsub(",", ".", data.D24130004$Temp)

# Convertir la colonne "Temp" en numérique
data.D24130004$Temp <- as.numeric(data.D24130004$Temp)

# Convertir la colonne "Date" en format Date
data.D24130004$Date <- as.Date(data.D24130004$Date, format = "%Y-%m-%d")

# 2.5. Pour le capteur D24130003

#Remplacer les virgules par des points
data.D24130003$Temp <- gsub(",", ".", data.D24130003$Temp)

# Convertir la colonne "Temp" en numérique
data.D24130003$Temp <- as.numeric(data.D24130003$Temp)

# Convertir la colonne "Date" en format Date
data.D24130003$Date <- as.Date(data.D24130003$Date, format = "%Y-%m-%d")

# 2.6. Pour le capteur D24091017

#Remplacer les virgules par des points
data.D24091017$Temp <- gsub(",", ".", data.D24091017$Temp)

# Convertir la colonne "Temp" en numérique
data.D24091017$Temp <- as.numeric(data.D24091017$Temp)

# Convertir la colonne "Date" en format Date
data.D24091017$Date <- as.Date(data.D24091017$Date, format = "%Y-%m-%d")

# 2.7. Pour le capteur D24091020

#Remplacer les virgules par des points
data.D24091020$Temp <- gsub(",", ".", data.D24091020$Temp)

# Convertir la colonne "Temp" en numérique
data.D24091020$Temp <- as.numeric(data.D24091020$Temp)

# Convertir la colonne "Date" en format Date
data.D24091020$Date <- as.Date(data.D24091020$Date, format = "%Y-%m-%d")


# 2.8. Pour le capteur D24091014

#Remplacer les virgules par des points
data.D24091014$Temp <- gsub(",", ".", data.D24091014$Temp)

# Convertir la colonne "Temp" en numérique
data.D24091014$Temp <- as.numeric(data.D24091014$Temp)

# Convertir la colonne "Date" en format Date
data.D24091014$Date <- as.Date(data.D24091014$Date, format = "%Y-%m-%d")

#Harmoniser le nom de colonne Capteur.ID

colnames(data.D24091014)[colnames(data.D24091014) == "Capteur_ID"] <- "Capteur.ID"


## Raccourcir le nom des capteurs

data.D24130006$Capteur.ID <- sub("D241300", "D", data.D24130006$Capteur.ID)

data.D24130009$Capteur.ID <- sub("D241300", "D", data.D24130009$Capteur.ID)

data.D24130002$Capteur.ID <- sub("D241300", "D", data.D24130002$Capteur.ID)

data.D24130004$Capteur.ID <- sub("D241300", "D", data.D24130004$Capteur.ID)

data.D24130003$Capteur.ID <- sub("D241300", "D", data.D24130003$Capteur.ID)

data.D24091017$Capteur.ID <- sub("D240910", "D", data.D24091017$Capteur.ID)

data.D24091020$Capteur.ID <- sub("D240910", "D", data.D24091020$Capteur.ID)

data.D24091014$Capteur.ID <- sub("D240910", "D", data.D24091014$Capteur.ID)

#### 3. Analyse des données

## 3.1. Calculs des moyennes, min, max et écart-types

summary(data.D24091014$Temp)
summary(data.D24091017$Temp)
summary(data.D24091020$Temp)
summary(data.D24130002$Temp)
summary(data.D24130003$Temp)
summary(data.D24130004$Temp)
summary(data.D24130006$Temp)
summary(data.D24130009$Temp)

ecart_type14 <- sd(data.D24091014$Temp)
ecart_type17 <- sd(data.D24091017$Temp)
ecart_type20 <- sd(data.D24091020$Temp)
ecart_type02 <- sd(data.D24130002$Temp)
ecart_type03 <- sd(data.D24130003$Temp)
ecart_type04 <- sd(data.D24130004$Temp)
ecart_type06 <- sd(data.D24130006$Temp)
ecart_type09 <- sd(data.D24130009$Temp)


moyennes<-list(mean(data.D24130006$Temp), mean(data.D24130009$Temp), mean(data.D24130002$Temp), mean(data.D24130004$Temp), mean(data.D24130003$Temp), mean(data.D24091017$Temp), mean(data.D24091020$Temp), mean(data.D24091014$Temp))

moyennes_vecteur <- unlist(moyennes)

moyenne_generale <- mean(moyennes_vecteur) ## Calculer la moyenen générale de tous les Capteurs

#### 4. Création du graphique des moyennes de températures

# Créer un dataframe
df_moyennes <- data.frame(
  jeu_de_donnees = c("D24130006", "D24130009", "D24130002", "D24130004", "D24130003", "D24091017", "D24091020", "D24091014"),
  temperature_moyenne = moyennes_vecteur
) 

library(ggplot2)

ggplot(df_moyennes, aes(x = jeu_de_donnees, y = temperature_moyenne)) +
  geom_bar(stat = "identity", fill = "purple", width = 0.5) +
  labs(title = "Températures Moyennes par Capteur",
       x = "Capteur",
       y = "Température Moyenne") +
  theme_light() +
  theme(panel.grid.major = element_line(color = "grey", size = 0.5),  # Lignes principales
        panel.grid.minor = element_line(color = "lightgrey", size = 0.25),  # Lignes mineures
        axis.text.x = element_text(angle = 45, hjust = 1),  # Incline les étiquettes de l'axe x à 45°
        plot.title = element_text(hjust = 0.5)) +  # Centre le titre
  scale_x_discrete(expand = c(0, 0))  # Supprime l'espace avant le début des données



#### 5. Création des graphiques des jours les plus chauds

# 5.1. Calcul des jours les plus chauds

install.packages("dplyr")

library(dplyr)

## 5.1.1. Calculer la température maximale par jour pour D24130006
temperature_max <- data.D24130006 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D2413006 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D2413006)


## 5.1.2. Calculer la température maximale par jour pour D24130009
temperature_max <- data.D24130009 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D24130009 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D24130009)


## 5.1.3. Calculer la température maximale par jour pour D24130002
temperature_max <- data.D24130002 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D24130002 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D24130002)


# 5.1.4. Calculer la température maximale par jour pour D24130004
temperature_max <- data.D24130004 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D24130004 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D24130004)


## 5.1.5. Calculer la température maximale par jour pour D24130003
temperature_max <- data.D24130003 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D24130003 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D24130003)


## 5.1.6. Calculer la température maximale par jour pour D24091017
temperature_max <- data.D24091017 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D24091017 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D24091017)


## 5.1.7. Calculer la température maximale par jour pour D24091020
temperature_max <- data.D24091020 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D24091020 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D24091020)


## 5.1.8. Calculer la température maximale par jour pour D24091014
temperature_max <- data.D24091014 %>%
  group_by(Date) %>%
  summarise(max_temp = max(Temp, na.rm = TRUE))

# Identifier le jour le plus chaud
jour_plus_chaud_D24091014 <- temperature_max %>%
  filter(max_temp == max(max_temp))

# Afficher le jour le plus chaud et sa température
print(jour_plus_chaud_D24091014)


# 5.2. Sélection des données du 12.08.2024

## 5.2.1. Sélection données du jour le plus chaud pour D24130006

data_selection12_D24130006 <- data.D24130006[data.D24130006$Date == as.Date("2024-08-12"), ]  

## 5.2.2. Sélection données du jour le plus chaud pour D24130009

data_selection12_D24130009 <- data.D24130009[data.D24130009$Date == as.Date("2024-08-12"), ]

## 5.2.3. Sélection données du jour le plus chaud pour D24130002

data_selection12_D24130002 <- data.D24130002[data.D24130002$Date == as.Date("2024-08-12"), ]  

## 5.2.4. Sélection données du jour le plus chaud pour D24130004

data_selection12_D24130004 <- data.D24130004[data.D24130004$Date == as.Date("2024-08-12"), ]

## 5.2.5. Sélection données du jour le plus chaud pour D24130003

data_selection12_D24130003 <- data.D24130003[data.D24130003$Date == as.Date("2024-08-12"), ]

## 5.2.6. Sélection données du jour le plus chaud pour D24091017

data_selection12_D24091017 <- data.D24091017[data.D24091017$Date == as.Date("2024-08-12"), ]

## 5.2.7. Sélection données du jour le plus chaud pour D24091020

data_selection12_D24091020 <- data.D24091020[data.D24091020$Date == as.Date("2024-08-12"), ]

## 5.2.8.Sélection données du jour le plus chaud pour D24091014

data_selection12_D24091014 <- data.D24091014[data.D24091014$Date == as.Date("2024-08-12"), ]

# 5.3. Combiner les données dans un dataframe

combined_data12 <- rbind(data_selection12_D24130006, data_selection12_D24130009, data_selection12_D24130002, data_selection12_D24130004, data_selection12_D24130003, data_selection12_D24091017, data_selection12_D24091020, data_selection12_D24091014)

## 5.4. Combiner date et heure dans une colonne

combined_data12$datetime <- as.POSIXct(paste(combined_data12$Date, combined_data12$Time), format="%Y-%m-%d %H:%M")


# 5.5. Création du graphique du 12.08
# Charger ggplot2
library(ggplot2)

# Créer le graphique avec des labels d'heures et une rotation diagonale
ggplot(combined_data12, aes(x = datetime, y = Temp, color = Capteur.ID)) +
  geom_line() +
  labs(title = "Évolution des températures du 12 août 2024",
       x = "Heure", 
       y = "Température (°C)",
       color = "Capteurs") +
  scale_x_datetime(date_labels = "%H:%M", date_breaks = "2 hours", expand = c(0, 0)) +
  scale_y_continuous(breaks = seq(ceiling(min(combined_data12$Temp, na.rm = TRUE)), 
                                  floor(max(combined_data12$Temp, na.rm = TRUE)), 
                                  by = 5)) +
  theme_light() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),
        plot.title = element_text(hjust = 0.5))


#### 6. Intégration des scénarios RCP pour le 12.08

# 6.1. Calcul de la moyenne des 8 Capteur pour le 12.08

library(dplyr)

# Calculer la moyenne des températures par horodatage (colonne 'Time')
mean_data12 <- combined_data12 %>%
  group_by(Time) %>%
  summarise(Temp_mean = mean(Temp, na.rm = TRUE))  # Moyenne des températures de tous les Capteur à chaque instant

# 6.2. Ajouter les fourchettes de température du scénario RCP2.6 et RCP8.5 pour chaque période

# Ajouter les scénarios RCP à partir de la moyenne calculée
mean_data12$Temp_RCP26_min_proche <- mean_data12$Temp_mean + 0.7
mean_data12$Temp_RCP26_max_proche <- mean_data12$Temp_mean + 2.1
mean_data12$Temp_RCP85_min_proche <- mean_data12$Temp_mean + 1.2
mean_data12$Temp_RCP85_max_proche <- mean_data12$Temp_mean + 2.3

# Milieu du siècle - 2060
mean_data12$Temp_RCP26_min_milieu <- mean_data12$Temp_mean + 0.9
mean_data12$Temp_RCP26_max_milieu <- mean_data12$Temp_mean + 2.5
mean_data12$Temp_RCP85_min_milieu <- mean_data12$Temp_mean + 2.3
mean_data12$Temp_RCP85_max_milieu <- mean_data12$Temp_mean + 4.4

# Fin du siècle - 2085
mean_data12$Temp_RCP26_min_fin <- mean_data12$Temp_mean + 0.7
mean_data12$Temp_RCP26_max_fin <- mean_data12$Temp_mean + 2.4
mean_data12$Temp_RCP85_min_fin <- mean_data12$Temp_mean + 4.1
mean_data12$Temp_RCP85_max_fin <- mean_data12$Temp_mean + 7.2

# 6.3. Création du graphique pour l'avenir proche

library(ggplot2)

ggplot(mean_data12, aes(x = Time, group = 1)) +
  
  # Tracer la température moyenne
  geom_line(aes(y = Temp_mean), color = "blue", linewidth = 1, linetype = "solid") +
  
  # Fourchettes RCP 2.6 pour l'avenir proche
  geom_ribbon(aes(ymin = Temp_RCP26_min_proche, ymax = Temp_RCP26_max_proche, fill = "RCP 2.6"), alpha = 0.2) +
  
  # Fourchettes RCP 8.5 pour l'avenir proche
  geom_ribbon(aes(ymin = Temp_RCP85_min_proche, ymax = Temp_RCP85_max_proche, fill = "RCP 8.5"), alpha = 0.2) +
  
  # Ajouter un titre et des labels pour les axes
  labs(title = "Projections des Scénarios RCP sur la Moyenne des Températures du 12 Août pour l'horizon 2035",
       x = "Heure de la journée", 
       y = "Température (°C)",
       fill = "Scénarios RCP :") +  # Légende pour les fourchettes
  
  # Ajouter une légende et styliser
  scale_fill_manual(values = c("RCP 2.6" = "green", "RCP 8.5" = "red")) +
  
  # Afficher une heure sur deux sur l'axe des X
  scale_x_discrete(breaks = mean_data12$Time[c(TRUE, FALSE)], expand = c(0, 0)) +  # Supprime l'espace avant la première donnée
  
  # Thème light avec légende en haut
  theme_light() +
  theme(legend.position = "top") +
  
  # Incliner les étiquettes de l'axe des X à 45°
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  
        plot.title = element_text(hjust = 0.5))  # Centre le titre


## 6.4. Création du graphique pour le milieu du siècle

library(ggplot2)

ggplot(mean_data12, aes(x = Time, group = 1)) +
  
  # Tracer la température moyenne
  geom_line(aes(y = Temp_mean), color = "blue", linewidth = 1, linetype = "solid") +
  
  # Fourchettes RCP 2.6 pour l'avenir moyen proche
  geom_ribbon(aes(ymin = Temp_RCP26_min_milieu, ymax = Temp_RCP26_max_milieu, fill = "RCP 2.6"), alpha = 0.2) +
  
  # Fourchettes RCP 8.5 pour l'avenir moyen proche
  geom_ribbon(aes(ymin = Temp_RCP85_min_milieu, ymax = Temp_RCP85_max_milieu, fill = "RCP 8.5"), alpha = 0.2) +
  
  # Ajouter un titre et des labels pour les axes
  labs(title = "Projections des Scénarios RCP sur la Moyenne des Températures du 12 Août pour l'horizon 2060",
       x = "Heure de la journée", 
       y = "Température (°C)",
       fill = "Scénarios RCP :") +  # Légende pour les fourchettes
  
  # Ajouter une légende
  scale_fill_manual(values = c("RCP 2.6" = "green", "RCP 8.5" = "red")) +
  
  # Afficher une heure sur deux sur l'axe des X
  scale_x_discrete(breaks = mean_data12$Time[c(TRUE, FALSE)], expand = c(0, 0)) +  # Supprimer l'espace avant la première donnée
  
  # Thème light avec légende en haut
  theme_light() +
  theme(legend.position = "top") +
  
  # Incliner les étiquettes de l'axe des X à 45°
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  
        plot.title = element_text(hjust = 0.5))  # Centrer le titre


## 6.5. Création du graphique fin du siècle

library(ggplot2)

ggplot(mean_data12, aes(x = Time, group = 1)) +
  
  # Tracer la température moyenne
  geom_line(aes(y = Temp_mean), color = "blue", linewidth = 1, linetype = "solid") +
  
  # Fourchettes RCP 2.6 pour l'avenir fin du siècle
  geom_ribbon(aes(ymin = Temp_RCP26_min_fin, ymax = Temp_RCP26_max_fin, fill = "RCP 2.6"), alpha = 0.2) +
  
  # Fourchettes RCP 8.5 pour l'avenir fin du siècle
  geom_ribbon(aes(ymin = Temp_RCP85_min_fin, ymax = Temp_RCP85_max_fin, fill = "RCP 8.5"), alpha = 0.2) +
  
  # Ajouter un titre et des labels pour les axes
  labs(title = "Projections des Scénarios RCP sur la Moyenne des Températures du 12 Août pour l'horizon 2085",
       x = "Heure de la journée", 
       y = "Température (°C)",
       fill = "Scénarios RCP :") +  # Légende pour les fourchettes
  
  # Ajouter une légende
  scale_fill_manual(values = c("RCP 2.6" = "green", "RCP 8.5" = "red")) +
  
  # Afficher une heure sur deux sur l'axe des X
  scale_x_discrete(breaks = mean_data12$Time[c(TRUE, FALSE)], expand = c(0, 0)) +  # Supprime l'espace avant les premières données
  
  # Thème light avec légende en haut
  theme_light() +
  theme(legend.position = "top") +
  
  # Incliner les étiquettes de l'axe des X à 45°
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  
        plot.title = element_text(hjust = 0.5))  # Centrer le titre


#### 7. Création du graphique du 11.08

# 7.1 Sélection des données pour le 11.08

## 7.1.1. Sélection données du jour le plus chaud pour D24130006

data_selection11_D24130006 <- data.D24130006[data.D24130006$Date == as.Date("2024-08-11"), ]  

## 7.1.2. Sélection données du jour le plus chaud pour D24130009

data_selection11_D24130009 <- data.D24130009[data.D24130009$Date == as.Date("2024-08-11"), ]

## 7.1.3. Sélection données du jour le plus chaud pour D24130002

data_selection11_D24130002 <- data.D24130002[data.D24130002$Date == as.Date("2024-08-11"), ]  

## 7.1.4. Sélection données du jour le plus chaud pour D24130004

data_selection11_D24130004 <- data.D24130004[data.D24130004$Date == as.Date("2024-08-11"), ]

## 7.1.5. Sélection données du jour le plus chaud pour D24130003

data_selection11_D24130003 <- data.D24130003[data.D24130003$Date == as.Date("2024-08-11"), ]

## 7.1.6. Sélection données du jour le plus chaud pour D24091017

data_selection11_D24091017 <- data.D24091017[data.D24091017$Date == as.Date("2024-08-11"), ]

## 7.1.7. Sélection données du jour le plus chaud pour D24091020

data_selection11_D24091020 <- data.D24091020[data.D24091020$Date == as.Date("2024-08-11"), ]

## 7.1.8.Sélection données du jour le plus chaud pour D24091014

data_selection11_D24091014 <- data.D24091014[data.D24091014$Date == as.Date("2024-08-11"), ]

## 7.2. Combiner les données dans un dataframe

combined_data11 <- rbind(data_selection11_D24130006, data_selection11_D24130009, data_selection11_D24130002, data_selection11_D24130004, data_selection11_D24130003, data_selection11_D24091017, data_selection11_D24091020, data_selection11_D24091014)

## 7.3. Combiner date et heure dans une colonne

combined_data11$datetime <- as.POSIXct(paste(combined_data11$Date, combined_data11$Time), format="%Y-%m-%d %H:%M")

# 7.4. Création du graphique du 11.08

# Charger ggplot2
library(ggplot2)

ggplot(combined_data11, aes(x = datetime, y = Temp, color = Capteur.ID)) +
  geom_line() +
  labs(title = "Évolution des températures du 11 août 2024",
       x = "Heure", 
       y = "Température (°C)",
       color = "Capteurs") +
  
  # Paramètres de l'axe X pour afficher les heures et minutes et supprimer l'espace
  scale_x_datetime(date_labels = "%H:%M",  # Afficher uniquement les heures et minutes
                   date_breaks = "2 hours",  # Espacement des labels toutes les 2 heures
                   expand = c(0, 0)) +  # Supprimer l'espace avant la première donnée
  
  # Ajustement des graduations sur l'axe Y
  scale_y_continuous(breaks = seq(ceiling(min(combined_data12$Temp)), 
                                  floor(max(combined_data12$Temp)), 
                                  by = 5)) +  # Ajuster les graduations à des valeurs entières
  
  # Appliquer un thème light et styliser les éléments
  theme_light() +
  
  # Rotation des étiquettes de l'axe des X à 45° et centrage du titre
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  
        plot.title = element_text(hjust = 0.5))  # Centrer le titre


# 7.5. Intégration des scénarios RCP pour le 11.08

# Charger les bibliothèques nécessaires
library(ggplot2)
library(dplyr)

# Ajuster le format des dates
combined_data11 <- combined_data11 %>%
  mutate(datetime = as.POSIXct(paste("2024-08-11", Time), format="%Y-%m-%d %H:%M"))

# Calculer la moyenne des températures par horodatage pour le 11 août
mean_data11 <- combined_data11 %>%
  group_by(datetime) %>%
  summarise(Temp_mean = mean(Temp, na.rm = TRUE))  # Moyenne des températures de tous les Capteur à chaque instant

# Ajouter les scénarios RCP pour le 11 août
mean_data11$Temp_RCP26_min_proche <- mean_data11$Temp_mean + 0.7
mean_data11$Temp_RCP26_max_proche <- mean_data11$Temp_mean + 2.1
mean_data11$Temp_RCP85_min_proche <- mean_data11$Temp_mean + 1.2
mean_data11$Temp_RCP85_max_proche <- mean_data11$Temp_mean + 2.3

# Milieu du siècle - 2060
mean_data11$Temp_RCP26_min_milieu <- mean_data11$Temp_mean + 0.9
mean_data11$Temp_RCP26_max_milieu <- mean_data11$Temp_mean + 2.5
mean_data11$Temp_RCP85_min_milieu <- mean_data11$Temp_mean + 2.3
mean_data11$Temp_RCP85_max_milieu <- mean_data11$Temp_mean + 4.4

# Fin du siècle - 2085
mean_data11$Temp_RCP26_min_fin <- mean_data11$Temp_mean + 0.7
mean_data11$Temp_RCP26_max_fin <- mean_data11$Temp_mean + 2.4
mean_data11$Temp_RCP85_min_fin <- mean_data11$Temp_mean + 4.1
mean_data11$Temp_RCP85_max_fin <- mean_data11$Temp_mean + 7.2


# 7.5.1 Création du graphique pour le 11 août pour 2035

library(ggplot2) 

ggplot(mean_data11, aes(x = datetime, group = 1)) +
  
  # Tracer la température moyenne
  geom_line(aes(y = Temp_mean), color = "blue", linewidth = 1, linetype = "solid") +
  
  # Fourchettes RCP 2.6 pour l'avenir proche
  geom_ribbon(aes(ymin = Temp_RCP26_min_proche, ymax = Temp_RCP26_max_proche, fill = "RCP 2.6"), alpha = 0.2) +
  
  # Fourchettes RCP 8.5 pour l'avenir proche
  geom_ribbon(aes(ymin = Temp_RCP85_min_proche, ymax = Temp_RCP85_max_proche, fill = "RCP 8.5"), alpha = 0.2) +
  
  # Ajouter un titre et des labels pour les axes
  labs(title = "Projections des Scénarios RCP sur la Moyenne des Températures du 11 Août pour l'horizon 2035",
       x = "Heure de la journée", 
       y = "Température (°C)",
       fill = "Scénarios RCP : ") +  # Légende pour les fourchettes
  
  # Ajouter une légende
  scale_fill_manual(values = c("RCP 2.6" = "green", "RCP 8.5" = "red")) +
  
  # Afficher les étiquettes d'heure et éviter l'espace vide
  scale_x_datetime(date_labels = "%H:%M", 
                   date_breaks = "2 hours", 
                   expand = c(0, 0)) +  # Supprimer les marges avant les données
  
  # Thème minimal avec légende en haut
  theme_light() +
  theme(legend.position = "top") +
  
  # Incliner les étiquettes de l'axe des X à 45° et centrer le titre
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  
        plot.title = element_text(hjust = 0.5))  # Centrer le titre


# 7.5.2. Création du graphique pour le 11 août pour 2060

ggplot(mean_data11, aes(x = datetime, group = 1)) +
  geom_line(aes(y = Temp_mean), color = "blue", linewidth = 1, linetype = "solid") +
  geom_ribbon(aes(ymin = Temp_RCP26_min_milieu, ymax = Temp_RCP26_max_milieu, fill = "RCP 2.6"), alpha = 0.2) +
  geom_ribbon(aes(ymin = Temp_RCP85_min_milieu, ymax = Temp_RCP85_max_milieu, fill = "RCP 8.5"), alpha = 0.2) +
  labs(title = "Projections des Scénarios RCP sur la Moyenne des Températures du 11 Août pour l'horizon 2060",
       x = "Heure de la journée", 
       y = "Température (°C)",
       fill = "Scénarios RCP : ") +
  scale_fill_manual(values = c("RCP 2.6" = "green", "RCP 8.5" = "red")) +
  scale_x_datetime(date_labels = "%H:%M", date_breaks = "2 hours", expand = c(0, 0)) +
  theme_light() +
  theme(legend.position = "top",
        plot.title = element_text(hjust = 0.5),
        axis.text.x = element_text(angle = 45, hjust = 1))

  
  # 7.5.3. Création du graphique pour le 11 août pour 2085
  
  ggplot(mean_data11, aes(x = datetime, group = 1)) +
  geom_line(aes(y = Temp_mean), color = "blue", linewidth = 1, linetype = "solid") +
  geom_ribbon(aes(ymin = Temp_RCP26_min_fin, ymax = Temp_RCP26_max_fin, fill = "RCP 2.6"), alpha = 0.2) +
  geom_ribbon(aes(ymin = Temp_RCP85_min_fin, ymax = Temp_RCP85_max_fin, fill = "RCP 8.5"), alpha = 0.2) +
  labs(title = "Projections des Scénarios RCP sur la Moyenne des Températures du 11 Août pour l'horizon 2085",
       x = "Heure de la journée", 
       y = "Température (°C)",
       fill = "Scénarios RCP : ") +
  scale_fill_manual(values = c("RCP 2.6" = "green", "RCP 8.5" = "red")) +
  scale_x_datetime(date_labels = "%H:%M", date_breaks = "2 hours", expand = c(0, 0)) +
  theme_light() +
  theme(legend.position = "top",
        plot.title = element_text(hjust = 0.5),
        axis.text.x = element_text(angle = 45, hjust = 1))

#### 8. Analyse des températures diurnes et nocturnes pour le 11.08 et 12.08

# 8.1. Analyse des températures diurnes et nocturnes pour le 12.08

combined_data12$Time <- format(strptime(combined_data12$Time, format="%H:%M"), format="%H:%M")  # format des heures HH:MM

# Combiner les colonnes "Date" et "Time" en une colonne datetime au format POSIXct
combined_data12$datetime <- as.POSIXct(paste(combined_data12$Date, combined_data12$Time), format="%Y-%m-%d %H:%M")

# Extraire les heures
combined_data12$heure_extrait <- format(combined_data12$datetime, "%H:%M")

# Filtrer les températures diurnes (06:00 - 21:00)
temp_diurnes_combined_data12 <- subset(combined_data12, heure_extrait >= "06:00" & heure_extrait <= "21:00")

# Heures du lever et du coucher du soleil

lever_soleil <- as.POSIXct("2024-08-12 06:27", tz = "Europe/Paris")
coucher_soleil <- as.POSIXct("2024-08-12 20:46", tz = "Europe/Paris")

# 8.1.1. Création du graphique diurne du 12.08

library(ggplot2)

ggplot(temp_diurnes_combined_data12, aes(x = datetime, y = Temp, color = Capteur.ID)) +
  geom_line() +
  geom_vline(xintercept = as.numeric(lever_soleil), linetype = "dashed", color = "#FCC52D", size = 0.5) +  # Ligne pour lever
  geom_vline(xintercept = as.numeric(coucher_soleil), linetype = "dashed", color = "#FCC52D", size = 0.5) +  # Ligne pour coucher
  labs(title = "Évolution des températures diurnes du 12 août 2024",
       x = "Heure", 
       y = "Température (°C)",
       color = "Capteurs") +
  scale_x_datetime(date_labels = "%H:%M", 
                   date_breaks = "2 hours", # Espacement des labels d'heures toutes les 2 heures
                   expand = c(0, 0)) +  # Supprimer les marges avant les données
  scale_y_continuous(breaks = seq(ceiling(min(temp_diurnes_combined_data12$Temp)), 
                                  floor(max(temp_diurnes_combined_data12$Temp)), 
                                  by = 5)) +  # Ajuster les graduations à des valeurs entières
  theme_light() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Incliner les étiquettes de l'axe X
        plot.title = element_text(hjust = 0.5)) +  # Centrer le titre
  coord_cartesian(xlim = c(as.POSIXct("2024-08-12 06:00"), as.POSIXct("2024-08-12 21:00")))  # Limiter l'affichage à 21h-6h


# 8.2. Analyse des températures diurnes et nocturnes pour le 11.08

combined_data11$Time <- format(strptime(combined_data11$Time, format="%H:%M"), format="%H:%M")  # format des heures HH:MM

# Combiner les colonnes "Date" et "Time" en une colonne datetime au format POSIXct
combined_data11$datetime <- as.POSIXct(paste(combined_data11$Date, combined_data11$Time), format="%Y-%m-%d %H:%M")

# Extraire les heures
combined_data11$heure_extrait <- format(combined_data11$datetime, "%H:%M")

# Filtrer les températures diurnes (06:00 - 21:00)
temp_diurnes_combined_data11 <- subset(combined_data11, heure_extrait >= "06:00" & heure_extrait <= "21:00")

# Heures du lever et du coucher du soleil

lever_soleil <- as.POSIXct("2024-08-11 06:27", tz = "Europe/Paris")
coucher_soleil <- as.POSIXct("2024-08-11 20:46", tz = "Europe/Paris")

# 8.2.1. Création du graphique diurne du 11.08

library(ggplot2)

ggplot(temp_diurnes_combined_data11, aes(x = datetime, y = Temp, color = Capteur.ID)) +
  geom_line() +
  geom_vline(xintercept = as.numeric(lever_soleil), linetype = "dashed", color = "#FCC52D", size = 0.5) +  # Ligne pour lever
  geom_vline(xintercept = as.numeric(coucher_soleil), linetype = "dashed", color = "#FCC52D", size = 0.5) +  # Ligne pour coucher
  labs(title = "Évolution des températures diurnes du 11 août 2024",
       x = "Heure", 
       y = "Température (°C)",
       color = "Capteurs") +
  scale_x_datetime(date_labels = "%H:%M", 
                   date_breaks = "2 hours", # Espacement des labels d'heures toutes les 2 heures
                   expand = c(0, 0)) +  # Supprimer les marges avant les données
  scale_y_continuous(breaks = seq(ceiling(min(temp_diurnes_combined_data11$Temp)), 
                                  floor(max(temp_diurnes_combined_data11$Temp)), 
                                  by = 5)) +  # Ajuster les graduations à des valeurs entières
  theme_light() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Incliner les étiquettes de l'axe X
        plot.title = element_text(hjust = 0.5)) +  # Centrer le titre
  coord_cartesian(xlim = c(as.POSIXct("2024-08-11 06:00"), as.POSIXct("2024-08-11 21:00")))  # Limiter l'affichage à 21h-6h

# 8.3. Analyse des températures nocturnes pour la nuit du 11.08 au 12.08

library(dplyr)

# Sélectionner uniquement les colonnes "Temp" "datetime" et "Capteur"
temp_data11 <- combined_data11 %>%
  select(datetime, Temp, Capteur.ID)

temp_data12 <- combined_data12 %>%
  select(datetime, Temp, Capteur.ID)

# Combiner les deux jeux de données
combined_temp_data <- rbind(temp_data11, temp_data12)

# Définir les bornes de temps
start_time <- as.POSIXct("2024-08-11 20:00")
end_time <- as.POSIXct("2024-08-12 07:00")

# Filtrer les données combinées pour sélectionner l'intervalle de temps souhaité
noct_temp_data <- combined_temp_data %>%
  filter(datetime >= start_time & datetime <= end_time)

lever_soleil <- as.POSIXct("2024-08-12 06:27", tz = "Europe/Paris")
coucher_soleil <- as.POSIXct("2024-08-11 20:46", tz = "Europe/Paris")

# 8.3.1. Création du graphique des températures nocturnes du 11 au 12 août

ggplot(noct_temp_data, aes(x = datetime, y = Temp, color = Capteur.ID)) +
  geom_line() +
  geom_vline(xintercept = as.numeric(lever_soleil), linetype = "dashed", color = "#FCC52D", size = 0.5) +
  geom_vline(xintercept = as.numeric(coucher_soleil), linetype = "dashed", color = "#FCC52D", size = 0.5) +
  labs(title = "Évolution des températures nocturnes du 11 au 12 août 2024",
       x = "Heure", 
       y = "Température (°C)",
       color = "Capteurs") +
  scale_x_datetime(date_labels = "%H:%M", 
                   date_breaks = "2 hours", # Espacement des labels d'heures toutes les 2 heures
                   expand = c(0, 0)) +  # Supprimer les marges avant les données
  scale_y_continuous(breaks = seq(floor(min(noct_temp_data$Temp)), 
                                  ceiling(max(noct_temp_data$Temp)), 
                                  by = 5)) +
  theme_light() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  # Incliner les étiquettes de l'axe X
        plot.title = element_text(hjust = 0.5)) +  # Centrer le titre
  coord_cartesian(xlim = c(as.POSIXct("2024-08-11 20:00"), as.POSIXct("2024-08-12 07:00")))  # Limiter l'affichage à 21h-6h
