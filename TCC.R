# Preparacao de Dados


library(data.table)

Voos_Jan<-read_csv2("vra_012019.csv", skip=1, col_names = FALSE)
Voos_Fev<-read_csv2("vra_022019.csv", skip=1, col_names = FALSE)
Voos_Mar<-read_csv2("vra_032019.csv", skip=1, col_names = FALSE)
Voos_Abr<-read_csv2("vra_042019.csv", skip=1, col_names = FALSE)
colnames(Voos_Jan) <- c('Cia_Aerea','Voo','Cod_DI','Tipo_Linha','Aeroporto_Origem','Aeroporto_Destino','Data_Partida_Prevista','Data_Partida_Real','Data_Chegada_Prevista','Data_Chegada_Real','Situacao Voo','Justificativa')
colnames(Voos_Abr) <- c('Cia_Aerea','Voo','Cod_DI','Tipo_Linha','Aeroporto_Origem','Aeroporto_Destino','Data_Partida_Prevista','Data_Partida_Real','Data_Chegada_Prevista','Data_Chegada_Real','Situacao Voo','Justificativa')
colnames(Voos_Mar) <- c('Cia_Aerea','Voo','Cod_DI','Tipo_Linha','Aeroporto_Origem','Aeroporto_Destino','Data_Partida_Prevista','Data_Partida_Real','Data_Chegada_Prevista','Data_Chegada_Real','Situacao Voo','Justificativa')
Voos_Fev$Voo<- as.character(Voos_Fev$Voo)
Voos2019 <- bind_rows(Voos_Jan, Voos_Fev,Voos_Mar,Voos_Abr,Voos_Mai)

