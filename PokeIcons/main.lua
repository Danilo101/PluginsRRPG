﻿require("rrpg.lua");
require("vhd.lua");
require("utils.lua");

afkStatus = {};
afkMessage = {};
afkBotClock = {};

-- Implementação dos comandos
rrpg.messaging.listen("HandleChatCommand", 
	function (message)
		if message.comando == "poke" then
			if message.parametro ~= nil and message.parametro ~= "" then
				local text = "";

				local arg = {};
				local index = 0;
				for i in string.gmatch(message.parametro, "%S+") do
					index = index + 1;
					arg[index] = i;
				end;

				for i=1, #arg, 1 do
					local token = arg[i];
					local num = string.sub(token, 1, 3);
					num = tonumber(num);
					local rest = string.sub(token, 4);
					if num ==nil then
						num = string.sub(token, 1, 2);
						num = tonumber(num);
						rest = string.sub(token, 3);
					end;
					if num ==nil then
						num = string.sub(token, 1, 1);
						num = tonumber(num);
						rest = string.sub(token, 2);
					end;
					if num ~=nil then
						if num>=1 and num <=802 then
							if num<10 then
								num = "00" .. num .. rest;
							elseif num<100 then
								num = "0" .. num .. rest;
							else
								num = "" .. num .. rest;
							end;
							arg[i] = "[§I http://www.serebii.net/pokedex-sm/icon/" .. num .. ".png]";
						end;
					end;
					text = text .. " " .. arg[i];
				end;

				message.chat:enviarMensagem(text);
			else
				message.chat:escrever("Use: /poke <frase>");
				message.chat:escrever("Cada numero entre 1 e 802 no inicio de uma palavra vai ser substituido por um pokemon.");
				message.chat:escrever("Seguir o numero com -m -mx ou -my permite exibir mega evoluções.");
				message.chat:escrever("Seguir o numero com -a permite exibir Alolan Forms.");
				message.chat:escrever("Use: /pokecode para mais codigos ");
			end;
			message.response = {handled = true};
		elseif message.comando == "unown" then
			if message.parametro ~= nil and message.parametro ~= "" then
				local text = "";
				local length = string.len(message.parametro);
				local input = string.lower(message.parametro);

				for i=1, length, 1 do
					local letter = string.sub(input, i, i);

					if letter == 'a' then
						text = text .. "[§I http://www.serebii.net/pokedex-bw/icon/201.png]";
					elseif letter == '?' then
						text = text .. "[§I http://www.serebii.net/pokedex-sm/icon/201-qm.png]";
					elseif letter == '!' then
						text = text .. "[§I http://www.serebii.net/pokedex-sm/icon/201-em.png]";
					elseif letter >= 'b' and letter <= 'z' then
						text = text .. "[§I http://www.serebii.net/pokedex-sm/icon/201-" .. letter .. ".png]";
					else
						text = text .. "[§I http://firecast.blob.core.windows.net/blobs/HKJSWOFE_393972.png]";
					end;
				end;

				message.chat:enviarMensagem(text);
			else
				message.chat:escrever("Use: /unown <frase>");
				message.chat:escrever("Cada letra vai ser trocada por um unown");
			end;
			message.response = {handled = true};
		elseif message.comando == "pokecode" then
			message.chat:escrever("Alguns pokémons tem codigos adicionais que podem ser colocados após seus numeros para exibir suas formas alternativas.");
			message.chat:escrever("Pikachu 25 -a -b -c -f -h -k -l -o -phd -ps -r -s -u");
			message.chat:escrever("Unown 201 -[b:z] -qm -em");
			message.chat:escrever("Castform 351 -s -r -i");
			message.chat:escrever("Deoxys 386 a d s");
			message.chat:escrever("Burmy 412 -s -t");
			message.chat:escrever("Wordmadam 413 -s -t");
			message.chat:escrever("Cherrim 421 -s");
			message.chat:escrever("Shellos 422 e");
			message.chat:escrever("Fastrodon 423 e");
			message.chat:escrever("Rotom 479 s f h m w");
			message.chat:escrever("Giratina 487 o");
			message.chat:escrever("Shaymin 492 s");
			message.chat:escrever("Basculin 550 b");
			message.chat:escrever("Darmanitan 555 b");
			message.chat:escrever("Deerling 585 -s -a -w");
			message.chat:escrever("Thornadus 641 -s");
			message.chat:escrever("Thundurus 642 -s");
			message.chat:escrever("Landorus 645 -s");
			message.chat:escrever("Kyurem 646 -b -w");
			message.chat:escrever("Keldeo 647 -r");
			message.chat:escrever("Meloetta 648 -p");
			message.chat:escrever("Greninja 658 -a");
			message.chat:escrever("Vivillon 666 -a -c -e -f -g -h -i -j -ma -mo -mon -o -p -pb -r -s -sa -su -t");
			message.chat:escrever("Flabebe 669 -b -o -w -y");
			message.chat:escrever("Floette 670 -b -o -w -y");
			message.chat:escrever("Florges 671 -b -o -w -y");
			message.chat:escrever("Furfrou 676 -h -s -d -da -de -k -l -m -p");
			message.chat:escrever("Aegislash 681 -b");
			message.chat:escrever("Xernes 716 -n");
			message.chat:escrever("Zygarde 718 -10 -c");
			message.chat:escrever("Hoopa 720 -u");
			message.chat:escrever("Oricorio 741 -p -pau -s");
			message.chat:escrever("Lycanroc 745 -m");
			message.chat:escrever("Wishiwashi 746 -s");
			message.chat:escrever("Minior 774 -g -i -o -r -v -y -b");

			message.response = {handled = true};
		end
	end);

rrpg.messaging.listen("ListChatCommands",
        function(message)
                message.response = {{comando="/unown <Texto>", descricao="Troca o texto por unown para cada letra. "},
                                    {comando="/poke <Texto>", descricao="Cada numero entre 1 e 802 no inicio de uma palavra vai ser substituido por um Pokémon."}};
        end);