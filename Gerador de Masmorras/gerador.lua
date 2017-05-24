require("scene.lua");
require("utils.lua");

SceneLib.registerPlugin(
	function (scene, attachment)
		local btn_sceneGenerator;
		local frmGeneratorOptions = nil;
		local timeoutClearFrmGenerator = nil;

		scene.viewport:setupToolCategory("Gerador", "Gerador de Masmorras", 49);
		btn_sceneGenerator = scene.viewport:addToolButton("Gerador", 
		                             "Gerador de Masmorras", 
									 "/icos/dice.png",
									 -5,
									 {},
					function()
						local frm;
					
						if timeoutClearFrmGenerator ~= nil then
							clearTimeout(timeoutClearFrmGenerator);						
							timeoutClearFrmGenerator = nil;
						end;								

						if frmGeneratorOptions == nil then				
							frm = gui.newForm("frmGeneratorOptions");
						else
							frm = frmGeneratorOptions;
						end
						
						if (not frm.isShowing) and scene.isGM then
							frm:prepareForShow(scene);									  				    
							frm:show();
						else
							showMessage(lang("msg.apenas.mestre"));
						end;
						
						frmGeneratorOptions = frm;
						
						timeoutClearFrmGenerator = setTimeout(
							function()
								frmGeneratorOptions = nil;
							end, 5 * 60 * 1000);  -- 5 minutos
					end);		
				
	end);