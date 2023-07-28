clc
close all
clear
warning off
%% **** PARTE 1 - Definição dos conjuntos fuzzy ****
SistFuzzy = newfis('FuzzyGuindaste');


%Input 1 = Distância
SistFuzzy = addvar(SistFuzzy,'input','Distancia',[0 10]);%Dominio
SistFuzzy = addmf(SistFuzzy,'input',1,'Longe','trimf',[0 0 4]);
SistFuzzy = addmf(SistFuzzy,'input',1,'Medio','trimf',[1 5 9]);
SistFuzzy = addmf(SistFuzzy,'input',1,'Perto','trimf',[6 10 10]);

%Input 2 = Ângulo
SistFuzzy = addvar(SistFuzzy,'input','Angulo',[-45 45]);%Dominio
SistFuzzy = addmf(SistFuzzy,'input',2,'Negativo','trimf',[-45 -45 -5]);
SistFuzzy = addmf(SistFuzzy,'input',2,'Zero','trimf',[-10 0 10]);
SistFuzzy = addmf(SistFuzzy,'input',2,'Positivo','trimf',[5 45 45]);

%Output = Potência
SistFuzzy = addvar(SistFuzzy,'output','Potencia',[0 25]);
SistFuzzy = addmf(SistFuzzy,'output',1,'Baixa','trimf',[0 0 5]);
SistFuzzy = addmf(SistFuzzy,'output',1,'Media','trimf',[0 12.5 25]);
SistFuzzy = addmf(SistFuzzy,'output',1,'Alta','trimf',[16 25 25]);


figure(1)
subplot(3,1,1),plotmf(SistFuzzy,'input',1),ylabel('Distancia');
subplot(3,1,2),plotmf(SistFuzzy,'input',2),ylabel('Angulo');
subplot(3,1,3),plotmf(SistFuzzy,'output',1),ylabel('Potencia');

%% **** PARTE 2 - Construção das regras****
%[Conjunto1 Conjunto2 Conjunto3 Peso Lógica]

regras = [1 1 3 1 2
          2 0 2 1 2 
          3 3 1 1 2];  
           
%% **** PARTE 3 - Adicionando regras ao sistema***
SistFuzzy = addrule(SistFuzzy,regras);      


%% **** PARTE 4 - Avaliação com entradas precisas****
%[Distância Ângulo]

%du = evalfis([erro derro],SistFuzzy)
%u = u + du
%Y = ft(U)

potencia = evalfis([3.5 -5],SistFuzzy)

%% **** PARTE 5 - Salvar o sistema “SistFuzzy“
%save SistFuzzy

















