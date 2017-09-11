#Macros para a Ficha RPGmeister
Esses macros devem funcionar apenas em conjunto com a ficha RPGmeister. Na grande maioria dos casos jogadores n�o devem se preocupar com os filtros, apenas usando seus personagens. Os filtros acabam sendo mais uteis para mestres fazerem testes sem abrir fichas de jogadores que faltaram ou de seus npcs. 

/tr <numero 1 a 3 (opcional)> <filtro npc|pc|pcOnline|all (opcional)>
>> Ao usar /tr (sem parametros) abre um popup para selecionar um teste de resistencia. Ser� feito o teste de resist�ncia do personagem mais recentemente atribuido. 
>> Ao usar /tr acompanhado de um numero e sem um filtro o teste de resistencia (1: fortitude, 2: reflexos, 3: vontade) � feito para o personagem mais recentemente atribuido. 
>> Ao usar /tr acompanhado de um valor (use -1 se quiser selecionar a resistencia na janela pop up) e um parametro de filtro � aberta uma janela para selecionar um personagem para realizar o teste. 

/atr <numero 1 a 6 (opcional)> <filtro npc|pc|pcOnline|all (opcional)>
>> Ao usar /tr (sem parametros) abre um popup para selecionar um teste de resistencia. Ser� feito o teste de atributo do personagem mais recentemente atribuido. 
>> Ao usar /tr acompanhado de um numero e sem um filtro o teste de atributo (1: FOR, 2: DES, 3: CON, 4: INT, 5: SAB, 6:CAR) � feito para o personagem mais recentemente atribuido. 
>> Ao usar /tr acompanhado de um valor (use -1 se quiser selecionar o atributo na janela pop up) e um parametro de filtro � aberta uma janela para selecionar um personagem para realizar o teste. 

/per <numero ou nome (opcional)> <filtro npc|pc|pcOnline|all (opcional)>
>> Ao usar /per (sem parametros) abre um popup para selecionar um teste de pericia. Ser� feito o teste de atributo do personagem mais recentemente atribuido. 
>> Ao usar /per acompanhado de um numero e sem um filtro o teste da pericia naquela posi��o da ficha ser� realizado.
>> Ao usar /per acompanhado do nome da pericia o teste daquela pericia ser� realizado. Tente por o nome da pericia parecido com como est� na ficha. O macro vai tentar ignorar letras maiusculas, acentos e outros. 
>> Ao usar /per acompanhado de um valor (numero ou nome, use -1 se quiser selecionar a pericia na janela pop up) e um parametro de filtro � aberta uma janela para selecionar um personagem para realizar o teste. 

/ataq <numero (opcional)  <filtro npc|pc|pcOnline|all (opcional)>
>> Ao usar /per (sem parametros) abre um popup para selecionar um ataque avan�ado. Ser� feito o ataque com o personagem mais recentemente atribuido. 
>> Ao usar /per acompanhado de um numero e sem um filtro, o ataque naquela posi��o ser� realizado. 
>> Ao usar /per acompanhado de um valor (use -1 se quiser selecionar o ataque na janela pop up) e um parametro de filtro � aberta uma janela para selecionar um personagem para realizar o ataque. 