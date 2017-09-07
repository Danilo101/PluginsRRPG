require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFichaRPGmeister()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaRPGmeister");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Arc.Metal.Zhuls");
    obj:setTitle("Ficha Arc Metal Zhuls");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Allei");
    obj.tab1:setName("tab1");

    obj.tabControl2 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl2:setParent(obj.tab1);
    obj.tabControl2:setAlign("client");
    obj.tabControl2:setName("tabControl2");

    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl2);
    obj.tab2:setTitle("Status Básicos");
    obj.tab2:setName("tab2");

    obj.frmAMZ1_1 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ1_1:setParent(obj.tab2);
    obj.frmAMZ1_1:setName("frmAMZ1_1");
    obj.frmAMZ1_1:setAlign("client");
    obj.frmAMZ1_1:setTheme("dark");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmAMZ1_1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(960);
    obj.layout1:setHeight(70);
    obj.layout1:setName("layout1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(5);
    obj.rectangle1:setYradius(5);
    obj.rectangle1:setCornerType("round");
    obj.rectangle1:setName("rectangle1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(5);
    obj.layout2:setTop(5);
    obj.layout2:setWidth(310);
    obj.layout2:setHeight(25);
    obj.layout2:setName("layout2");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setLeft(0);
    obj.label1:setTop(5);
    obj.label1:setWidth(100);
    obj.label1:setHeight(20);
    obj.label1:setText("Nome");
    obj.label1:setHorzTextAlign("trailing");
    obj.label1:setName("label1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setLeft(110);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(200);
    obj.edit1:setHeight(25);
    obj.edit1:setField("desc_nome");
    obj.edit1:setName("edit1");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(5);
    obj.layout3:setTop(35);
    obj.layout3:setWidth(310);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout3);
    obj.label2:setLeft(0);
    obj.label2:setTop(5);
    obj.label2:setWidth(100);
    obj.label2:setHeight(20);
    obj.label2:setText("Família");
    obj.label2:setHorzTextAlign("trailing");
    obj.label2:setName("label2");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout3);
    obj.edit2:setLeft(110);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(200);
    obj.edit2:setHeight(25);
    obj.edit2:setField("desc_familia");
    obj.edit2:setName("edit2");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setLeft(320);
    obj.layout4:setTop(5);
    obj.layout4:setWidth(310);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout4);
    obj.label3:setLeft(0);
    obj.label3:setTop(5);
    obj.label3:setWidth(100);
    obj.label3:setHeight(20);
    obj.label3:setText("Sexo");
    obj.label3:setHorzTextAlign("trailing");
    obj.label3:setName("label3");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout4);
    obj.edit3:setLeft(110);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    obj.edit3:setField("desc_sexo");
    obj.edit3:setName("edit3");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout1);
    obj.layout5:setLeft(320);
    obj.layout5:setTop(35);
    obj.layout5:setWidth(310);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout5);
    obj.label4:setLeft(0);
    obj.label4:setTop(5);
    obj.label4:setWidth(100);
    obj.label4:setHeight(20);
    obj.label4:setText("Idade");
    obj.label4:setHorzTextAlign("trailing");
    obj.label4:setName("label4");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout5);
    obj.edit4:setLeft(110);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    obj.edit4:setField("desc_idade");
    obj.edit4:setName("edit4");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout1);
    obj.layout6:setLeft(585);
    obj.layout6:setTop(5);
    obj.layout6:setWidth(310);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout6);
    obj.label5:setLeft(0);
    obj.label5:setTop(5);
    obj.label5:setWidth(100);
    obj.label5:setHeight(20);
    obj.label5:setText("Altura");
    obj.label5:setHorzTextAlign("trailing");
    obj.label5:setName("label5");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout6);
    obj.edit5:setLeft(110);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    obj.edit5:setField("desc_altura");
    obj.edit5:setName("edit5");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout1);
    obj.layout7:setLeft(585);
    obj.layout7:setTop(35);
    obj.layout7:setWidth(310);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout7);
    obj.label6:setLeft(0);
    obj.label6:setTop(5);
    obj.label6:setWidth(100);
    obj.label6:setHeight(20);
    obj.label6:setText("Peso");
    obj.label6:setHorzTextAlign("trailing");
    obj.label6:setName("label6");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout7);
    obj.edit6:setLeft(110);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    obj.edit6:setField("desc_peso");
    obj.edit6:setName("edit6");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(80);
    obj.layout8:setWidth(400);
    obj.layout8:setHeight(400);
    obj.layout8:setName("layout8");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout8);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setXradius(5);
    obj.rectangle2:setYradius(5);
    obj.rectangle2:setCornerType("round");
    obj.rectangle2:setName("rectangle2");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout8);
    obj.label7:setLeft(0);
    obj.label7:setTop(0);
    obj.label7:setWidth(400);
    obj.label7:setHeight(20);
    obj.label7:setText("Aparencia");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout8);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(25);
    obj.textEditor1:setWidth(380);
    obj.textEditor1:setHeight(360);
    obj.textEditor1:setField("aparencia");
    obj.textEditor1:setName("textEditor1");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(410);
    obj.layout9:setTop(80);
    obj.layout9:setWidth(400);
    obj.layout9:setHeight(400);
    obj.layout9:setName("layout9");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout9);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setXradius(5);
    obj.rectangle3:setYradius(5);
    obj.rectangle3:setCornerType("round");
    obj.rectangle3:setName("rectangle3");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout9);
    obj.label8:setLeft(0);
    obj.label8:setTop(0);
    obj.label8:setWidth(400);
    obj.label8:setHeight(20);
    obj.label8:setText("Personalidade");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout9);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(25);
    obj.textEditor2:setWidth(380);
    obj.textEditor2:setHeight(360);
    obj.textEditor2:setField("personalidade");
    obj.textEditor2:setName("textEditor2");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(820);
    obj.layout10:setTop(80);
    obj.layout10:setWidth(400);
    obj.layout10:setHeight(400);
    obj.layout10:setName("layout10");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout10);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setName("rectangle4");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout10);
    obj.image1:setLeft(1);
    obj.image1:setTop(1);
    obj.image1:setWidth(398);
    obj.image1:setHeight(398);
    obj.image1:setField("avatar");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    obj.image1:setName("image1");

    obj.tab3 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl2);
    obj.tab3:setTitle("Status Avançados");
    obj.tab3:setName("tab3");

    obj.frmAMZ1_2 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ1_2:setParent(obj.tab3);
    obj.frmAMZ1_2:setName("frmAMZ1_2");
    obj.frmAMZ1_2:setAlign("client");
    obj.frmAMZ1_2:setTheme("dark");

    obj.scrollBox2 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.frmAMZ1_2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox2);
    obj.layout11:setLeft(0);
    obj.layout11:setTop(0);
    obj.layout11:setWidth(270);
    obj.layout11:setHeight(255);
    obj.layout11:setName("layout11");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout11);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setXradius(5);
    obj.rectangle5:setYradius(5);
    obj.rectangle5:setCornerType("round");
    obj.rectangle5:setName("rectangle5");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout11);
    obj.label9:setLeft(0);
    obj.label9:setTop(0);
    obj.label9:setWidth(270);
    obj.label9:setHeight(20);
    obj.label9:setText("Geral");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout11);
    obj.layout12:setLeft(5);
    obj.layout12:setTop(25);
    obj.layout12:setWidth(260);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout12);
    obj.label10:setLeft(0);
    obj.label10:setTop(0);
    obj.label10:setWidth(110);
    obj.label10:setHeight(20);
    obj.label10:setText("Dom");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout12);
    obj.edit7:setLeft(110);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(150);
    obj.edit7:setHeight(25);
    obj.edit7:setField("dom");
    obj.edit7:setName("edit7");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout11);
    obj.layout13:setLeft(5);
    obj.layout13:setTop(50);
    obj.layout13:setWidth(260);
    obj.layout13:setHeight(50);
    obj.layout13:setName("layout13");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout13);
    obj.label11:setLeft(110);
    obj.label11:setTop(5);
    obj.label11:setWidth(50);
    obj.label11:setHeight(20);
    obj.label11:setText("Inicial");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout13);
    obj.label12:setLeft(160);
    obj.label12:setTop(5);
    obj.label12:setWidth(50);
    obj.label12:setHeight(20);
    obj.label12:setText("Evolução");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setFontSize(11);
    obj.label12:setName("label12");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout13);
    obj.label13:setLeft(210);
    obj.label13:setTop(5);
    obj.label13:setWidth(50);
    obj.label13:setHeight(20);
    obj.label13:setText("Total");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout13);
    obj.label14:setLeft(0);
    obj.label14:setTop(25);
    obj.label14:setWidth(110);
    obj.label14:setHeight(20);
    obj.label14:setText("Perseverança");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setName("label14");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout13);
    obj.edit8:setLeft(110);
    obj.edit8:setTop(25);
    obj.edit8:setWidth(50);
    obj.edit8:setHeight(25);
    obj.edit8:setField("pers_inicial");
    obj.edit8:setType("number");
    obj.edit8:setName("edit8");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout13);
    obj.edit9:setLeft(160);
    obj.edit9:setTop(25);
    obj.edit9:setWidth(50);
    obj.edit9:setHeight(25);
    obj.edit9:setField("pers_evolucao");
    obj.edit9:setType("number");
    obj.edit9:setName("edit9");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout13);
    obj.edit10:setLeft(210);
    obj.edit10:setTop(25);
    obj.edit10:setWidth(50);
    obj.edit10:setHeight(25);
    obj.edit10:setField("pers_total");
    obj.edit10:setType("number");
    obj.edit10:setName("edit10");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout11);
    obj.layout14:setLeft(5);
    obj.layout14:setTop(100);
    obj.layout14:setWidth(260);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout14);
    obj.label15:setLeft(0);
    obj.label15:setTop(0);
    obj.label15:setWidth(110);
    obj.label15:setHeight(20);
    obj.label15:setText("Nível");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout14);
    obj.edit11:setLeft(110);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(150);
    obj.edit11:setHeight(25);
    obj.edit11:setField("nivel");
    obj.edit11:setName("edit11");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout11);
    obj.layout15:setLeft(5);
    obj.layout15:setTop(125);
    obj.layout15:setWidth(260);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout15);
    obj.label16:setLeft(0);
    obj.label16:setTop(0);
    obj.label16:setWidth(110);
    obj.label16:setHeight(20);
    obj.label16:setText("Experiência");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setName("label16");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout15);
    obj.edit12:setLeft(110);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(150);
    obj.edit12:setHeight(25);
    obj.edit12:setField("experiencia");
    obj.edit12:setName("edit12");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout11);
    obj.layout16:setLeft(5);
    obj.layout16:setTop(150);
    obj.layout16:setWidth(260);
    obj.layout16:setHeight(25);
    obj.layout16:setName("layout16");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout16);
    obj.label17:setLeft(0);
    obj.label17:setTop(0);
    obj.label17:setWidth(110);
    obj.label17:setHeight(20);
    obj.label17:setText("Haks");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setName("label17");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout16);
    obj.edit13:setLeft(110);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(150);
    obj.edit13:setHeight(25);
    obj.edit13:setField("haks");
    obj.edit13:setName("edit13");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout11);
    obj.layout17:setLeft(5);
    obj.layout17:setTop(175);
    obj.layout17:setWidth(260);
    obj.layout17:setHeight(25);
    obj.layout17:setName("layout17");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout17);
    obj.label18:setLeft(0);
    obj.label18:setTop(0);
    obj.label18:setWidth(110);
    obj.label18:setHeight(20);
    obj.label18:setText("Zhuls");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setName("label18");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout17);
    obj.edit14:setLeft(110);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(150);
    obj.edit14:setHeight(25);
    obj.edit14:setField("zhuls");
    obj.edit14:setName("edit14");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout11);
    obj.layout18:setLeft(5);
    obj.layout18:setTop(200);
    obj.layout18:setWidth(260);
    obj.layout18:setHeight(25);
    obj.layout18:setName("layout18");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout18);
    obj.label19:setLeft(0);
    obj.label19:setTop(0);
    obj.label19:setWidth(110);
    obj.label19:setHeight(20);
    obj.label19:setText("Modelo");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout18);
    obj.edit15:setLeft(110);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(75);
    obj.edit15:setHeight(25);
    obj.edit15:setField("model_grade");
    obj.edit15:setName("edit15");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout18);
    obj.edit16:setLeft(185);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(75);
    obj.edit16:setHeight(25);
    obj.edit16:setField("model_type");
    obj.edit16:setName("edit16");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout11);
    obj.layout19:setLeft(5);
    obj.layout19:setTop(225);
    obj.layout19:setWidth(260);
    obj.layout19:setHeight(25);
    obj.layout19:setName("layout19");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout19);
    obj.label20:setLeft(0);
    obj.label20:setTop(0);
    obj.label20:setWidth(110);
    obj.label20:setHeight(20);
    obj.label20:setText("Device");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setName("label20");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout19);
    obj.edit17:setLeft(110);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(150);
    obj.edit17:setHeight(25);
    obj.edit17:setField("device");
    obj.edit17:setName("edit17");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox2);
    obj.layout20:setLeft(280);
    obj.layout20:setTop(0);
    obj.layout20:setWidth(320);
    obj.layout20:setHeight(180);
    obj.layout20:setName("layout20");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout20);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setXradius(5);
    obj.rectangle6:setYradius(5);
    obj.rectangle6:setCornerType("round");
    obj.rectangle6:setName("rectangle6");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout20);
    obj.label21:setLeft(0);
    obj.label21:setTop(0);
    obj.label21:setWidth(320);
    obj.label21:setHeight(20);
    obj.label21:setText("Atributos");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout20);
    obj.layout21:setLeft(5);
    obj.layout21:setTop(25);
    obj.layout21:setWidth(310);
    obj.layout21:setHeight(25);
    obj.layout21:setName("layout21");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout21);
    obj.label22:setLeft(110);
    obj.label22:setTop(5);
    obj.label22:setWidth(50);
    obj.label22:setHeight(20);
    obj.label22:setText("Inicial");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setName("label22");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout21);
    obj.label23:setLeft(160);
    obj.label23:setTop(5);
    obj.label23:setWidth(50);
    obj.label23:setHeight(20);
    obj.label23:setText("Dom");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setName("label23");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout21);
    obj.label24:setLeft(210);
    obj.label24:setTop(5);
    obj.label24:setWidth(50);
    obj.label24:setHeight(20);
    obj.label24:setText("Evolução");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setFontSize(11);
    obj.label24:setName("label24");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout21);
    obj.label25:setLeft(260);
    obj.label25:setTop(5);
    obj.label25:setWidth(50);
    obj.label25:setHeight(20);
    obj.label25:setText("Total");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout20);
    obj.layout22:setLeft(5);
    obj.layout22:setTop(50);
    obj.layout22:setWidth(310);
    obj.layout22:setHeight(25);
    obj.layout22:setName("layout22");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout22);
    obj.label26:setLeft(0);
    obj.label26:setTop(0);
    obj.label26:setWidth(110);
    obj.label26:setHeight(20);
    obj.label26:setText("Destreza (DES)");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setFontSize(13);
    obj.label26:setName("label26");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout22);
    obj.edit18:setLeft(110);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(50);
    obj.edit18:setHeight(25);
    obj.edit18:setField("atr_inicial_des");
    obj.edit18:setType("number");
    obj.edit18:setName("edit18");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout22);
    obj.edit19:setLeft(160);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(50);
    obj.edit19:setHeight(25);
    obj.edit19:setField("atr_dom_des");
    obj.edit19:setType("number");
    obj.edit19:setName("edit19");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout22);
    obj.edit20:setLeft(210);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(50);
    obj.edit20:setHeight(25);
    obj.edit20:setField("atr_evolucao_des");
    obj.edit20:setType("number");
    obj.edit20:setName("edit20");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout22);
    obj.rectangle7:setLeft(260);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setWidth(50);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("white");
    obj.rectangle7:setStrokeSize(1);
    obj.rectangle7:setName("rectangle7");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout22);
    obj.label27:setLeft(260);
    obj.label27:setTop(0);
    obj.label27:setWidth(50);
    obj.label27:setHeight(25);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setField("atr_total_des");
    obj.label27:setName("label27");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout22);
    obj.dataLink1:setFields({'atr_inicial_des', 'atr_dom_des', 'atr_evolucao_des'});
    obj.dataLink1:setName("dataLink1");

    obj.layout23 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout20);
    obj.layout23:setLeft(5);
    obj.layout23:setTop(75);
    obj.layout23:setWidth(310);
    obj.layout23:setHeight(25);
    obj.layout23:setName("layout23");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout23);
    obj.label28:setLeft(0);
    obj.label28:setTop(0);
    obj.label28:setWidth(110);
    obj.label28:setHeight(20);
    obj.label28:setText("Percepção (PER)");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setFontSize(13);
    obj.label28:setName("label28");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout23);
    obj.edit21:setLeft(110);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(50);
    obj.edit21:setHeight(25);
    obj.edit21:setField("atr_inicial_per");
    obj.edit21:setType("number");
    obj.edit21:setName("edit21");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout23);
    obj.edit22:setLeft(160);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(50);
    obj.edit22:setHeight(25);
    obj.edit22:setField("atr_dom_per");
    obj.edit22:setType("number");
    obj.edit22:setName("edit22");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout23);
    obj.edit23:setLeft(210);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(50);
    obj.edit23:setHeight(25);
    obj.edit23:setField("atr_evolucao_per");
    obj.edit23:setType("number");
    obj.edit23:setName("edit23");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout23);
    obj.rectangle8:setLeft(260);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setWidth(50);
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setColor("black");
    obj.rectangle8:setStrokeColor("white");
    obj.rectangle8:setStrokeSize(1);
    obj.rectangle8:setName("rectangle8");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout23);
    obj.label29:setLeft(260);
    obj.label29:setTop(0);
    obj.label29:setWidth(50);
    obj.label29:setHeight(25);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setField("atr_total_per");
    obj.label29:setName("label29");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout23);
    obj.dataLink2:setFields({'atr_inicial_per', 'atr_dom_per', 'atr_evolucao_per'});
    obj.dataLink2:setName("dataLink2");

    obj.layout24 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout20);
    obj.layout24:setLeft(5);
    obj.layout24:setTop(100);
    obj.layout24:setWidth(310);
    obj.layout24:setHeight(25);
    obj.layout24:setName("layout24");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout24);
    obj.label30:setLeft(0);
    obj.label30:setTop(0);
    obj.label30:setWidth(110);
    obj.label30:setHeight(20);
    obj.label30:setText("Inteligência (INT)");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setFontSize(13);
    obj.label30:setName("label30");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout24);
    obj.edit24:setLeft(110);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(50);
    obj.edit24:setHeight(25);
    obj.edit24:setField("atr_inicial_int");
    obj.edit24:setType("number");
    obj.edit24:setName("edit24");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout24);
    obj.edit25:setLeft(160);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(50);
    obj.edit25:setHeight(25);
    obj.edit25:setField("atr_dom_int");
    obj.edit25:setType("number");
    obj.edit25:setName("edit25");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout24);
    obj.edit26:setLeft(210);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(50);
    obj.edit26:setHeight(25);
    obj.edit26:setField("atr_evolucao_int");
    obj.edit26:setType("number");
    obj.edit26:setName("edit26");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout24);
    obj.rectangle9:setLeft(260);
    obj.rectangle9:setTop(0);
    obj.rectangle9:setWidth(50);
    obj.rectangle9:setHeight(25);
    obj.rectangle9:setColor("black");
    obj.rectangle9:setStrokeColor("white");
    obj.rectangle9:setStrokeSize(1);
    obj.rectangle9:setName("rectangle9");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout24);
    obj.label31:setLeft(260);
    obj.label31:setTop(0);
    obj.label31:setWidth(50);
    obj.label31:setHeight(25);
    obj.label31:setHorzTextAlign("center");
    obj.label31:setField("atr_total_int");
    obj.label31:setName("label31");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout24);
    obj.dataLink3:setFields({'atr_inicial_int', 'atr_dom_int', 'atr_evolucao_int'});
    obj.dataLink3:setName("dataLink3");

    obj.layout25 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout20);
    obj.layout25:setLeft(5);
    obj.layout25:setTop(125);
    obj.layout25:setWidth(310);
    obj.layout25:setHeight(25);
    obj.layout25:setName("layout25");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout25);
    obj.label32:setLeft(0);
    obj.label32:setTop(0);
    obj.label32:setWidth(110);
    obj.label32:setHeight(20);
    obj.label32:setText("Concentração (CON)");
    obj.label32:setHorzTextAlign("center");
    obj.label32:setFontSize(12);
    obj.label32:setName("label32");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout25);
    obj.edit27:setLeft(110);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(50);
    obj.edit27:setHeight(25);
    obj.edit27:setField("atr_inicial_con");
    obj.edit27:setType("number");
    obj.edit27:setName("edit27");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout25);
    obj.edit28:setLeft(160);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(50);
    obj.edit28:setHeight(25);
    obj.edit28:setField("atr_dom_con");
    obj.edit28:setType("number");
    obj.edit28:setName("edit28");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout25);
    obj.edit29:setLeft(210);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(50);
    obj.edit29:setHeight(25);
    obj.edit29:setField("atr_evolucao_con");
    obj.edit29:setType("number");
    obj.edit29:setName("edit29");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout25);
    obj.rectangle10:setLeft(260);
    obj.rectangle10:setTop(0);
    obj.rectangle10:setWidth(50);
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setColor("black");
    obj.rectangle10:setStrokeColor("white");
    obj.rectangle10:setStrokeSize(1);
    obj.rectangle10:setName("rectangle10");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout25);
    obj.label33:setLeft(260);
    obj.label33:setTop(0);
    obj.label33:setWidth(50);
    obj.label33:setHeight(25);
    obj.label33:setHorzTextAlign("center");
    obj.label33:setField("atr_total_con");
    obj.label33:setName("label33");

    obj.dataLink4 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout25);
    obj.dataLink4:setFields({'atr_inicial_con', 'atr_dom_con', 'atr_evolucao_con'});
    obj.dataLink4:setName("dataLink4");

    obj.layout26 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout20);
    obj.layout26:setLeft(5);
    obj.layout26:setTop(150);
    obj.layout26:setWidth(310);
    obj.layout26:setHeight(25);
    obj.layout26:setName("layout26");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout26);
    obj.label34:setLeft(0);
    obj.label34:setTop(0);
    obj.label34:setWidth(110);
    obj.label34:setHeight(20);
    obj.label34:setText("Força de Vontade (FV)");
    obj.label34:setHorzTextAlign("center");
    obj.label34:setFontSize(11);
    obj.label34:setName("label34");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout26);
    obj.edit30:setLeft(110);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(50);
    obj.edit30:setHeight(25);
    obj.edit30:setField("atr_inicial_fv");
    obj.edit30:setType("number");
    obj.edit30:setName("edit30");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout26);
    obj.edit31:setLeft(160);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(50);
    obj.edit31:setHeight(25);
    obj.edit31:setField("atr_dom_fv");
    obj.edit31:setType("number");
    obj.edit31:setName("edit31");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout26);
    obj.edit32:setLeft(210);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(50);
    obj.edit32:setHeight(25);
    obj.edit32:setField("atr_evolucao_fv");
    obj.edit32:setType("number");
    obj.edit32:setName("edit32");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout26);
    obj.rectangle11:setLeft(260);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setWidth(50);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("white");
    obj.rectangle11:setStrokeSize(1);
    obj.rectangle11:setName("rectangle11");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout26);
    obj.label35:setLeft(260);
    obj.label35:setTop(0);
    obj.label35:setWidth(50);
    obj.label35:setHeight(25);
    obj.label35:setHorzTextAlign("center");
    obj.label35:setField("atr_total_fv");
    obj.label35:setName("label35");

    obj.dataLink5 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.layout26);
    obj.dataLink5:setFields({'atr_inicial_fv', 'atr_dom_fv', 'atr_evolucao_fv'});
    obj.dataLink5:setName("dataLink5");

    obj.layout27 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.scrollBox2);
    obj.layout27:setLeft(610);
    obj.layout27:setTop(0);
    obj.layout27:setWidth(320);
    obj.layout27:setHeight(180);
    obj.layout27:setName("layout27");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout27);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("black");
    obj.rectangle12:setXradius(5);
    obj.rectangle12:setYradius(5);
    obj.rectangle12:setCornerType("round");
    obj.rectangle12:setName("rectangle12");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout27);
    obj.label36:setLeft(0);
    obj.label36:setTop(0);
    obj.label36:setWidth(320);
    obj.label36:setHeight(20);
    obj.label36:setText("Talentos");
    obj.label36:setHorzTextAlign("center");
    obj.label36:setName("label36");

    obj.layout28 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout27);
    obj.layout28:setLeft(5);
    obj.layout28:setTop(25);
    obj.layout28:setWidth(310);
    obj.layout28:setHeight(25);
    obj.layout28:setName("layout28");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout28);
    obj.label37:setLeft(110);
    obj.label37:setTop(5);
    obj.label37:setWidth(50);
    obj.label37:setHeight(20);
    obj.label37:setText("Natural");
    obj.label37:setHorzTextAlign("center");
    obj.label37:setName("label37");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout28);
    obj.label38:setLeft(160);
    obj.label38:setTop(5);
    obj.label38:setWidth(50);
    obj.label38:setHeight(20);
    obj.label38:setText("Dom");
    obj.label38:setHorzTextAlign("center");
    obj.label38:setName("label38");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout28);
    obj.label39:setLeft(210);
    obj.label39:setTop(5);
    obj.label39:setWidth(50);
    obj.label39:setHeight(20);
    obj.label39:setText("Evolução");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setFontSize(11);
    obj.label39:setName("label39");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout28);
    obj.label40:setLeft(260);
    obj.label40:setTop(5);
    obj.label40:setWidth(50);
    obj.label40:setHeight(20);
    obj.label40:setText("Total");
    obj.label40:setHorzTextAlign("center");
    obj.label40:setName("label40");

    obj.layout29 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout27);
    obj.layout29:setLeft(5);
    obj.layout29:setTop(50);
    obj.layout29:setWidth(310);
    obj.layout29:setHeight(25);
    obj.layout29:setName("layout29");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout29);
    obj.label41:setLeft(0);
    obj.label41:setTop(0);
    obj.label41:setWidth(110);
    obj.label41:setHeight(20);
    obj.label41:setText("Mira (MIR)");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setFontSize(13);
    obj.label41:setName("label41");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout29);
    obj.edit33:setLeft(110);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(50);
    obj.edit33:setHeight(25);
    obj.edit33:setField("atr_inicial_mir");
    obj.edit33:setType("number");
    obj.edit33:setName("edit33");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout29);
    obj.edit34:setLeft(160);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(50);
    obj.edit34:setHeight(25);
    obj.edit34:setField("atr_dom_mir");
    obj.edit34:setType("number");
    obj.edit34:setName("edit34");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout29);
    obj.edit35:setLeft(210);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(50);
    obj.edit35:setHeight(25);
    obj.edit35:setField("atr_evolucao_mir");
    obj.edit35:setType("number");
    obj.edit35:setName("edit35");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout29);
    obj.rectangle13:setLeft(260);
    obj.rectangle13:setTop(0);
    obj.rectangle13:setWidth(50);
    obj.rectangle13:setHeight(25);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setStrokeColor("white");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout29);
    obj.label42:setLeft(260);
    obj.label42:setTop(0);
    obj.label42:setWidth(50);
    obj.label42:setHeight(25);
    obj.label42:setHorzTextAlign("center");
    obj.label42:setField("atr_total_mir");
    obj.label42:setName("label42");

    obj.dataLink6 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.layout29);
    obj.dataLink6:setFields({'atr_inicial_mir', 'atr_dom_mir', 'atr_evolucao_mir'});
    obj.dataLink6:setName("dataLink6");

    obj.layout30 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout27);
    obj.layout30:setLeft(5);
    obj.layout30:setTop(75);
    obj.layout30:setWidth(310);
    obj.layout30:setHeight(25);
    obj.layout30:setName("layout30");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout30);
    obj.label43:setLeft(0);
    obj.label43:setTop(0);
    obj.label43:setWidth(110);
    obj.label43:setHeight(20);
    obj.label43:setText("Raciocínio (RAC)");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setFontSize(13);
    obj.label43:setName("label43");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout30);
    obj.edit36:setLeft(110);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(50);
    obj.edit36:setHeight(25);
    obj.edit36:setField("atr_inicial_rac");
    obj.edit36:setType("number");
    obj.edit36:setName("edit36");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout30);
    obj.edit37:setLeft(160);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(50);
    obj.edit37:setHeight(25);
    obj.edit37:setField("atr_dom_rac");
    obj.edit37:setType("number");
    obj.edit37:setName("edit37");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout30);
    obj.edit38:setLeft(210);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(50);
    obj.edit38:setHeight(25);
    obj.edit38:setField("atr_evolucao_rac");
    obj.edit38:setType("number");
    obj.edit38:setName("edit38");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout30);
    obj.rectangle14:setLeft(260);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setWidth(50);
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setStrokeColor("white");
    obj.rectangle14:setStrokeSize(1);
    obj.rectangle14:setName("rectangle14");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout30);
    obj.label44:setLeft(260);
    obj.label44:setTop(0);
    obj.label44:setWidth(50);
    obj.label44:setHeight(25);
    obj.label44:setHorzTextAlign("center");
    obj.label44:setField("atr_total_rac");
    obj.label44:setName("label44");

    obj.dataLink7 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.layout30);
    obj.dataLink7:setFields({'atr_inicial_rac', 'atr_dom_rac', 'atr_evolucao_rac'});
    obj.dataLink7:setName("dataLink7");

    obj.layout31 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout27);
    obj.layout31:setLeft(5);
    obj.layout31:setTop(100);
    obj.layout31:setWidth(310);
    obj.layout31:setHeight(25);
    obj.layout31:setName("layout31");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout31);
    obj.label45:setLeft(0);
    obj.label45:setTop(0);
    obj.label45:setWidth(110);
    obj.label45:setHeight(20);
    obj.label45:setText("Reflexo (REF)");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setFontSize(13);
    obj.label45:setName("label45");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout31);
    obj.edit39:setLeft(110);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(50);
    obj.edit39:setHeight(25);
    obj.edit39:setField("atr_inicial_ref");
    obj.edit39:setType("number");
    obj.edit39:setName("edit39");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout31);
    obj.edit40:setLeft(160);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(50);
    obj.edit40:setHeight(25);
    obj.edit40:setField("atr_dom_ref");
    obj.edit40:setType("number");
    obj.edit40:setName("edit40");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout31);
    obj.edit41:setLeft(210);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(50);
    obj.edit41:setHeight(25);
    obj.edit41:setField("atr_evolucao_ref");
    obj.edit41:setType("number");
    obj.edit41:setName("edit41");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout31);
    obj.rectangle15:setLeft(260);
    obj.rectangle15:setTop(0);
    obj.rectangle15:setWidth(50);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setStrokeColor("white");
    obj.rectangle15:setStrokeSize(1);
    obj.rectangle15:setName("rectangle15");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout31);
    obj.label46:setLeft(260);
    obj.label46:setTop(0);
    obj.label46:setWidth(50);
    obj.label46:setHeight(25);
    obj.label46:setHorzTextAlign("center");
    obj.label46:setField("atr_total_ref");
    obj.label46:setName("label46");

    obj.dataLink8 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.layout31);
    obj.dataLink8:setFields({'atr_inicial_ref', 'atr_dom_ref', 'atr_evolucao_ref'});
    obj.dataLink8:setName("dataLink8");

    obj.layout32 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout27);
    obj.layout32:setLeft(5);
    obj.layout32:setTop(125);
    obj.layout32:setWidth(310);
    obj.layout32:setHeight(25);
    obj.layout32:setName("layout32");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout32);
    obj.label47:setLeft(0);
    obj.label47:setTop(0);
    obj.label47:setWidth(110);
    obj.label47:setHeight(20);
    obj.label47:setText("Habilidade (HAB)");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setFontSize(13);
    obj.label47:setName("label47");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout32);
    obj.edit42:setLeft(110);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(50);
    obj.edit42:setHeight(25);
    obj.edit42:setField("atr_inicial_hab");
    obj.edit42:setType("number");
    obj.edit42:setName("edit42");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout32);
    obj.edit43:setLeft(160);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(50);
    obj.edit43:setHeight(25);
    obj.edit43:setField("atr_dom_hab");
    obj.edit43:setType("number");
    obj.edit43:setName("edit43");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout32);
    obj.edit44:setLeft(210);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(50);
    obj.edit44:setHeight(25);
    obj.edit44:setField("atr_evolucao_hab");
    obj.edit44:setType("number");
    obj.edit44:setName("edit44");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout32);
    obj.rectangle16:setLeft(260);
    obj.rectangle16:setTop(0);
    obj.rectangle16:setWidth(50);
    obj.rectangle16:setHeight(25);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setStrokeColor("white");
    obj.rectangle16:setStrokeSize(1);
    obj.rectangle16:setName("rectangle16");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout32);
    obj.label48:setLeft(260);
    obj.label48:setTop(0);
    obj.label48:setWidth(50);
    obj.label48:setHeight(25);
    obj.label48:setHorzTextAlign("center");
    obj.label48:setField("atr_total_hab");
    obj.label48:setName("label48");

    obj.dataLink9 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.layout32);
    obj.dataLink9:setFields({'atr_inicial_hab', 'atr_dom_hab', 'atr_evolucao_hab'});
    obj.dataLink9:setName("dataLink9");

    obj.layout33 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.scrollBox2);
    obj.layout33:setLeft(0);
    obj.layout33:setTop(260);
    obj.layout33:setWidth(270);
    obj.layout33:setHeight(255);
    obj.layout33:setName("layout33");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout33);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setColor("black");
    obj.rectangle17:setXradius(5);
    obj.rectangle17:setYradius(5);
    obj.rectangle17:setCornerType("round");
    obj.rectangle17:setName("rectangle17");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout33);
    obj.label49:setLeft(0);
    obj.label49:setTop(0);
    obj.label49:setWidth(270);
    obj.label49:setHeight(20);
    obj.label49:setText("Pontos de Personagem (PPs)");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setName("label49");

    obj.layout34 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout33);
    obj.layout34:setLeft(5);
    obj.layout34:setTop(25);
    obj.layout34:setWidth(260);
    obj.layout34:setHeight(25);
    obj.layout34:setName("layout34");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout34);
    obj.label50:setLeft(0);
    obj.label50:setTop(0);
    obj.label50:setWidth(110);
    obj.label50:setHeight(20);
    obj.label50:setText("Total");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setName("label50");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout34);
    obj.edit45:setLeft(110);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(150);
    obj.edit45:setHeight(25);
    obj.edit45:setField("pps_total");
    obj.edit45:setType("number");
    obj.edit45:setName("edit45");

    obj.layout35 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout33);
    obj.layout35:setLeft(5);
    obj.layout35:setTop(50);
    obj.layout35:setWidth(260);
    obj.layout35:setHeight(25);
    obj.layout35:setName("layout35");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout35);
    obj.label51:setLeft(0);
    obj.label51:setTop(0);
    obj.label51:setWidth(110);
    obj.label51:setHeight(20);
    obj.label51:setText("Gastos - Allei");
    obj.label51:setHorzTextAlign("center");
    obj.label51:setName("label51");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout35);
    obj.edit46:setLeft(110);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(150);
    obj.edit46:setHeight(25);
    obj.edit46:setField("pps_gastos_allei");
    obj.edit46:setType("number");
    obj.edit46:setName("edit46");

    obj.layout36 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout33);
    obj.layout36:setLeft(5);
    obj.layout36:setTop(75);
    obj.layout36:setWidth(260);
    obj.layout36:setHeight(25);
    obj.layout36:setName("layout36");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout36);
    obj.label52:setLeft(0);
    obj.label52:setTop(0);
    obj.label52:setWidth(110);
    obj.label52:setHeight(20);
    obj.label52:setText("Saldo Total");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setName("label52");

    obj.rectangle18 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout36);
    obj.rectangle18:setLeft(110);
    obj.rectangle18:setTop(0);
    obj.rectangle18:setWidth(150);
    obj.rectangle18:setHeight(25);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setStrokeColor("white");
    obj.rectangle18:setStrokeSize(1);
    obj.rectangle18:setName("rectangle18");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout36);
    obj.label53:setLeft(110);
    obj.label53:setTop(0);
    obj.label53:setWidth(150);
    obj.label53:setHeight(25);
    obj.label53:setHorzTextAlign("center");
    obj.label53:setField("pps_saldo");
    obj.label53:setName("label53");

    obj.layout37 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout33);
    obj.layout37:setLeft(5);
    obj.layout37:setTop(100);
    obj.layout37:setWidth(260);
    obj.layout37:setHeight(150);
    obj.layout37:setName("layout37");

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout37);
    obj.label54:setLeft(0);
    obj.label54:setTop(0);
    obj.label54:setWidth(260);
    obj.label54:setHeight(20);
    obj.label54:setText("Balanço de PPs");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setName("label54");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout37);
    obj.textEditor3:setLeft(0);
    obj.textEditor3:setTop(25);
    obj.textEditor3:setWidth(260);
    obj.textEditor3:setHeight(125);
    obj.textEditor3:setField("pps_dist_allei");
    obj.textEditor3:setName("textEditor3");

    obj.dataLink10 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.layout33);
    obj.dataLink10:setFields({'pps_total', 'pps_gastos_allei', 'pps_gastos_zhul'});
    obj.dataLink10:setName("dataLink10");

    obj.layout38 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.scrollBox2);
    obj.layout38:setLeft(280);
    obj.layout38:setTop(190);
    obj.layout38:setWidth(630);
    obj.layout38:setHeight(325);
    obj.layout38:setName("layout38");

    obj.rectangle19 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout38);
    obj.rectangle19:setAlign("client");
    obj.rectangle19:setColor("black");
    obj.rectangle19:setXradius(5);
    obj.rectangle19:setYradius(5);
    obj.rectangle19:setCornerType("round");
    obj.rectangle19:setName("rectangle19");

    obj.label55 = gui.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout38);
    obj.label55:setLeft(0);
    obj.label55:setTop(0);
    obj.label55:setWidth(630);
    obj.label55:setHeight(20);
    obj.label55:setText("Academia Mentis Allei");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setName("label55");

    obj.layout39 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout38);
    obj.layout39:setLeft(10);
    obj.layout39:setTop(25);
    obj.layout39:setWidth(150);
    obj.layout39:setHeight(180);
    obj.layout39:setName("layout39");

    obj.rectangle20 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout39);
    obj.rectangle20:setAlign("client");
    obj.rectangle20:setColor("#191919");
    obj.rectangle20:setXradius(5);
    obj.rectangle20:setYradius(5);
    obj.rectangle20:setCornerType("round");
    obj.rectangle20:setName("rectangle20");

    obj.label56 = gui.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout39);
    obj.label56:setLeft(0);
    obj.label56:setTop(0);
    obj.label56:setWidth(150);
    obj.label56:setHeight(20);
    obj.label56:setText("Turmas");
    obj.label56:setHorzTextAlign("center");
    obj.label56:setName("label56");

    obj.layout40 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout39);
    obj.layout40:setLeft(0);
    obj.layout40:setTop(25);
    obj.layout40:setWidth(150);
    obj.layout40:setHeight(25);
    obj.layout40:setName("layout40");

    obj.label57 = gui.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout40);
    obj.label57:setLeft(0);
    obj.label57:setTop(0);
    obj.label57:setWidth(30);
    obj.label57:setHeight(20);
    obj.label57:setText("Inicial");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setFontSize(11);
    obj.label57:setName("label57");

    obj.label58 = gui.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout40);
    obj.label58:setLeft(30);
    obj.label58:setTop(0);
    obj.label58:setWidth(30);
    obj.label58:setHeight(20);
    obj.label58:setText("Atual");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setFontSize(11);
    obj.label58:setName("label58");

    obj.label59 = gui.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout40);
    obj.label59:setLeft(60);
    obj.label59:setTop(0);
    obj.label59:setWidth(90);
    obj.label59:setHeight(20);
    obj.label59:setText("Nome");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setName("label59");

    obj.layout41 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout39);
    obj.layout41:setLeft(0);
    obj.layout41:setTop(50);
    obj.layout41:setWidth(150);
    obj.layout41:setHeight(25);
    obj.layout41:setName("layout41");

    obj.checkBox1 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout41);
    obj.checkBox1:setLeft(5);
    obj.checkBox1:setTop(0);
    obj.checkBox1:setWidth(20);
    obj.checkBox1:setHeight(20);
    obj.checkBox1:setField("turma_inicial_drav");
    obj.checkBox1:setName("checkBox1");

    obj.checkBox2 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout41);
    obj.checkBox2:setLeft(35);
    obj.checkBox2:setTop(0);
    obj.checkBox2:setWidth(20);
    obj.checkBox2:setHeight(20);
    obj.checkBox2:setField("turma_atual_drav");
    obj.checkBox2:setName("checkBox2");

    obj.label60 = gui.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout41);
    obj.label60:setLeft(60);
    obj.label60:setTop(0);
    obj.label60:setWidth(90);
    obj.label60:setHeight(20);
    obj.label60:setText("Drav");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setName("label60");

    obj.layout42 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout39);
    obj.layout42:setLeft(0);
    obj.layout42:setTop(75);
    obj.layout42:setWidth(150);
    obj.layout42:setHeight(25);
    obj.layout42:setName("layout42");

    obj.checkBox3 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout42);
    obj.checkBox3:setLeft(5);
    obj.checkBox3:setTop(0);
    obj.checkBox3:setWidth(20);
    obj.checkBox3:setHeight(20);
    obj.checkBox3:setField("turma_inicial_guillion");
    obj.checkBox3:setName("checkBox3");

    obj.checkBox4 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout42);
    obj.checkBox4:setLeft(35);
    obj.checkBox4:setTop(0);
    obj.checkBox4:setWidth(20);
    obj.checkBox4:setHeight(20);
    obj.checkBox4:setField("turma_atual_guillion");
    obj.checkBox4:setName("checkBox4");

    obj.label61 = gui.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout42);
    obj.label61:setLeft(60);
    obj.label61:setTop(0);
    obj.label61:setWidth(90);
    obj.label61:setHeight(20);
    obj.label61:setText("Guillion");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setName("label61");

    obj.layout43 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout39);
    obj.layout43:setLeft(0);
    obj.layout43:setTop(100);
    obj.layout43:setWidth(150);
    obj.layout43:setHeight(25);
    obj.layout43:setName("layout43");

    obj.checkBox5 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout43);
    obj.checkBox5:setLeft(5);
    obj.checkBox5:setTop(0);
    obj.checkBox5:setWidth(20);
    obj.checkBox5:setHeight(20);
    obj.checkBox5:setField("turma_inicial_dante");
    obj.checkBox5:setName("checkBox5");

    obj.checkBox6 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout43);
    obj.checkBox6:setLeft(35);
    obj.checkBox6:setTop(0);
    obj.checkBox6:setWidth(20);
    obj.checkBox6:setHeight(20);
    obj.checkBox6:setField("turma_atual_dante");
    obj.checkBox6:setName("checkBox6");

    obj.label62 = gui.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout43);
    obj.label62:setLeft(60);
    obj.label62:setTop(0);
    obj.label62:setWidth(90);
    obj.label62:setHeight(20);
    obj.label62:setText("Dante");
    obj.label62:setHorzTextAlign("center");
    obj.label62:setName("label62");

    obj.layout44 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout39);
    obj.layout44:setLeft(0);
    obj.layout44:setTop(125);
    obj.layout44:setWidth(150);
    obj.layout44:setHeight(25);
    obj.layout44:setName("layout44");

    obj.checkBox7 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout44);
    obj.checkBox7:setLeft(5);
    obj.checkBox7:setTop(0);
    obj.checkBox7:setWidth(20);
    obj.checkBox7:setHeight(20);
    obj.checkBox7:setField("turma_inicial_god");
    obj.checkBox7:setName("checkBox7");

    obj.checkBox8 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout44);
    obj.checkBox8:setLeft(35);
    obj.checkBox8:setTop(0);
    obj.checkBox8:setWidth(20);
    obj.checkBox8:setHeight(20);
    obj.checkBox8:setField("turma_atual_god");
    obj.checkBox8:setName("checkBox8");

    obj.label63 = gui.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout44);
    obj.label63:setLeft(60);
    obj.label63:setTop(0);
    obj.label63:setWidth(90);
    obj.label63:setHeight(20);
    obj.label63:setText("God");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setName("label63");

    obj.layout45 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout39);
    obj.layout45:setLeft(0);
    obj.layout45:setTop(150);
    obj.layout45:setWidth(150);
    obj.layout45:setHeight(25);
    obj.layout45:setName("layout45");

    obj.checkBox9 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.layout45);
    obj.checkBox9:setLeft(5);
    obj.checkBox9:setTop(0);
    obj.checkBox9:setWidth(20);
    obj.checkBox9:setHeight(20);
    obj.checkBox9:setField("turma_inicial_zeus");
    obj.checkBox9:setName("checkBox9");

    obj.checkBox10 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.layout45);
    obj.checkBox10:setLeft(35);
    obj.checkBox10:setTop(0);
    obj.checkBox10:setWidth(20);
    obj.checkBox10:setHeight(20);
    obj.checkBox10:setField("turma_atual_zeus");
    obj.checkBox10:setName("checkBox10");

    obj.label64 = gui.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout45);
    obj.label64:setLeft(60);
    obj.label64:setTop(0);
    obj.label64:setWidth(90);
    obj.label64:setHeight(20);
    obj.label64:setText("Zeus");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setName("label64");

    obj.layout46 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout38);
    obj.layout46:setLeft(170);
    obj.layout46:setTop(25);
    obj.layout46:setWidth(240);
    obj.layout46:setHeight(290);
    obj.layout46:setName("layout46");

    obj.rectangle21 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout46);
    obj.rectangle21:setAlign("client");
    obj.rectangle21:setColor("#191919");
    obj.rectangle21:setXradius(5);
    obj.rectangle21:setYradius(5);
    obj.rectangle21:setCornerType("round");
    obj.rectangle21:setName("rectangle21");

    obj.label65 = gui.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout46);
    obj.label65:setLeft(0);
    obj.label65:setTop(0);
    obj.label65:setWidth(240);
    obj.label65:setHeight(20);
    obj.label65:setText("Missões");
    obj.label65:setHorzTextAlign("center");
    obj.label65:setName("label65");

    obj.layout47 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layout46);
    obj.layout47:setLeft(40);
    obj.layout47:setTop(25);
    obj.layout47:setWidth(160);
    obj.layout47:setHeight(25);
    obj.layout47:setName("layout47");

    obj.label66 = gui.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout47);
    obj.label66:setLeft(0);
    obj.label66:setTop(0);
    obj.label66:setWidth(110);
    obj.label66:setHeight(20);
    obj.label66:setText("Nº Total de Missões");
    obj.label66:setHorzTextAlign("center");
    obj.label66:setFontSize(11);
    obj.label66:setName("label66");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout47);
    obj.edit47:setLeft(110);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(50);
    obj.edit47:setHeight(25);
    obj.edit47:setField("missoes_num");
    obj.edit47:setType("number");
    obj.edit47:setName("edit47");

    obj.layout48 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout46);
    obj.layout48:setLeft(0);
    obj.layout48:setTop(50);
    obj.layout48:setWidth(240);
    obj.layout48:setHeight(235);
    obj.layout48:setName("layout48");

    obj.label67 = gui.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout48);
    obj.label67:setLeft(5);
    obj.label67:setTop(0);
    obj.label67:setWidth(30);
    obj.label67:setHeight(20);
    obj.label67:setText("Nº");
    obj.label67:setHorzTextAlign("center");
    obj.label67:setFontSize(11);
    obj.label67:setName("label67");

    obj.label68 = gui.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout48);
    obj.label68:setLeft(35);
    obj.label68:setTop(0);
    obj.label68:setWidth(150);
    obj.label68:setHeight(20);
    obj.label68:setText("Relatório");
    obj.label68:setHorzTextAlign("center");
    obj.label68:setFontSize(11);
    obj.label68:setName("label68");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout48);
    obj.button1:setLeft(185);
    obj.button1:setTop(1);
    obj.button1:setWidth(23);
    obj.button1:setHeight(23);
    obj.button1:setText("+");
    obj.button1:setName("button1");

    obj.rclListaDasMissoes = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDasMissoes:setParent(obj.layout48);
    obj.rclListaDasMissoes:setName("rclListaDasMissoes");
    obj.rclListaDasMissoes:setField("campoDasMissoes");
    obj.rclListaDasMissoes:setTemplateForm("frmAMZ1_2_1");
    obj.rclListaDasMissoes:setLeft(5);
    obj.rclListaDasMissoes:setTop(25);
    obj.rclListaDasMissoes:setWidth(230);
    obj.rclListaDasMissoes:setHeight(205);
    obj.rclListaDasMissoes:setLayout("vertical");

    obj.layout49 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layout38);
    obj.layout49:setLeft(420);
    obj.layout49:setTop(25);
    obj.layout49:setWidth(200);
    obj.layout49:setHeight(190);
    obj.layout49:setName("layout49");

    obj.rectangle22 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout49);
    obj.rectangle22:setAlign("client");
    obj.rectangle22:setColor("#191919");
    obj.rectangle22:setXradius(5);
    obj.rectangle22:setYradius(5);
    obj.rectangle22:setCornerType("round");
    obj.rectangle22:setName("rectangle22");

    obj.label69 = gui.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout49);
    obj.label69:setLeft(0);
    obj.label69:setTop(0);
    obj.label69:setWidth(200);
    obj.label69:setHeight(20);
    obj.label69:setText("Atividades Extra-Curriculares");
    obj.label69:setHorzTextAlign("center");
    obj.label69:setName("label69");

    obj.layout50 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layout49);
    obj.layout50:setLeft(0);
    obj.layout50:setTop(25);
    obj.layout50:setWidth(200);
    obj.layout50:setHeight(100);
    obj.layout50:setName("layout50");

    obj.label70 = gui.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout50);
    obj.label70:setLeft(0);
    obj.label70:setTop(0);
    obj.label70:setWidth(200);
    obj.label70:setHeight(20);
    obj.label70:setText("Participações em Eventos");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setFontSize(11);
    obj.label70:setName("label70");

    obj.label71 = gui.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout50);
    obj.label71:setLeft(0);
    obj.label71:setTop(25);
    obj.label71:setWidth(125);
    obj.label71:setHeight(20);
    obj.label71:setText("Nº de Participações");
    obj.label71:setHorzTextAlign("center");
    obj.label71:setFontSize(11);
    obj.label71:setName("label71");

    obj.edit48 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout50);
    obj.edit48:setLeft(125);
    obj.edit48:setTop(25);
    obj.edit48:setWidth(50);
    obj.edit48:setHeight(25);
    obj.edit48:setField("eventos_num");
    obj.edit48:setType("number");
    obj.edit48:setName("edit48");

    obj.label72 = gui.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout50);
    obj.label72:setLeft(0);
    obj.label72:setTop(50);
    obj.label72:setWidth(125);
    obj.label72:setHeight(20);
    obj.label72:setText("Nº de Vitorias");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setFontSize(11);
    obj.label72:setName("label72");

    obj.edit49 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout50);
    obj.edit49:setLeft(125);
    obj.edit49:setTop(50);
    obj.edit49:setWidth(50);
    obj.edit49:setHeight(25);
    obj.edit49:setField("eventos_vitorias");
    obj.edit49:setType("number");
    obj.edit49:setName("edit49");

    obj.label73 = gui.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout50);
    obj.label73:setLeft(0);
    obj.label73:setTop(75);
    obj.label73:setWidth(125);
    obj.label73:setHeight(20);
    obj.label73:setText("Nº de Vezes Campeão");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setFontSize(11);
    obj.label73:setName("label73");

    obj.edit50 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout50);
    obj.edit50:setLeft(125);
    obj.edit50:setTop(75);
    obj.edit50:setWidth(50);
    obj.edit50:setHeight(25);
    obj.edit50:setField("eventos_campeao");
    obj.edit50:setType("number");
    obj.edit50:setName("edit50");

    obj.layout51 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.layout49);
    obj.layout51:setLeft(0);
    obj.layout51:setTop(135);
    obj.layout51:setWidth(200);
    obj.layout51:setHeight(25);
    obj.layout51:setName("layout51");

    obj.label74 = gui.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout51);
    obj.label74:setLeft(0);
    obj.label74:setTop(0);
    obj.label74:setWidth(125);
    obj.label74:setHeight(20);
    obj.label74:setText("Batalhas Oficiais");
    obj.label74:setHorzTextAlign("center");
    obj.label74:setFontSize(11);
    obj.label74:setName("label74");

    obj.edit51 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout51);
    obj.edit51:setLeft(125);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(50);
    obj.edit51:setHeight(25);
    obj.edit51:setField("eventos_batalhas");
    obj.edit51:setType("number");
    obj.edit51:setName("edit51");

    obj.layout52 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layout49);
    obj.layout52:setLeft(0);
    obj.layout52:setTop(160);
    obj.layout52:setWidth(200);
    obj.layout52:setHeight(25);
    obj.layout52:setName("layout52");

    obj.label75 = gui.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout52);
    obj.label75:setLeft(0);
    obj.label75:setTop(0);
    obj.label75:setWidth(125);
    obj.label75:setHeight(20);
    obj.label75:setText("Combate de Treinos");
    obj.label75:setHorzTextAlign("center");
    obj.label75:setFontSize(11);
    obj.label75:setName("label75");

    obj.edit52 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout52);
    obj.edit52:setLeft(125);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(50);
    obj.edit52:setHeight(25);
    obj.edit52:setField("eventos_treinos");
    obj.edit52:setType("number");
    obj.edit52:setName("edit52");

    obj.tab4 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl2);
    obj.tab4:setTitle("Peculiaridade Única");
    obj.tab4:setName("tab4");

    obj.frmAMZ1_3 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ1_3:setParent(obj.tab4);
    obj.frmAMZ1_3:setName("frmAMZ1_3");
    obj.frmAMZ1_3:setAlign("client");
    obj.frmAMZ1_3:setTheme("dark");

    obj.scrollBox3 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.frmAMZ1_3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout53 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.scrollBox3);
    obj.layout53:setLeft(0);
    obj.layout53:setTop(0);
    obj.layout53:setWidth(960);
    obj.layout53:setHeight(35);
    obj.layout53:setName("layout53");

    obj.rectangle23 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout53);
    obj.rectangle23:setAlign("client");
    obj.rectangle23:setColor("black");
    obj.rectangle23:setXradius(5);
    obj.rectangle23:setYradius(5);
    obj.rectangle23:setCornerType("round");
    obj.rectangle23:setName("rectangle23");

    obj.layout54 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layout53);
    obj.layout54:setLeft(5);
    obj.layout54:setTop(5);
    obj.layout54:setWidth(240);
    obj.layout54:setHeight(25);
    obj.layout54:setName("layout54");

    obj.label76 = gui.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout54);
    obj.label76:setLeft(0);
    obj.label76:setTop(5);
    obj.label76:setWidth(60);
    obj.label76:setHeight(20);
    obj.label76:setText("Tipo");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setName("label76");

    obj.edit53 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout54);
    obj.edit53:setLeft(60);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(170);
    obj.edit53:setHeight(25);
    obj.edit53:setField("desc_peculiaridade_tipo");
    obj.edit53:setName("edit53");

    obj.layout55 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout53);
    obj.layout55:setLeft(240);
    obj.layout55:setTop(5);
    obj.layout55:setWidth(240);
    obj.layout55:setHeight(25);
    obj.layout55:setName("layout55");

    obj.label77 = gui.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout55);
    obj.label77:setLeft(0);
    obj.label77:setTop(5);
    obj.label77:setWidth(60);
    obj.label77:setHeight(20);
    obj.label77:setText("Nome");
    obj.label77:setHorzTextAlign("center");
    obj.label77:setName("label77");

    obj.edit54 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout55);
    obj.edit54:setLeft(60);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(170);
    obj.edit54:setHeight(25);
    obj.edit54:setField("desc_peculiaridade_nome");
    obj.edit54:setName("edit54");

    obj.layout56 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layout53);
    obj.layout56:setLeft(480);
    obj.layout56:setTop(5);
    obj.layout56:setWidth(240);
    obj.layout56:setHeight(25);
    obj.layout56:setName("layout56");

    obj.label78 = gui.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout56);
    obj.label78:setLeft(0);
    obj.label78:setTop(5);
    obj.label78:setWidth(60);
    obj.label78:setHeight(20);
    obj.label78:setText("Acerto");
    obj.label78:setHorzTextAlign("center");
    obj.label78:setName("label78");

    obj.edit55 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout56);
    obj.edit55:setLeft(60);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(170);
    obj.edit55:setHeight(25);
    obj.edit55:setField("desc_peculiaridade_acerto");
    obj.edit55:setName("edit55");

    obj.layout57 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.layout53);
    obj.layout57:setLeft(720);
    obj.layout57:setTop(5);
    obj.layout57:setWidth(240);
    obj.layout57:setHeight(25);
    obj.layout57:setName("layout57");

    obj.label79 = gui.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout57);
    obj.label79:setLeft(0);
    obj.label79:setTop(5);
    obj.label79:setWidth(60);
    obj.label79:setHeight(20);
    obj.label79:setText("Duração");
    obj.label79:setHorzTextAlign("center");
    obj.label79:setName("label79");

    obj.edit56 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout57);
    obj.edit56:setLeft(60);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(170);
    obj.edit56:setHeight(25);
    obj.edit56:setField("desc_peculiaridade_duracao");
    obj.edit56:setName("edit56");

    obj.layout58 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.scrollBox3);
    obj.layout58:setLeft(0);
    obj.layout58:setTop(40);
    obj.layout58:setWidth(960);
    obj.layout58:setHeight(160);
    obj.layout58:setName("layout58");

    obj.layout59 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.layout58);
    obj.layout59:setLeft(0);
    obj.layout59:setTop(5);
    obj.layout59:setWidth(235);
    obj.layout59:setHeight(150);
    obj.layout59:setName("layout59");

    obj.rectangle24 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout59);
    obj.rectangle24:setAlign("client");
    obj.rectangle24:setColor("black");
    obj.rectangle24:setXradius(5);
    obj.rectangle24:setYradius(5);
    obj.rectangle24:setCornerType("round");
    obj.rectangle24:setName("rectangle24");

    obj.label80 = gui.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout59);
    obj.label80:setLeft(0);
    obj.label80:setTop(5);
    obj.label80:setWidth(230);
    obj.label80:setHeight(20);
    obj.label80:setText("Historia");
    obj.label80:setHorzTextAlign("center");
    obj.label80:setName("label80");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout59);
    obj.textEditor4:setLeft(5);
    obj.textEditor4:setTop(25);
    obj.textEditor4:setWidth(225);
    obj.textEditor4:setHeight(120);
    obj.textEditor4:setField("desc_peculiaridade_historia");
    obj.textEditor4:setName("textEditor4");

    obj.layout60 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.layout58);
    obj.layout60:setLeft(240);
    obj.layout60:setTop(5);
    obj.layout60:setWidth(235);
    obj.layout60:setHeight(150);
    obj.layout60:setName("layout60");

    obj.rectangle25 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout60);
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setColor("black");
    obj.rectangle25:setXradius(5);
    obj.rectangle25:setYradius(5);
    obj.rectangle25:setCornerType("round");
    obj.rectangle25:setName("rectangle25");

    obj.label81 = gui.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout60);
    obj.label81:setLeft(0);
    obj.label81:setTop(5);
    obj.label81:setWidth(230);
    obj.label81:setHeight(20);
    obj.label81:setText("Descrição");
    obj.label81:setHorzTextAlign("center");
    obj.label81:setName("label81");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout60);
    obj.textEditor5:setLeft(5);
    obj.textEditor5:setTop(25);
    obj.textEditor5:setWidth(225);
    obj.textEditor5:setHeight(120);
    obj.textEditor5:setField("desc_peculiaridade_descricao");
    obj.textEditor5:setName("textEditor5");

    obj.layout61 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.layout58);
    obj.layout61:setLeft(480);
    obj.layout61:setTop(5);
    obj.layout61:setWidth(235);
    obj.layout61:setHeight(150);
    obj.layout61:setName("layout61");

    obj.rectangle26 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout61);
    obj.rectangle26:setAlign("client");
    obj.rectangle26:setColor("black");
    obj.rectangle26:setXradius(5);
    obj.rectangle26:setYradius(5);
    obj.rectangle26:setCornerType("round");
    obj.rectangle26:setName("rectangle26");

    obj.label82 = gui.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout61);
    obj.label82:setLeft(0);
    obj.label82:setTop(5);
    obj.label82:setWidth(230);
    obj.label82:setHeight(20);
    obj.label82:setText("Habilidade Extra");
    obj.label82:setHorzTextAlign("center");
    obj.label82:setName("label82");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout61);
    obj.textEditor6:setLeft(5);
    obj.textEditor6:setTop(25);
    obj.textEditor6:setWidth(225);
    obj.textEditor6:setHeight(120);
    obj.textEditor6:setField("desc_peculiaridade_extra");
    obj.textEditor6:setName("textEditor6");

    obj.layout62 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.layout58);
    obj.layout62:setLeft(720);
    obj.layout62:setTop(5);
    obj.layout62:setWidth(235);
    obj.layout62:setHeight(150);
    obj.layout62:setName("layout62");

    obj.rectangle27 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout62);
    obj.rectangle27:setAlign("client");
    obj.rectangle27:setColor("black");
    obj.rectangle27:setXradius(5);
    obj.rectangle27:setYradius(5);
    obj.rectangle27:setCornerType("round");
    obj.rectangle27:setName("rectangle27");

    obj.label83 = gui.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout62);
    obj.label83:setLeft(0);
    obj.label83:setTop(5);
    obj.label83:setWidth(230);
    obj.label83:setHeight(20);
    obj.label83:setText("Cooldown");
    obj.label83:setHorzTextAlign("center");
    obj.label83:setName("label83");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout62);
    obj.textEditor7:setLeft(5);
    obj.textEditor7:setTop(25);
    obj.textEditor7:setWidth(225);
    obj.textEditor7:setHeight(120);
    obj.textEditor7:setField("desc_peculiaridade_cooldown");
    obj.textEditor7:setName("textEditor7");

    obj.layout63 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.scrollBox3);
    obj.layout63:setLeft(0);
    obj.layout63:setTop(200);
    obj.layout63:setWidth(960);
    obj.layout63:setHeight(245);
    obj.layout63:setName("layout63");

    obj.layout64 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.layout63);
    obj.layout64:setLeft(0);
    obj.layout64:setTop(5);
    obj.layout64:setWidth(715);
    obj.layout64:setHeight(235);
    obj.layout64:setName("layout64");

    obj.rectangle28 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout64);
    obj.rectangle28:setAlign("client");
    obj.rectangle28:setColor("black");
    obj.rectangle28:setXradius(5);
    obj.rectangle28:setYradius(5);
    obj.rectangle28:setCornerType("round");
    obj.rectangle28:setName("rectangle28");

    obj.label84 = gui.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout64);
    obj.label84:setLeft(0);
    obj.label84:setTop(0);
    obj.label84:setWidth(715);
    obj.label84:setHeight(20);
    obj.label84:setText("Desenvolvimento");
    obj.label84:setHorzTextAlign("center");
    obj.label84:setName("label84");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout64);
    obj.textEditor8:setLeft(5);
    obj.textEditor8:setTop(25);
    obj.textEditor8:setWidth(705);
    obj.textEditor8:setHeight(205);
    obj.textEditor8:setField("desc_peculiaridade_desenvolvimento");
    obj.textEditor8:setName("textEditor8");

    obj.layout65 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.layout63);
    obj.layout65:setLeft(720);
    obj.layout65:setTop(5);
    obj.layout65:setWidth(235);
    obj.layout65:setHeight(235);
    obj.layout65:setName("layout65");

    obj.rectangle29 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout65);
    obj.rectangle29:setAlign("client");
    obj.rectangle29:setColor("black");
    obj.rectangle29:setStrokeColor("white");
    obj.rectangle29:setStrokeSize(1);
    obj.rectangle29:setName("rectangle29");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layout65);
    obj.image2:setLeft(1);
    obj.image2:setTop(1);
    obj.image2:setWidth(233);
    obj.image2:setHeight(233);
    obj.image2:setField("peculiaridade_image");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setName("image2");

    obj.tab5 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl2);
    obj.tab5:setTitle("Inventario");
    obj.tab5:setName("tab5");

    obj.frmAMZ1_4 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ1_4:setParent(obj.tab5);
    obj.frmAMZ1_4:setName("frmAMZ1_4");
    obj.frmAMZ1_4:setAlign("client");
    obj.frmAMZ1_4:setTheme("dark");

    obj.scrollBox4 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.frmAMZ1_4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.layout66 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.scrollBox4);
    obj.layout66:setLeft(0);
    obj.layout66:setTop(0);
    obj.layout66:setWidth(960);
    obj.layout66:setHeight(245);
    obj.layout66:setName("layout66");

    obj.rectangle30 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.layout66);
    obj.rectangle30:setAlign("client");
    obj.rectangle30:setColor("black");
    obj.rectangle30:setXradius(5);
    obj.rectangle30:setYradius(5);
    obj.rectangle30:setCornerType("round");
    obj.rectangle30:setName("rectangle30");

    obj.label85 = gui.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout66);
    obj.label85:setLeft(0);
    obj.label85:setTop(0);
    obj.label85:setWidth(715);
    obj.label85:setHeight(20);
    obj.label85:setText("Equipamentos");
    obj.label85:setHorzTextAlign("center");
    obj.label85:setName("label85");

    obj.layout67 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.layout66);
    obj.layout67:setLeft(10);
    obj.layout67:setTop(25);
    obj.layout67:setWidth(230);
    obj.layout67:setHeight(200);
    obj.layout67:setName("layout67");

    obj.rectangle31 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout67);
    obj.rectangle31:setAlign("client");
    obj.rectangle31:setColor("#191919");
    obj.rectangle31:setXradius(5);
    obj.rectangle31:setYradius(5);
    obj.rectangle31:setCornerType("round");
    obj.rectangle31:setName("rectangle31");

    obj.layout68 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.layout67);
    obj.layout68:setLeft(0);
    obj.layout68:setTop(0);
    obj.layout68:setWidth(230);
    obj.layout68:setHeight(25);
    obj.layout68:setName("layout68");

    obj.label86 = gui.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout68);
    obj.label86:setLeft(0);
    obj.label86:setTop(5);
    obj.label86:setWidth(60);
    obj.label86:setHeight(20);
    obj.label86:setText("1. ");
    obj.label86:setHorzTextAlign("center");
    obj.label86:setName("label86");

    obj.comboBox1 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout68);
    obj.comboBox1:setLeft(60);
    obj.comboBox1:setTop(0);
    obj.comboBox1:setWidth(165);
    obj.comboBox1:setHeight(25);
    obj.comboBox1:setField("inventario_1");
    obj.comboBox1:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox1:setName("comboBox1");

    obj.layout69 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.layout67);
    obj.layout69:setLeft(0);
    obj.layout69:setTop(25);
    obj.layout69:setWidth(230);
    obj.layout69:setHeight(25);
    obj.layout69:setName("layout69");

    obj.label87 = gui.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout69);
    obj.label87:setLeft(0);
    obj.label87:setTop(5);
    obj.label87:setWidth(60);
    obj.label87:setHeight(20);
    obj.label87:setText("2. ");
    obj.label87:setHorzTextAlign("center");
    obj.label87:setName("label87");

    obj.comboBox2 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.layout69);
    obj.comboBox2:setLeft(60);
    obj.comboBox2:setTop(0);
    obj.comboBox2:setWidth(165);
    obj.comboBox2:setHeight(25);
    obj.comboBox2:setField("inventario_2");
    obj.comboBox2:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox2:setName("comboBox2");

    obj.layout70 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.layout67);
    obj.layout70:setLeft(0);
    obj.layout70:setTop(50);
    obj.layout70:setWidth(230);
    obj.layout70:setHeight(25);
    obj.layout70:setName("layout70");

    obj.label88 = gui.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout70);
    obj.label88:setLeft(0);
    obj.label88:setTop(5);
    obj.label88:setWidth(60);
    obj.label88:setHeight(20);
    obj.label88:setText("3. ");
    obj.label88:setHorzTextAlign("center");
    obj.label88:setName("label88");

    obj.comboBox3 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.layout70);
    obj.comboBox3:setLeft(60);
    obj.comboBox3:setTop(0);
    obj.comboBox3:setWidth(165);
    obj.comboBox3:setHeight(25);
    obj.comboBox3:setField("inventario_3");
    obj.comboBox3:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox3:setName("comboBox3");

    obj.layout71 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.layout67);
    obj.layout71:setLeft(0);
    obj.layout71:setTop(75);
    obj.layout71:setWidth(230);
    obj.layout71:setHeight(25);
    obj.layout71:setName("layout71");

    obj.label89 = gui.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout71);
    obj.label89:setLeft(0);
    obj.label89:setTop(5);
    obj.label89:setWidth(60);
    obj.label89:setHeight(20);
    obj.label89:setText("4. ");
    obj.label89:setHorzTextAlign("center");
    obj.label89:setName("label89");

    obj.comboBox4 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.layout71);
    obj.comboBox4:setLeft(60);
    obj.comboBox4:setTop(0);
    obj.comboBox4:setWidth(165);
    obj.comboBox4:setHeight(25);
    obj.comboBox4:setField("inventario_4");
    obj.comboBox4:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox4:setName("comboBox4");

    obj.layout72 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.layout67);
    obj.layout72:setLeft(0);
    obj.layout72:setTop(100);
    obj.layout72:setWidth(230);
    obj.layout72:setHeight(25);
    obj.layout72:setName("layout72");

    obj.label90 = gui.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout72);
    obj.label90:setLeft(0);
    obj.label90:setTop(5);
    obj.label90:setWidth(60);
    obj.label90:setHeight(20);
    obj.label90:setText("5. ");
    obj.label90:setHorzTextAlign("center");
    obj.label90:setName("label90");

    obj.comboBox5 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.layout72);
    obj.comboBox5:setLeft(60);
    obj.comboBox5:setTop(0);
    obj.comboBox5:setWidth(165);
    obj.comboBox5:setHeight(25);
    obj.comboBox5:setField("inventario_5");
    obj.comboBox5:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox5:setName("comboBox5");

    obj.layout73 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.layout67);
    obj.layout73:setLeft(0);
    obj.layout73:setTop(125);
    obj.layout73:setWidth(230);
    obj.layout73:setHeight(25);
    obj.layout73:setName("layout73");

    obj.label91 = gui.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout73);
    obj.label91:setLeft(0);
    obj.label91:setTop(5);
    obj.label91:setWidth(60);
    obj.label91:setHeight(20);
    obj.label91:setText("6. ");
    obj.label91:setHorzTextAlign("center");
    obj.label91:setName("label91");

    obj.comboBox6 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.layout73);
    obj.comboBox6:setLeft(60);
    obj.comboBox6:setTop(0);
    obj.comboBox6:setWidth(165);
    obj.comboBox6:setHeight(25);
    obj.comboBox6:setField("inventario_6");
    obj.comboBox6:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox6:setName("comboBox6");

    obj.layout74 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.layout67);
    obj.layout74:setLeft(0);
    obj.layout74:setTop(150);
    obj.layout74:setWidth(230);
    obj.layout74:setHeight(25);
    obj.layout74:setName("layout74");

    obj.label92 = gui.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout74);
    obj.label92:setLeft(0);
    obj.label92:setTop(5);
    obj.label92:setWidth(60);
    obj.label92:setHeight(20);
    obj.label92:setText("7. ");
    obj.label92:setHorzTextAlign("center");
    obj.label92:setName("label92");

    obj.comboBox7 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.layout74);
    obj.comboBox7:setLeft(60);
    obj.comboBox7:setTop(0);
    obj.comboBox7:setWidth(165);
    obj.comboBox7:setHeight(25);
    obj.comboBox7:setField("inventario_7");
    obj.comboBox7:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox7:setName("comboBox7");

    obj.layout75 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.layout67);
    obj.layout75:setLeft(0);
    obj.layout75:setTop(175);
    obj.layout75:setWidth(230);
    obj.layout75:setHeight(25);
    obj.layout75:setName("layout75");

    obj.label93 = gui.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout75);
    obj.label93:setLeft(0);
    obj.label93:setTop(5);
    obj.label93:setWidth(60);
    obj.label93:setHeight(20);
    obj.label93:setText("8. ");
    obj.label93:setHorzTextAlign("center");
    obj.label93:setName("label93");

    obj.comboBox8 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.layout75);
    obj.comboBox8:setLeft(60);
    obj.comboBox8:setTop(0);
    obj.comboBox8:setWidth(165);
    obj.comboBox8:setHeight(25);
    obj.comboBox8:setField("inventario_8");
    obj.comboBox8:setItems({'Card: DESTRUCTION', 'Card: GILGAMESH', 'Card: GUNGNIR', 'Card: AVALON', 'Card: SAVITAR', 'Card: APOLO', 'Card: ÁRTEMIS', '-'});
    obj.comboBox8:setName("comboBox8");

    obj.layout76 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.layout66);
    obj.layout76:setLeft(250);
    obj.layout76:setTop(25);
    obj.layout76:setWidth(230);
    obj.layout76:setHeight(50);
    obj.layout76:setName("layout76");

    obj.rectangle32 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout76);
    obj.rectangle32:setAlign("client");
    obj.rectangle32:setColor("#191919");
    obj.rectangle32:setXradius(5);
    obj.rectangle32:setYradius(5);
    obj.rectangle32:setCornerType("round");
    obj.rectangle32:setName("rectangle32");

    obj.layout77 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.layout76);
    obj.layout77:setLeft(0);
    obj.layout77:setTop(0);
    obj.layout77:setWidth(230);
    obj.layout77:setHeight(25);
    obj.layout77:setName("layout77");

    obj.label94 = gui.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout77);
    obj.label94:setLeft(0);
    obj.label94:setTop(5);
    obj.label94:setWidth(60);
    obj.label94:setHeight(20);
    obj.label94:setText("9. ");
    obj.label94:setHorzTextAlign("center");
    obj.label94:setName("label94");

    obj.comboBox9 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.layout77);
    obj.comboBox9:setLeft(60);
    obj.comboBox9:setTop(0);
    obj.comboBox9:setWidth(165);
    obj.comboBox9:setHeight(25);
    obj.comboBox9:setField("inventario_9");
    obj.comboBox9:setItems({'Estojo', 'Mochila', 'Bag', '-'});
    obj.comboBox9:setName("comboBox9");

    obj.layout78 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.layout76);
    obj.layout78:setLeft(0);
    obj.layout78:setTop(25);
    obj.layout78:setWidth(230);
    obj.layout78:setHeight(25);
    obj.layout78:setName("layout78");

    obj.label95 = gui.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout78);
    obj.label95:setLeft(0);
    obj.label95:setTop(5);
    obj.label95:setWidth(60);
    obj.label95:setHeight(20);
    obj.label95:setText("10. ");
    obj.label95:setHorzTextAlign("center");
    obj.label95:setName("label95");

    obj.inventario_10 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_10:setParent(obj.layout78);
    obj.inventario_10:setLeft(60);
    obj.inventario_10:setTop(0);
    obj.inventario_10:setWidth(165);
    obj.inventario_10:setHeight(25);
    obj.inventario_10:setField("inventario_10");
    obj.inventario_10:setName("inventario_10");

    obj.dataLink11 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.layout76);
    obj.dataLink11:setField("inventario_9");
    obj.dataLink11:setName("dataLink11");

    obj.layout79 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.layout66);
    obj.layout79:setLeft(490);
    obj.layout79:setTop(25);
    obj.layout79:setWidth(230);
    obj.layout79:setHeight(200);
    obj.layout79:setName("layout79");

    obj.rectangle33 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout79);
    obj.rectangle33:setAlign("client");
    obj.rectangle33:setColor("#191919");
    obj.rectangle33:setXradius(5);
    obj.rectangle33:setYradius(5);
    obj.rectangle33:setCornerType("round");
    obj.rectangle33:setName("rectangle33");

    obj.layout80 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.layout79);
    obj.layout80:setLeft(0);
    obj.layout80:setTop(0);
    obj.layout80:setWidth(230);
    obj.layout80:setHeight(25);
    obj.layout80:setName("layout80");

    obj.label96 = gui.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout80);
    obj.label96:setLeft(0);
    obj.label96:setTop(5);
    obj.label96:setWidth(60);
    obj.label96:setHeight(20);
    obj.label96:setText("11. ");
    obj.label96:setHorzTextAlign("center");
    obj.label96:setName("label96");

    obj.inventario_11 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_11:setParent(obj.layout80);
    obj.inventario_11:setLeft(60);
    obj.inventario_11:setTop(0);
    obj.inventario_11:setWidth(165);
    obj.inventario_11:setHeight(25);
    obj.inventario_11:setField("inventario_11");
    obj.inventario_11:setName("inventario_11");

    obj.layout81 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.layout79);
    obj.layout81:setLeft(0);
    obj.layout81:setTop(25);
    obj.layout81:setWidth(230);
    obj.layout81:setHeight(25);
    obj.layout81:setName("layout81");

    obj.label97 = gui.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout81);
    obj.label97:setLeft(0);
    obj.label97:setTop(5);
    obj.label97:setWidth(60);
    obj.label97:setHeight(20);
    obj.label97:setText("12. ");
    obj.label97:setHorzTextAlign("center");
    obj.label97:setName("label97");

    obj.inventario_12 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_12:setParent(obj.layout81);
    obj.inventario_12:setLeft(60);
    obj.inventario_12:setTop(0);
    obj.inventario_12:setWidth(165);
    obj.inventario_12:setHeight(25);
    obj.inventario_12:setField("inventario_12");
    obj.inventario_12:setName("inventario_12");

    obj.layout82 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.layout79);
    obj.layout82:setLeft(0);
    obj.layout82:setTop(50);
    obj.layout82:setWidth(230);
    obj.layout82:setHeight(25);
    obj.layout82:setName("layout82");

    obj.label98 = gui.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout82);
    obj.label98:setLeft(0);
    obj.label98:setTop(5);
    obj.label98:setWidth(60);
    obj.label98:setHeight(20);
    obj.label98:setText("13. ");
    obj.label98:setHorzTextAlign("center");
    obj.label98:setName("label98");

    obj.inventario_13 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_13:setParent(obj.layout82);
    obj.inventario_13:setLeft(60);
    obj.inventario_13:setTop(0);
    obj.inventario_13:setWidth(165);
    obj.inventario_13:setHeight(25);
    obj.inventario_13:setField("inventario_13");
    obj.inventario_13:setName("inventario_13");

    obj.layout83 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.layout79);
    obj.layout83:setLeft(0);
    obj.layout83:setTop(75);
    obj.layout83:setWidth(230);
    obj.layout83:setHeight(25);
    obj.layout83:setName("layout83");

    obj.label99 = gui.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout83);
    obj.label99:setLeft(0);
    obj.label99:setTop(5);
    obj.label99:setWidth(60);
    obj.label99:setHeight(20);
    obj.label99:setText("14. ");
    obj.label99:setHorzTextAlign("center");
    obj.label99:setName("label99");

    obj.inventario_14 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_14:setParent(obj.layout83);
    obj.inventario_14:setLeft(60);
    obj.inventario_14:setTop(0);
    obj.inventario_14:setWidth(165);
    obj.inventario_14:setHeight(25);
    obj.inventario_14:setField("inventario_14");
    obj.inventario_14:setName("inventario_14");

    obj.layout84 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.layout79);
    obj.layout84:setLeft(0);
    obj.layout84:setTop(100);
    obj.layout84:setWidth(230);
    obj.layout84:setHeight(25);
    obj.layout84:setName("layout84");

    obj.label100 = gui.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout84);
    obj.label100:setLeft(0);
    obj.label100:setTop(5);
    obj.label100:setWidth(60);
    obj.label100:setHeight(20);
    obj.label100:setText("15. ");
    obj.label100:setHorzTextAlign("center");
    obj.label100:setName("label100");

    obj.inventario_15 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_15:setParent(obj.layout84);
    obj.inventario_15:setLeft(60);
    obj.inventario_15:setTop(0);
    obj.inventario_15:setWidth(165);
    obj.inventario_15:setHeight(25);
    obj.inventario_15:setField("inventario_15");
    obj.inventario_15:setName("inventario_15");

    obj.layout85 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.layout79);
    obj.layout85:setLeft(0);
    obj.layout85:setTop(125);
    obj.layout85:setWidth(230);
    obj.layout85:setHeight(25);
    obj.layout85:setName("layout85");

    obj.label101 = gui.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout85);
    obj.label101:setLeft(0);
    obj.label101:setTop(5);
    obj.label101:setWidth(60);
    obj.label101:setHeight(20);
    obj.label101:setText("16. ");
    obj.label101:setHorzTextAlign("center");
    obj.label101:setName("label101");

    obj.inventario_16 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_16:setParent(obj.layout85);
    obj.inventario_16:setLeft(60);
    obj.inventario_16:setTop(0);
    obj.inventario_16:setWidth(165);
    obj.inventario_16:setHeight(25);
    obj.inventario_16:setField("inventario_16");
    obj.inventario_16:setName("inventario_16");

    obj.layout86 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.layout79);
    obj.layout86:setLeft(0);
    obj.layout86:setTop(150);
    obj.layout86:setWidth(230);
    obj.layout86:setHeight(25);
    obj.layout86:setName("layout86");

    obj.label102 = gui.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout86);
    obj.label102:setLeft(0);
    obj.label102:setTop(5);
    obj.label102:setWidth(60);
    obj.label102:setHeight(20);
    obj.label102:setText("17. ");
    obj.label102:setHorzTextAlign("center");
    obj.label102:setName("label102");

    obj.inventario_17 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_17:setParent(obj.layout86);
    obj.inventario_17:setLeft(60);
    obj.inventario_17:setTop(0);
    obj.inventario_17:setWidth(165);
    obj.inventario_17:setHeight(25);
    obj.inventario_17:setField("inventario_17");
    obj.inventario_17:setName("inventario_17");

    obj.layout87 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.layout79);
    obj.layout87:setLeft(0);
    obj.layout87:setTop(175);
    obj.layout87:setWidth(230);
    obj.layout87:setHeight(25);
    obj.layout87:setName("layout87");

    obj.label103 = gui.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout87);
    obj.label103:setLeft(0);
    obj.label103:setTop(5);
    obj.label103:setWidth(60);
    obj.label103:setHeight(20);
    obj.label103:setText("18. ");
    obj.label103:setHorzTextAlign("center");
    obj.label103:setName("label103");

    obj.inventario_18 = gui.fromHandle(_obj_newObject("edit"));
    obj.inventario_18:setParent(obj.layout87);
    obj.inventario_18:setLeft(60);
    obj.inventario_18:setTop(0);
    obj.inventario_18:setWidth(165);
    obj.inventario_18:setHeight(25);
    obj.inventario_18:setField("inventario_18");
    obj.inventario_18:setName("inventario_18");

    obj.layout88 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.layout66);
    obj.layout88:setLeft(730);
    obj.layout88:setTop(25);
    obj.layout88:setWidth(230);
    obj.layout88:setHeight(200);
    obj.layout88:setName("layout88");

    obj.rectangle34 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.layout88);
    obj.rectangle34:setAlign("client");
    obj.rectangle34:setColor("#191919");
    obj.rectangle34:setXradius(5);
    obj.rectangle34:setYradius(5);
    obj.rectangle34:setCornerType("round");
    obj.rectangle34:setName("rectangle34");

    obj.label104 = gui.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout88);
    obj.label104:setLeft(0);
    obj.label104:setTop(0);
    obj.label104:setWidth(230);
    obj.label104:setHeight(20);
    obj.label104:setText("Anotações");
    obj.label104:setHorzTextAlign("center");
    obj.label104:setName("label104");

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout88);
    obj.textEditor9:setLeft(5);
    obj.textEditor9:setTop(20);
    obj.textEditor9:setWidth(220);
    obj.textEditor9:setHeight(175);
    obj.textEditor9:setField("inventario_19");
    obj.textEditor9:setName("textEditor9");

    obj.tab6 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Zhuls");
    obj.tab6:setName("tab6");

    obj.tabControl3 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl3:setParent(obj.tab6);
    obj.tabControl3:setAlign("client");
    obj.tabControl3:setName("tabControl3");

    obj.tab7 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.tabControl3);
    obj.tab7:setTitle("Status Básicos");
    obj.tab7:setName("tab7");

    obj.frmAMZ2_1 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ2_1:setParent(obj.tab7);
    obj.frmAMZ2_1:setName("frmAMZ2_1");
    obj.frmAMZ2_1:setAlign("client");
    obj.frmAMZ2_1:setTheme("dark");

    obj.scrollBox5 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.frmAMZ2_1);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.layout89 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.scrollBox5);
    obj.layout89:setLeft(0);
    obj.layout89:setTop(0);
    obj.layout89:setWidth(960);
    obj.layout89:setHeight(35);
    obj.layout89:setName("layout89");

    obj.rectangle35 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.layout89);
    obj.rectangle35:setAlign("client");
    obj.rectangle35:setColor("black");
    obj.rectangle35:setXradius(5);
    obj.rectangle35:setYradius(5);
    obj.rectangle35:setCornerType("round");
    obj.rectangle35:setName("rectangle35");

    obj.layout90 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.layout89);
    obj.layout90:setLeft(5);
    obj.layout90:setTop(5);
    obj.layout90:setWidth(310);
    obj.layout90:setHeight(25);
    obj.layout90:setName("layout90");

    obj.label105 = gui.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout90);
    obj.label105:setLeft(0);
    obj.label105:setTop(5);
    obj.label105:setWidth(80);
    obj.label105:setHeight(20);
    obj.label105:setText("Portador");
    obj.label105:setHorzTextAlign("trailing");
    obj.label105:setName("label105");

    obj.edit57 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout90);
    obj.edit57:setLeft(85);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(155);
    obj.edit57:setHeight(25);
    obj.edit57:setField("desc_portador ");
    obj.edit57:setName("edit57");

    obj.layout91 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.layout89);
    obj.layout91:setLeft(240);
    obj.layout91:setTop(5);
    obj.layout91:setWidth(310);
    obj.layout91:setHeight(25);
    obj.layout91:setName("layout91");

    obj.label106 = gui.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout91);
    obj.label106:setLeft(0);
    obj.label106:setTop(5);
    obj.label106:setWidth(80);
    obj.label106:setHeight(20);
    obj.label106:setText("Nome");
    obj.label106:setHorzTextAlign("trailing");
    obj.label106:setName("label106");

    obj.edit58 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout91);
    obj.edit58:setLeft(85);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(155);
    obj.edit58:setHeight(25);
    obj.edit58:setField("desc_nome_zhuls");
    obj.edit58:setName("edit58");

    obj.layout92 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.layout89);
    obj.layout92:setLeft(475);
    obj.layout92:setTop(5);
    obj.layout92:setWidth(310);
    obj.layout92:setHeight(25);
    obj.layout92:setName("layout92");

    obj.label107 = gui.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout92);
    obj.label107:setLeft(0);
    obj.label107:setTop(5);
    obj.label107:setWidth(80);
    obj.label107:setHeight(20);
    obj.label107:setText("Porte");
    obj.label107:setHorzTextAlign("trailing");
    obj.label107:setName("label107");

    obj.edit59 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout92);
    obj.edit59:setLeft(85);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(155);
    obj.edit59:setHeight(25);
    obj.edit59:setField("desc_porte");
    obj.edit59:setName("edit59");

    obj.layout93 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.layout89);
    obj.layout93:setLeft(710);
    obj.layout93:setTop(5);
    obj.layout93:setWidth(310);
    obj.layout93:setHeight(25);
    obj.layout93:setName("layout93");

    obj.label108 = gui.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout93);
    obj.label108:setLeft(0);
    obj.label108:setTop(5);
    obj.label108:setWidth(80);
    obj.label108:setHeight(20);
    obj.label108:setText("Altura");
    obj.label108:setHorzTextAlign("trailing");
    obj.label108:setName("label108");

    obj.edit60 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout93);
    obj.edit60:setLeft(85);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(155);
    obj.edit60:setHeight(25);
    obj.edit60:setField("desc_altura_zhuls");
    obj.edit60:setName("edit60");

    obj.layout94 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.scrollBox5);
    obj.layout94:setLeft(0);
    obj.layout94:setTop(40);
    obj.layout94:setWidth(400);
    obj.layout94:setHeight(400);
    obj.layout94:setName("layout94");

    obj.rectangle36 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout94);
    obj.rectangle36:setAlign("client");
    obj.rectangle36:setColor("black");
    obj.rectangle36:setXradius(5);
    obj.rectangle36:setYradius(5);
    obj.rectangle36:setCornerType("round");
    obj.rectangle36:setName("rectangle36");

    obj.label109 = gui.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout94);
    obj.label109:setLeft(0);
    obj.label109:setTop(0);
    obj.label109:setWidth(400);
    obj.label109:setHeight(20);
    obj.label109:setText("Frase de Invocação");
    obj.label109:setHorzTextAlign("center");
    obj.label109:setName("label109");

    obj.textEditor10 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout94);
    obj.textEditor10:setLeft(10);
    obj.textEditor10:setTop(25);
    obj.textEditor10:setWidth(380);
    obj.textEditor10:setHeight(360);
    obj.textEditor10:setField("invocacao");
    obj.textEditor10:setName("textEditor10");

    obj.layout95 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.scrollBox5);
    obj.layout95:setLeft(410);
    obj.layout95:setTop(40);
    obj.layout95:setWidth(400);
    obj.layout95:setHeight(400);
    obj.layout95:setName("layout95");

    obj.rectangle37 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout95);
    obj.rectangle37:setAlign("client");
    obj.rectangle37:setColor("black");
    obj.rectangle37:setXradius(5);
    obj.rectangle37:setYradius(5);
    obj.rectangle37:setCornerType("round");
    obj.rectangle37:setName("rectangle37");

    obj.label110 = gui.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout95);
    obj.label110:setLeft(0);
    obj.label110:setTop(0);
    obj.label110:setWidth(400);
    obj.label110:setHeight(20);
    obj.label110:setText("Caracteristicas");
    obj.label110:setHorzTextAlign("center");
    obj.label110:setName("label110");

    obj.textEditor11 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout95);
    obj.textEditor11:setLeft(10);
    obj.textEditor11:setTop(25);
    obj.textEditor11:setWidth(380);
    obj.textEditor11:setHeight(360);
    obj.textEditor11:setField("caracteristicas_zhuls");
    obj.textEditor11:setName("textEditor11");

    obj.layout96 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.scrollBox5);
    obj.layout96:setLeft(820);
    obj.layout96:setTop(40);
    obj.layout96:setWidth(400);
    obj.layout96:setHeight(400);
    obj.layout96:setName("layout96");

    obj.rectangle38 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.layout96);
    obj.rectangle38:setAlign("client");
    obj.rectangle38:setColor("black");
    obj.rectangle38:setStrokeColor("white");
    obj.rectangle38:setStrokeSize(1);
    obj.rectangle38:setName("rectangle38");

    obj.image3 = gui.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout96);
    obj.image3:setLeft(1);
    obj.image3:setTop(1);
    obj.image3:setWidth(398);
    obj.image3:setHeight(398);
    obj.image3:setField("avatar_zhul");
    obj.image3:setEditable(true);
    obj.image3:setStyle("autoFit");
    obj.image3:setName("image3");

    obj.tab8 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab8:setParent(obj.tabControl3);
    obj.tab8:setTitle("Status Avançados");
    obj.tab8:setName("tab8");

    obj.frmAMZ2_2 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ2_2:setParent(obj.tab8);
    obj.frmAMZ2_2:setName("frmAMZ2_2");
    obj.frmAMZ2_2:setAlign("client");
    obj.frmAMZ2_2:setTheme("dark");

    obj.scrollBox6 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.frmAMZ2_2);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.layout97 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.scrollBox6);
    obj.layout97:setLeft(0);
    obj.layout97:setTop(0);
    obj.layout97:setWidth(270);
    obj.layout97:setHeight(230);
    obj.layout97:setName("layout97");

    obj.rectangle39 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout97);
    obj.rectangle39:setAlign("client");
    obj.rectangle39:setColor("black");
    obj.rectangle39:setXradius(5);
    obj.rectangle39:setYradius(5);
    obj.rectangle39:setCornerType("round");
    obj.rectangle39:setName("rectangle39");

    obj.label111 = gui.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout97);
    obj.label111:setLeft(0);
    obj.label111:setTop(0);
    obj.label111:setWidth(270);
    obj.label111:setHeight(20);
    obj.label111:setText("Geral");
    obj.label111:setHorzTextAlign("center");
    obj.label111:setName("label111");

    obj.layout98 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.layout97);
    obj.layout98:setLeft(5);
    obj.layout98:setTop(25);
    obj.layout98:setWidth(260);
    obj.layout98:setHeight(25);
    obj.layout98:setName("layout98");

    obj.label112 = gui.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.layout98);
    obj.label112:setLeft(0);
    obj.label112:setTop(0);
    obj.label112:setWidth(110);
    obj.label112:setHeight(20);
    obj.label112:setText("Modelo");
    obj.label112:setHorzTextAlign("center");
    obj.label112:setName("label112");

    obj.edit61 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout98);
    obj.edit61:setLeft(110);
    obj.edit61:setTop(0);
    obj.edit61:setWidth(75);
    obj.edit61:setHeight(25);
    obj.edit61:setField("modelo_nome");
    obj.edit61:setName("edit61");

    obj.edit62 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout98);
    obj.edit62:setLeft(185);
    obj.edit62:setTop(0);
    obj.edit62:setWidth(75);
    obj.edit62:setHeight(25);
    obj.edit62:setField("modelo_tipo");
    obj.edit62:setName("edit62");

    obj.layout99 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.layout97);
    obj.layout99:setLeft(5);
    obj.layout99:setTop(50);
    obj.layout99:setWidth(260);
    obj.layout99:setHeight(75);
    obj.layout99:setName("layout99");

    obj.label113 = gui.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.layout99);
    obj.label113:setLeft(110);
    obj.label113:setTop(5);
    obj.label113:setWidth(50);
    obj.label113:setHeight(20);
    obj.label113:setText("Inicial");
    obj.label113:setHorzTextAlign("center");
    obj.label113:setName("label113");

    obj.label114 = gui.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.layout99);
    obj.label114:setLeft(160);
    obj.label114:setTop(5);
    obj.label114:setWidth(50);
    obj.label114:setHeight(20);
    obj.label114:setText("Evolução");
    obj.label114:setHorzTextAlign("center");
    obj.label114:setFontSize(11);
    obj.label114:setName("label114");

    obj.label115 = gui.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout99);
    obj.label115:setLeft(210);
    obj.label115:setTop(5);
    obj.label115:setWidth(50);
    obj.label115:setHeight(20);
    obj.label115:setText("Total");
    obj.label115:setHorzTextAlign("center");
    obj.label115:setName("label115");

    obj.label116 = gui.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout99);
    obj.label116:setLeft(0);
    obj.label116:setTop(25);
    obj.label116:setWidth(110);
    obj.label116:setHeight(20);
    obj.label116:setText("HP");
    obj.label116:setHorzTextAlign("center");
    obj.label116:setName("label116");

    obj.edit63 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout99);
    obj.edit63:setLeft(110);
    obj.edit63:setTop(25);
    obj.edit63:setWidth(50);
    obj.edit63:setHeight(25);
    obj.edit63:setField("hp_inicial");
    obj.edit63:setType("number");
    obj.edit63:setName("edit63");

    obj.edit64 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout99);
    obj.edit64:setLeft(160);
    obj.edit64:setTop(25);
    obj.edit64:setWidth(50);
    obj.edit64:setHeight(25);
    obj.edit64:setField("hp_evolucao");
    obj.edit64:setType("number");
    obj.edit64:setName("edit64");

    obj.edit65 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout99);
    obj.edit65:setLeft(210);
    obj.edit65:setTop(25);
    obj.edit65:setWidth(50);
    obj.edit65:setHeight(25);
    obj.edit65:setField("hp_total");
    obj.edit65:setType("number");
    obj.edit65:setName("edit65");

    obj.label117 = gui.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout99);
    obj.label117:setLeft(0);
    obj.label117:setTop(50);
    obj.label117:setWidth(110);
    obj.label117:setHeight(20);
    obj.label117:setText("Energia");
    obj.label117:setHorzTextAlign("center");
    obj.label117:setName("label117");

    obj.edit66 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout99);
    obj.edit66:setLeft(110);
    obj.edit66:setTop(50);
    obj.edit66:setWidth(50);
    obj.edit66:setHeight(25);
    obj.edit66:setField("energia_inicial");
    obj.edit66:setType("number");
    obj.edit66:setName("edit66");

    obj.edit67 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout99);
    obj.edit67:setLeft(160);
    obj.edit67:setTop(50);
    obj.edit67:setWidth(50);
    obj.edit67:setHeight(25);
    obj.edit67:setField("energia_evolucao");
    obj.edit67:setType("number");
    obj.edit67:setName("edit67");

    obj.edit68 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout99);
    obj.edit68:setLeft(210);
    obj.edit68:setTop(50);
    obj.edit68:setWidth(50);
    obj.edit68:setHeight(25);
    obj.edit68:setField("energia_total");
    obj.edit68:setType("number");
    obj.edit68:setName("edit68");

    obj.layout100 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.layout97);
    obj.layout100:setLeft(5);
    obj.layout100:setTop(125);
    obj.layout100:setWidth(260);
    obj.layout100:setHeight(25);
    obj.layout100:setName("layout100");

    obj.label118 = gui.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout100);
    obj.label118:setLeft(0);
    obj.label118:setTop(0);
    obj.label118:setWidth(110);
    obj.label118:setHeight(20);
    obj.label118:setText("Nível");
    obj.label118:setHorzTextAlign("center");
    obj.label118:setName("label118");

    obj.edit69 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout100);
    obj.edit69:setLeft(110);
    obj.edit69:setTop(0);
    obj.edit69:setWidth(150);
    obj.edit69:setHeight(25);
    obj.edit69:setField("nivel_zhul");
    obj.edit69:setName("edit69");

    obj.layout101 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.layout97);
    obj.layout101:setLeft(5);
    obj.layout101:setTop(150);
    obj.layout101:setWidth(260);
    obj.layout101:setHeight(25);
    obj.layout101:setName("layout101");

    obj.label119 = gui.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout101);
    obj.label119:setLeft(0);
    obj.label119:setTop(0);
    obj.label119:setWidth(260);
    obj.label119:setHeight(20);
    obj.label119:setText("Informações de Resistência");
    obj.label119:setHorzTextAlign("center");
    obj.label119:setName("label119");

    obj.layout102 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.layout97);
    obj.layout102:setLeft(5);
    obj.layout102:setTop(175);
    obj.layout102:setWidth(260);
    obj.layout102:setHeight(25);
    obj.layout102:setName("layout102");

    obj.label120 = gui.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout102);
    obj.label120:setLeft(0);
    obj.label120:setTop(0);
    obj.label120:setWidth(55);
    obj.label120:setHeight(20);
    obj.label120:setText("10%");
    obj.label120:setHorzTextAlign("center");
    obj.label120:setName("label120");

    obj.edit70 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout102);
    obj.edit70:setLeft(55);
    obj.edit70:setTop(0);
    obj.edit70:setWidth(75);
    obj.edit70:setHeight(25);
    obj.edit70:setField("res_10");
    obj.edit70:setType("number");
    obj.edit70:setName("edit70");

    obj.label121 = gui.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.layout102);
    obj.label121:setLeft(130);
    obj.label121:setTop(0);
    obj.label121:setWidth(55);
    obj.label121:setHeight(20);
    obj.label121:setText("30%");
    obj.label121:setHorzTextAlign("center");
    obj.label121:setName("label121");

    obj.edit71 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout102);
    obj.edit71:setLeft(185);
    obj.edit71:setTop(0);
    obj.edit71:setWidth(75);
    obj.edit71:setHeight(25);
    obj.edit71:setField("res_30");
    obj.edit71:setType("number");
    obj.edit71:setName("edit71");

    obj.layout103 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.layout97);
    obj.layout103:setLeft(5);
    obj.layout103:setTop(200);
    obj.layout103:setWidth(260);
    obj.layout103:setHeight(25);
    obj.layout103:setName("layout103");

    obj.label122 = gui.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout103);
    obj.label122:setLeft(0);
    obj.label122:setTop(0);
    obj.label122:setWidth(55);
    obj.label122:setHeight(20);
    obj.label122:setText("50%");
    obj.label122:setHorzTextAlign("center");
    obj.label122:setName("label122");

    obj.edit72 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout103);
    obj.edit72:setLeft(55);
    obj.edit72:setTop(0);
    obj.edit72:setWidth(75);
    obj.edit72:setHeight(25);
    obj.edit72:setField("res_50");
    obj.edit72:setType("number");
    obj.edit72:setName("edit72");

    obj.label123 = gui.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.layout103);
    obj.label123:setLeft(130);
    obj.label123:setTop(0);
    obj.label123:setWidth(55);
    obj.label123:setHeight(20);
    obj.label123:setText("80%");
    obj.label123:setHorzTextAlign("center");
    obj.label123:setName("label123");

    obj.edit73 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout103);
    obj.edit73:setLeft(185);
    obj.edit73:setTop(0);
    obj.edit73:setWidth(75);
    obj.edit73:setHeight(25);
    obj.edit73:setField("res_80");
    obj.edit73:setType("number");
    obj.edit73:setName("edit73");

    obj.layout104 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.scrollBox6);
    obj.layout104:setLeft(280);
    obj.layout104:setTop(0);
    obj.layout104:setWidth(320);
    obj.layout104:setHeight(155);
    obj.layout104:setName("layout104");

    obj.rectangle40 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout104);
    obj.rectangle40:setAlign("client");
    obj.rectangle40:setColor("black");
    obj.rectangle40:setXradius(5);
    obj.rectangle40:setYradius(5);
    obj.rectangle40:setCornerType("round");
    obj.rectangle40:setName("rectangle40");

    obj.label124 = gui.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout104);
    obj.label124:setLeft(0);
    obj.label124:setTop(0);
    obj.label124:setWidth(320);
    obj.label124:setHeight(20);
    obj.label124:setText("Atributos");
    obj.label124:setHorzTextAlign("center");
    obj.label124:setName("label124");

    obj.layout105 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.layout104);
    obj.layout105:setLeft(5);
    obj.layout105:setTop(25);
    obj.layout105:setWidth(310);
    obj.layout105:setHeight(25);
    obj.layout105:setName("layout105");

    obj.label125 = gui.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.layout105);
    obj.label125:setLeft(110);
    obj.label125:setTop(5);
    obj.label125:setWidth(50);
    obj.label125:setHeight(20);
    obj.label125:setText("Inicial");
    obj.label125:setHorzTextAlign("center");
    obj.label125:setName("label125");

    obj.label126 = gui.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.layout105);
    obj.label126:setLeft(160);
    obj.label126:setTop(5);
    obj.label126:setWidth(50);
    obj.label126:setHeight(20);
    obj.label126:setText("Modelo");
    obj.label126:setHorzTextAlign("center");
    obj.label126:setName("label126");

    obj.label127 = gui.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.layout105);
    obj.label127:setLeft(210);
    obj.label127:setTop(5);
    obj.label127:setWidth(50);
    obj.label127:setHeight(20);
    obj.label127:setText("Evolução");
    obj.label127:setHorzTextAlign("center");
    obj.label127:setFontSize(11);
    obj.label127:setName("label127");

    obj.label128 = gui.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.layout105);
    obj.label128:setLeft(260);
    obj.label128:setTop(5);
    obj.label128:setWidth(50);
    obj.label128:setHeight(20);
    obj.label128:setText("Total");
    obj.label128:setHorzTextAlign("center");
    obj.label128:setName("label128");

    obj.layout106 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.layout104);
    obj.layout106:setLeft(5);
    obj.layout106:setTop(50);
    obj.layout106:setWidth(310);
    obj.layout106:setHeight(25);
    obj.layout106:setName("layout106");

    obj.label129 = gui.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout106);
    obj.label129:setLeft(0);
    obj.label129:setTop(0);
    obj.label129:setWidth(110);
    obj.label129:setHeight(20);
    obj.label129:setText("Força (FOR)");
    obj.label129:setHorzTextAlign("center");
    obj.label129:setFontSize(13);
    obj.label129:setName("label129");

    obj.edit74 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout106);
    obj.edit74:setLeft(110);
    obj.edit74:setTop(0);
    obj.edit74:setWidth(50);
    obj.edit74:setHeight(25);
    obj.edit74:setField("atr_inicial_for");
    obj.edit74:setType("number");
    obj.edit74:setName("edit74");

    obj.edit75 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout106);
    obj.edit75:setLeft(160);
    obj.edit75:setTop(0);
    obj.edit75:setWidth(50);
    obj.edit75:setHeight(25);
    obj.edit75:setField("atr_dom_for");
    obj.edit75:setType("number");
    obj.edit75:setName("edit75");

    obj.edit76 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout106);
    obj.edit76:setLeft(210);
    obj.edit76:setTop(0);
    obj.edit76:setWidth(50);
    obj.edit76:setHeight(25);
    obj.edit76:setField("atr_evolucao_for");
    obj.edit76:setType("number");
    obj.edit76:setName("edit76");

    obj.rectangle41 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout106);
    obj.rectangle41:setLeft(260);
    obj.rectangle41:setTop(0);
    obj.rectangle41:setWidth(50);
    obj.rectangle41:setHeight(25);
    obj.rectangle41:setColor("black");
    obj.rectangle41:setStrokeColor("white");
    obj.rectangle41:setStrokeSize(1);
    obj.rectangle41:setName("rectangle41");

    obj.label130 = gui.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout106);
    obj.label130:setLeft(260);
    obj.label130:setTop(0);
    obj.label130:setWidth(50);
    obj.label130:setHeight(25);
    obj.label130:setHorzTextAlign("center");
    obj.label130:setField("atr_total_for");
    obj.label130:setName("label130");

    obj.dataLink12 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout106);
    obj.dataLink12:setFields({'atr_inicial_for', 'atr_dom_for', 'atr_evolucao_for'});
    obj.dataLink12:setName("dataLink12");

    obj.layout107 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.layout104);
    obj.layout107:setLeft(5);
    obj.layout107:setTop(75);
    obj.layout107:setWidth(310);
    obj.layout107:setHeight(25);
    obj.layout107:setName("layout107");

    obj.label131 = gui.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout107);
    obj.label131:setLeft(0);
    obj.label131:setTop(0);
    obj.label131:setWidth(110);
    obj.label131:setHeight(20);
    obj.label131:setText("Velocidade (VEL)");
    obj.label131:setHorzTextAlign("center");
    obj.label131:setFontSize(13);
    obj.label131:setName("label131");

    obj.edit77 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout107);
    obj.edit77:setLeft(110);
    obj.edit77:setTop(0);
    obj.edit77:setWidth(50);
    obj.edit77:setHeight(25);
    obj.edit77:setField("atr_inicial_vel");
    obj.edit77:setType("number");
    obj.edit77:setName("edit77");

    obj.edit78 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout107);
    obj.edit78:setLeft(160);
    obj.edit78:setTop(0);
    obj.edit78:setWidth(50);
    obj.edit78:setHeight(25);
    obj.edit78:setField("atr_dom_vel");
    obj.edit78:setType("number");
    obj.edit78:setName("edit78");

    obj.edit79 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout107);
    obj.edit79:setLeft(210);
    obj.edit79:setTop(0);
    obj.edit79:setWidth(50);
    obj.edit79:setHeight(25);
    obj.edit79:setField("atr_evolucao_vel");
    obj.edit79:setType("number");
    obj.edit79:setName("edit79");

    obj.rectangle42 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.layout107);
    obj.rectangle42:setLeft(260);
    obj.rectangle42:setTop(0);
    obj.rectangle42:setWidth(50);
    obj.rectangle42:setHeight(25);
    obj.rectangle42:setColor("black");
    obj.rectangle42:setStrokeColor("white");
    obj.rectangle42:setStrokeSize(1);
    obj.rectangle42:setName("rectangle42");

    obj.label132 = gui.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout107);
    obj.label132:setLeft(260);
    obj.label132:setTop(0);
    obj.label132:setWidth(50);
    obj.label132:setHeight(25);
    obj.label132:setHorzTextAlign("center");
    obj.label132:setField("atr_total_vel");
    obj.label132:setName("label132");

    obj.dataLink13 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.layout107);
    obj.dataLink13:setFields({'atr_inicial_vel', 'atr_dom_vel', 'atr_evolucao_vel'});
    obj.dataLink13:setName("dataLink13");

    obj.layout108 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.layout104);
    obj.layout108:setLeft(5);
    obj.layout108:setTop(100);
    obj.layout108:setWidth(310);
    obj.layout108:setHeight(25);
    obj.layout108:setName("layout108");

    obj.label133 = gui.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout108);
    obj.label133:setLeft(0);
    obj.label133:setTop(0);
    obj.label133:setWidth(110);
    obj.label133:setHeight(20);
    obj.label133:setText("Maquinário (MAQ)");
    obj.label133:setHorzTextAlign("center");
    obj.label133:setFontSize(13);
    obj.label133:setName("label133");

    obj.edit80 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout108);
    obj.edit80:setLeft(110);
    obj.edit80:setTop(0);
    obj.edit80:setWidth(50);
    obj.edit80:setHeight(25);
    obj.edit80:setField("atr_inicial_maq");
    obj.edit80:setType("number");
    obj.edit80:setName("edit80");

    obj.edit81 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout108);
    obj.edit81:setLeft(160);
    obj.edit81:setTop(0);
    obj.edit81:setWidth(50);
    obj.edit81:setHeight(25);
    obj.edit81:setField("atr_dom_maq");
    obj.edit81:setType("number");
    obj.edit81:setName("edit81");

    obj.edit82 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout108);
    obj.edit82:setLeft(210);
    obj.edit82:setTop(0);
    obj.edit82:setWidth(50);
    obj.edit82:setHeight(25);
    obj.edit82:setField("atr_evolucao_maq");
    obj.edit82:setType("number");
    obj.edit82:setName("edit82");

    obj.rectangle43 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout108);
    obj.rectangle43:setLeft(260);
    obj.rectangle43:setTop(0);
    obj.rectangle43:setWidth(50);
    obj.rectangle43:setHeight(25);
    obj.rectangle43:setColor("black");
    obj.rectangle43:setStrokeColor("white");
    obj.rectangle43:setStrokeSize(1);
    obj.rectangle43:setName("rectangle43");

    obj.label134 = gui.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.layout108);
    obj.label134:setLeft(260);
    obj.label134:setTop(0);
    obj.label134:setWidth(50);
    obj.label134:setHeight(25);
    obj.label134:setHorzTextAlign("center");
    obj.label134:setField("atr_total_maq");
    obj.label134:setName("label134");

    obj.dataLink14 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.layout108);
    obj.dataLink14:setFields({'atr_inicial_maq', 'atr_dom_maq', 'atr_evolucao_maq'});
    obj.dataLink14:setName("dataLink14");

    obj.layout109 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.layout104);
    obj.layout109:setLeft(5);
    obj.layout109:setTop(125);
    obj.layout109:setWidth(310);
    obj.layout109:setHeight(25);
    obj.layout109:setName("layout109");

    obj.label135 = gui.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.layout109);
    obj.label135:setLeft(0);
    obj.label135:setTop(0);
    obj.label135:setWidth(110);
    obj.label135:setHeight(20);
    obj.label135:setText("Construção Elemental (CE)");
    obj.label135:setHorzTextAlign("center");
    obj.label135:setFontSize(9);
    obj.label135:setName("label135");

    obj.edit83 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout109);
    obj.edit83:setLeft(110);
    obj.edit83:setTop(0);
    obj.edit83:setWidth(50);
    obj.edit83:setHeight(25);
    obj.edit83:setField("atr_inicial_ce");
    obj.edit83:setType("number");
    obj.edit83:setName("edit83");

    obj.edit84 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout109);
    obj.edit84:setLeft(160);
    obj.edit84:setTop(0);
    obj.edit84:setWidth(50);
    obj.edit84:setHeight(25);
    obj.edit84:setField("atr_dom_ce");
    obj.edit84:setType("number");
    obj.edit84:setName("edit84");

    obj.edit85 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout109);
    obj.edit85:setLeft(210);
    obj.edit85:setTop(0);
    obj.edit85:setWidth(50);
    obj.edit85:setHeight(25);
    obj.edit85:setField("atr_evolucao_ce");
    obj.edit85:setType("number");
    obj.edit85:setName("edit85");

    obj.rectangle44 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout109);
    obj.rectangle44:setLeft(260);
    obj.rectangle44:setTop(0);
    obj.rectangle44:setWidth(50);
    obj.rectangle44:setHeight(25);
    obj.rectangle44:setColor("black");
    obj.rectangle44:setStrokeColor("white");
    obj.rectangle44:setStrokeSize(1);
    obj.rectangle44:setName("rectangle44");

    obj.label136 = gui.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.layout109);
    obj.label136:setLeft(260);
    obj.label136:setTop(0);
    obj.label136:setWidth(50);
    obj.label136:setHeight(25);
    obj.label136:setHorzTextAlign("center");
    obj.label136:setField("atr_total_ce");
    obj.label136:setName("label136");

    obj.dataLink15 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.layout109);
    obj.dataLink15:setFields({'atr_inicial_ce', 'atr_dom_ce', 'atr_evolucao_ce'});
    obj.dataLink15:setName("dataLink15");

    obj.layout110 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.scrollBox6);
    obj.layout110:setLeft(610);
    obj.layout110:setTop(0);
    obj.layout110:setWidth(320);
    obj.layout110:setHeight(155);
    obj.layout110:setName("layout110");

    obj.rectangle45 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.layout110);
    obj.rectangle45:setAlign("client");
    obj.rectangle45:setColor("black");
    obj.rectangle45:setXradius(5);
    obj.rectangle45:setYradius(5);
    obj.rectangle45:setCornerType("round");
    obj.rectangle45:setName("rectangle45");

    obj.label137 = gui.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.layout110);
    obj.label137:setLeft(0);
    obj.label137:setTop(0);
    obj.label137:setWidth(320);
    obj.label137:setHeight(20);
    obj.label137:setText("Talentos");
    obj.label137:setHorzTextAlign("center");
    obj.label137:setName("label137");

    obj.layout111 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.layout110);
    obj.layout111:setLeft(5);
    obj.layout111:setTop(25);
    obj.layout111:setWidth(310);
    obj.layout111:setHeight(25);
    obj.layout111:setName("layout111");

    obj.label138 = gui.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.layout111);
    obj.label138:setLeft(110);
    obj.label138:setTop(5);
    obj.label138:setWidth(50);
    obj.label138:setHeight(20);
    obj.label138:setText("Natural");
    obj.label138:setHorzTextAlign("center");
    obj.label138:setName("label138");

    obj.label139 = gui.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.layout111);
    obj.label139:setLeft(160);
    obj.label139:setTop(5);
    obj.label139:setWidth(50);
    obj.label139:setHeight(20);
    obj.label139:setText("Modelo");
    obj.label139:setHorzTextAlign("center");
    obj.label139:setName("label139");

    obj.label140 = gui.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.layout111);
    obj.label140:setLeft(210);
    obj.label140:setTop(5);
    obj.label140:setWidth(50);
    obj.label140:setHeight(20);
    obj.label140:setText("Evolução");
    obj.label140:setHorzTextAlign("center");
    obj.label140:setFontSize(11);
    obj.label140:setName("label140");

    obj.label141 = gui.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.layout111);
    obj.label141:setLeft(260);
    obj.label141:setTop(5);
    obj.label141:setWidth(50);
    obj.label141:setHeight(20);
    obj.label141:setText("Total");
    obj.label141:setHorzTextAlign("center");
    obj.label141:setName("label141");

    obj.layout112 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.layout110);
    obj.layout112:setLeft(5);
    obj.layout112:setTop(50);
    obj.layout112:setWidth(310);
    obj.layout112:setHeight(25);
    obj.layout112:setName("layout112");

    obj.label142 = gui.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.layout112);
    obj.label142:setLeft(0);
    obj.label142:setTop(0);
    obj.label142:setWidth(110);
    obj.label142:setHeight(20);
    obj.label142:setText("Poder de Fogo (PF)");
    obj.label142:setHorzTextAlign("center");
    obj.label142:setFontSize(13);
    obj.label142:setName("label142");

    obj.edit86 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.layout112);
    obj.edit86:setLeft(110);
    obj.edit86:setTop(0);
    obj.edit86:setWidth(50);
    obj.edit86:setHeight(25);
    obj.edit86:setField("atr_inicial_pf");
    obj.edit86:setType("number");
    obj.edit86:setName("edit86");

    obj.edit87 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.layout112);
    obj.edit87:setLeft(160);
    obj.edit87:setTop(0);
    obj.edit87:setWidth(50);
    obj.edit87:setHeight(25);
    obj.edit87:setField("atr_dom_pf");
    obj.edit87:setType("number");
    obj.edit87:setName("edit87");

    obj.edit88 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.layout112);
    obj.edit88:setLeft(210);
    obj.edit88:setTop(0);
    obj.edit88:setWidth(50);
    obj.edit88:setHeight(25);
    obj.edit88:setField("atr_evolucao_pf");
    obj.edit88:setType("number");
    obj.edit88:setName("edit88");

    obj.rectangle46 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout112);
    obj.rectangle46:setLeft(260);
    obj.rectangle46:setTop(0);
    obj.rectangle46:setWidth(50);
    obj.rectangle46:setHeight(25);
    obj.rectangle46:setColor("black");
    obj.rectangle46:setStrokeColor("white");
    obj.rectangle46:setStrokeSize(1);
    obj.rectangle46:setName("rectangle46");

    obj.label143 = gui.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.layout112);
    obj.label143:setLeft(260);
    obj.label143:setTop(0);
    obj.label143:setWidth(50);
    obj.label143:setHeight(25);
    obj.label143:setHorzTextAlign("center");
    obj.label143:setField("atr_total_pf");
    obj.label143:setName("label143");

    obj.dataLink16 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.layout112);
    obj.dataLink16:setFields({'atr_inicial_pf', 'atr_dom_pf', 'atr_evolucao_pf'});
    obj.dataLink16:setName("dataLink16");

    obj.layout113 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.layout110);
    obj.layout113:setLeft(5);
    obj.layout113:setTop(75);
    obj.layout113:setWidth(310);
    obj.layout113:setHeight(25);
    obj.layout113:setName("layout113");

    obj.label144 = gui.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.layout113);
    obj.label144:setLeft(0);
    obj.label144:setTop(0);
    obj.label144:setWidth(110);
    obj.label144:setHeight(20);
    obj.label144:setText("Agilidade (AGI)");
    obj.label144:setHorzTextAlign("center");
    obj.label144:setFontSize(13);
    obj.label144:setName("label144");

    obj.edit89 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.layout113);
    obj.edit89:setLeft(110);
    obj.edit89:setTop(0);
    obj.edit89:setWidth(50);
    obj.edit89:setHeight(25);
    obj.edit89:setField("atr_inicial_agi");
    obj.edit89:setType("number");
    obj.edit89:setName("edit89");

    obj.edit90 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.layout113);
    obj.edit90:setLeft(160);
    obj.edit90:setTop(0);
    obj.edit90:setWidth(50);
    obj.edit90:setHeight(25);
    obj.edit90:setField("atr_dom_agi");
    obj.edit90:setType("number");
    obj.edit90:setName("edit90");

    obj.edit91 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.layout113);
    obj.edit91:setLeft(210);
    obj.edit91:setTop(0);
    obj.edit91:setWidth(50);
    obj.edit91:setHeight(25);
    obj.edit91:setField("atr_evolucao_agi");
    obj.edit91:setType("number");
    obj.edit91:setName("edit91");

    obj.rectangle47 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.layout113);
    obj.rectangle47:setLeft(260);
    obj.rectangle47:setTop(0);
    obj.rectangle47:setWidth(50);
    obj.rectangle47:setHeight(25);
    obj.rectangle47:setColor("black");
    obj.rectangle47:setStrokeColor("white");
    obj.rectangle47:setStrokeSize(1);
    obj.rectangle47:setName("rectangle47");

    obj.label145 = gui.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.layout113);
    obj.label145:setLeft(260);
    obj.label145:setTop(0);
    obj.label145:setWidth(50);
    obj.label145:setHeight(25);
    obj.label145:setHorzTextAlign("center");
    obj.label145:setField("atr_total_agi");
    obj.label145:setName("label145");

    obj.dataLink17 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.layout113);
    obj.dataLink17:setFields({'atr_inicial_agi', 'atr_dom_agi', 'atr_evolucao_agi'});
    obj.dataLink17:setName("dataLink17");

    obj.layout114 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.layout110);
    obj.layout114:setLeft(5);
    obj.layout114:setTop(100);
    obj.layout114:setWidth(310);
    obj.layout114:setHeight(25);
    obj.layout114:setName("layout114");

    obj.label146 = gui.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.layout114);
    obj.label146:setLeft(0);
    obj.label146:setTop(0);
    obj.label146:setWidth(110);
    obj.label146:setHeight(20);
    obj.label146:setText("Resistência (RES)");
    obj.label146:setHorzTextAlign("center");
    obj.label146:setFontSize(13);
    obj.label146:setName("label146");

    obj.edit92 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.layout114);
    obj.edit92:setLeft(110);
    obj.edit92:setTop(0);
    obj.edit92:setWidth(50);
    obj.edit92:setHeight(25);
    obj.edit92:setField("atr_inicial_res");
    obj.edit92:setType("number");
    obj.edit92:setName("edit92");

    obj.edit93 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.layout114);
    obj.edit93:setLeft(160);
    obj.edit93:setTop(0);
    obj.edit93:setWidth(50);
    obj.edit93:setHeight(25);
    obj.edit93:setField("atr_dom_res");
    obj.edit93:setType("number");
    obj.edit93:setName("edit93");

    obj.edit94 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.layout114);
    obj.edit94:setLeft(210);
    obj.edit94:setTop(0);
    obj.edit94:setWidth(50);
    obj.edit94:setHeight(25);
    obj.edit94:setField("atr_evolucao_res");
    obj.edit94:setType("number");
    obj.edit94:setName("edit94");

    obj.rectangle48 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.layout114);
    obj.rectangle48:setLeft(260);
    obj.rectangle48:setTop(0);
    obj.rectangle48:setWidth(50);
    obj.rectangle48:setHeight(25);
    obj.rectangle48:setColor("black");
    obj.rectangle48:setStrokeColor("white");
    obj.rectangle48:setStrokeSize(1);
    obj.rectangle48:setName("rectangle48");

    obj.label147 = gui.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.layout114);
    obj.label147:setLeft(260);
    obj.label147:setTop(0);
    obj.label147:setWidth(50);
    obj.label147:setHeight(25);
    obj.label147:setHorzTextAlign("center");
    obj.label147:setField("atr_total_res");
    obj.label147:setName("label147");

    obj.dataLink18 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.layout114);
    obj.dataLink18:setFields({'atr_inicial_res', 'atr_dom_res', 'atr_evolucao_res'});
    obj.dataLink18:setName("dataLink18");

    obj.layout115 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.layout110);
    obj.layout115:setLeft(5);
    obj.layout115:setTop(125);
    obj.layout115:setWidth(310);
    obj.layout115:setHeight(25);
    obj.layout115:setName("layout115");

    obj.label148 = gui.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.layout115);
    obj.label148:setLeft(0);
    obj.label148:setTop(0);
    obj.label148:setWidth(110);
    obj.label148:setHeight(20);
    obj.label148:setText("Voo");
    obj.label148:setHorzTextAlign("center");
    obj.label148:setFontSize(13);
    obj.label148:setName("label148");

    obj.edit95 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.layout115);
    obj.edit95:setLeft(110);
    obj.edit95:setTop(0);
    obj.edit95:setWidth(50);
    obj.edit95:setHeight(25);
    obj.edit95:setField("atr_inicial_voo");
    obj.edit95:setType("number");
    obj.edit95:setName("edit95");

    obj.edit96 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.layout115);
    obj.edit96:setLeft(160);
    obj.edit96:setTop(0);
    obj.edit96:setWidth(50);
    obj.edit96:setHeight(25);
    obj.edit96:setField("atr_dom_voo");
    obj.edit96:setType("number");
    obj.edit96:setName("edit96");

    obj.edit97 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.layout115);
    obj.edit97:setLeft(210);
    obj.edit97:setTop(0);
    obj.edit97:setWidth(50);
    obj.edit97:setHeight(25);
    obj.edit97:setField("atr_evolucao_voo");
    obj.edit97:setType("number");
    obj.edit97:setName("edit97");

    obj.rectangle49 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.layout115);
    obj.rectangle49:setLeft(260);
    obj.rectangle49:setTop(0);
    obj.rectangle49:setWidth(50);
    obj.rectangle49:setHeight(25);
    obj.rectangle49:setColor("black");
    obj.rectangle49:setStrokeColor("white");
    obj.rectangle49:setStrokeSize(1);
    obj.rectangle49:setName("rectangle49");

    obj.label149 = gui.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.layout115);
    obj.label149:setLeft(260);
    obj.label149:setTop(0);
    obj.label149:setWidth(50);
    obj.label149:setHeight(25);
    obj.label149:setHorzTextAlign("center");
    obj.label149:setField("atr_total_voo");
    obj.label149:setName("label149");

    obj.dataLink19 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.layout115);
    obj.dataLink19:setFields({'atr_inicial_voo', 'atr_dom_voo', 'atr_evolucao_voo'});
    obj.dataLink19:setName("dataLink19");

    obj.layout116 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.scrollBox6);
    obj.layout116:setLeft(0);
    obj.layout116:setTop(235);
    obj.layout116:setWidth(270);
    obj.layout116:setHeight(255);
    obj.layout116:setName("layout116");

    obj.rectangle50 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.layout116);
    obj.rectangle50:setAlign("client");
    obj.rectangle50:setColor("black");
    obj.rectangle50:setXradius(5);
    obj.rectangle50:setYradius(5);
    obj.rectangle50:setCornerType("round");
    obj.rectangle50:setName("rectangle50");

    obj.label150 = gui.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.layout116);
    obj.label150:setLeft(0);
    obj.label150:setTop(0);
    obj.label150:setWidth(270);
    obj.label150:setHeight(20);
    obj.label150:setText("Pontos de Personagem (PPs)");
    obj.label150:setHorzTextAlign("center");
    obj.label150:setName("label150");

    obj.layout117 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.layout116);
    obj.layout117:setLeft(5);
    obj.layout117:setTop(25);
    obj.layout117:setWidth(260);
    obj.layout117:setHeight(25);
    obj.layout117:setName("layout117");

    obj.label151 = gui.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.layout117);
    obj.label151:setLeft(0);
    obj.label151:setTop(0);
    obj.label151:setWidth(110);
    obj.label151:setHeight(20);
    obj.label151:setText("Total");
    obj.label151:setHorzTextAlign("center");
    obj.label151:setName("label151");

    obj.edit98 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.layout117);
    obj.edit98:setLeft(110);
    obj.edit98:setTop(0);
    obj.edit98:setWidth(150);
    obj.edit98:setHeight(25);
    obj.edit98:setField("pps_total");
    obj.edit98:setType("number");
    obj.edit98:setName("edit98");

    obj.layout118 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.layout116);
    obj.layout118:setLeft(5);
    obj.layout118:setTop(50);
    obj.layout118:setWidth(260);
    obj.layout118:setHeight(25);
    obj.layout118:setName("layout118");

    obj.label152 = gui.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.layout118);
    obj.label152:setLeft(0);
    obj.label152:setTop(0);
    obj.label152:setWidth(110);
    obj.label152:setHeight(20);
    obj.label152:setText("Gastos - Allei");
    obj.label152:setHorzTextAlign("center");
    obj.label152:setName("label152");

    obj.edit99 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.layout118);
    obj.edit99:setLeft(110);
    obj.edit99:setTop(0);
    obj.edit99:setWidth(150);
    obj.edit99:setHeight(25);
    obj.edit99:setField("pps_gastos_zhul");
    obj.edit99:setType("number");
    obj.edit99:setName("edit99");

    obj.layout119 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.layout116);
    obj.layout119:setLeft(5);
    obj.layout119:setTop(75);
    obj.layout119:setWidth(260);
    obj.layout119:setHeight(25);
    obj.layout119:setName("layout119");

    obj.label153 = gui.fromHandle(_obj_newObject("label"));
    obj.label153:setParent(obj.layout119);
    obj.label153:setLeft(0);
    obj.label153:setTop(0);
    obj.label153:setWidth(110);
    obj.label153:setHeight(20);
    obj.label153:setText("Saldo Total");
    obj.label153:setHorzTextAlign("center");
    obj.label153:setName("label153");

    obj.rectangle51 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.layout119);
    obj.rectangle51:setLeft(110);
    obj.rectangle51:setTop(0);
    obj.rectangle51:setWidth(150);
    obj.rectangle51:setHeight(25);
    obj.rectangle51:setColor("black");
    obj.rectangle51:setStrokeColor("white");
    obj.rectangle51:setStrokeSize(1);
    obj.rectangle51:setName("rectangle51");

    obj.label154 = gui.fromHandle(_obj_newObject("label"));
    obj.label154:setParent(obj.layout119);
    obj.label154:setLeft(110);
    obj.label154:setTop(0);
    obj.label154:setWidth(150);
    obj.label154:setHeight(25);
    obj.label154:setHorzTextAlign("center");
    obj.label154:setField("pps_saldo");
    obj.label154:setName("label154");

    obj.layout120 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.layout116);
    obj.layout120:setLeft(5);
    obj.layout120:setTop(100);
    obj.layout120:setWidth(260);
    obj.layout120:setHeight(150);
    obj.layout120:setName("layout120");

    obj.label155 = gui.fromHandle(_obj_newObject("label"));
    obj.label155:setParent(obj.layout120);
    obj.label155:setLeft(0);
    obj.label155:setTop(0);
    obj.label155:setWidth(260);
    obj.label155:setHeight(20);
    obj.label155:setText("Balanço de PPs");
    obj.label155:setHorzTextAlign("center");
    obj.label155:setName("label155");

    obj.textEditor12 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout120);
    obj.textEditor12:setLeft(0);
    obj.textEditor12:setTop(25);
    obj.textEditor12:setWidth(260);
    obj.textEditor12:setHeight(125);
    obj.textEditor12:setField("pps_dist_zhul");
    obj.textEditor12:setName("textEditor12");

    obj.tab9 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab9:setParent(obj.tabControl3);
    obj.tab9:setTitle("Habilidades");
    obj.tab9:setName("tab9");

    obj.frmAMZ2_3 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ2_3:setParent(obj.tab9);
    obj.frmAMZ2_3:setName("frmAMZ2_3");
    obj.frmAMZ2_3:setAlign("client");
    obj.frmAMZ2_3:setTheme("dark");

    obj.scrollBox7 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.frmAMZ2_3);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.layout121 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.scrollBox7);
    obj.layout121:setLeft(0);
    obj.layout121:setTop(0);
    obj.layout121:setWidth(400);
    obj.layout121:setHeight(625);
    obj.layout121:setName("layout121");

    obj.rectangle52 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.layout121);
    obj.rectangle52:setAlign("client");
    obj.rectangle52:setColor("black");
    obj.rectangle52:setXradius(5);
    obj.rectangle52:setYradius(5);
    obj.rectangle52:setCornerType("round");
    obj.rectangle52:setName("rectangle52");

    obj.label156 = gui.fromHandle(_obj_newObject("label"));
    obj.label156:setParent(obj.layout121);
    obj.label156:setLeft(0);
    obj.label156:setTop(0);
    obj.label156:setWidth(400);
    obj.label156:setHeight(20);
    obj.label156:setText("Habilidades Únicas");
    obj.label156:setHorzTextAlign("center");
    obj.label156:setName("label156");

    obj.rclHabilidadesUnicas = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclHabilidadesUnicas:setParent(obj.layout121);
    obj.rclHabilidadesUnicas:setName("rclHabilidadesUnicas");
    obj.rclHabilidadesUnicas:setField("campoDasHabilidadesUnicas");
    obj.rclHabilidadesUnicas:setTemplateForm("frmAMZ2_3_1");
    obj.rclHabilidadesUnicas:setLeft(5);
    obj.rclHabilidadesUnicas:setTop(25);
    obj.rclHabilidadesUnicas:setWidth(390);
    obj.rclHabilidadesUnicas:setHeight(595);
    obj.rclHabilidadesUnicas:setLayout("vertical");
    obj.rclHabilidadesUnicas:setMinQt(3);

    obj.layout122 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.scrollBox7);
    obj.layout122:setLeft(410);
    obj.layout122:setTop(0);
    obj.layout122:setWidth(400);
    obj.layout122:setHeight(625);
    obj.layout122:setName("layout122");

    obj.rectangle53 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.layout122);
    obj.rectangle53:setAlign("client");
    obj.rectangle53:setColor("black");
    obj.rectangle53:setXradius(5);
    obj.rectangle53:setYradius(5);
    obj.rectangle53:setCornerType("round");
    obj.rectangle53:setName("rectangle53");

    obj.label157 = gui.fromHandle(_obj_newObject("label"));
    obj.label157:setParent(obj.layout122);
    obj.label157:setLeft(0);
    obj.label157:setTop(0);
    obj.label157:setWidth(400);
    obj.label157:setHeight(20);
    obj.label157:setText("Estilo de Luta");
    obj.label157:setHorzTextAlign("center");
    obj.label157:setName("label157");

    obj.rclEstilosDeLuta = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclEstilosDeLuta:setParent(obj.layout122);
    obj.rclEstilosDeLuta:setName("rclEstilosDeLuta");
    obj.rclEstilosDeLuta:setField("campoDosEstilosDeLuta");
    obj.rclEstilosDeLuta:setTemplateForm("frmAMZ2_3_1");
    obj.rclEstilosDeLuta:setLeft(5);
    obj.rclEstilosDeLuta:setTop(25);
    obj.rclEstilosDeLuta:setWidth(390);
    obj.rclEstilosDeLuta:setHeight(595);
    obj.rclEstilosDeLuta:setLayout("vertical");
    obj.rclEstilosDeLuta:setMinQt(3);

    obj.layout123 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.scrollBox7);
    obj.layout123:setLeft(820);
    obj.layout123:setTop(0);
    obj.layout123:setWidth(400);
    obj.layout123:setHeight(625);
    obj.layout123:setName("layout123");

    obj.rectangle54 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.layout123);
    obj.rectangle54:setAlign("client");
    obj.rectangle54:setColor("black");
    obj.rectangle54:setXradius(5);
    obj.rectangle54:setYradius(5);
    obj.rectangle54:setCornerType("round");
    obj.rectangle54:setName("rectangle54");

    obj.label158 = gui.fromHandle(_obj_newObject("label"));
    obj.label158:setParent(obj.layout123);
    obj.label158:setLeft(0);
    obj.label158:setTop(0);
    obj.label158:setWidth(400);
    obj.label158:setHeight(20);
    obj.label158:setText("Habilidades Iniciais");
    obj.label158:setHorzTextAlign("center");
    obj.label158:setName("label158");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout123);
    obj.button2:setLeft(375);
    obj.button2:setTop(1);
    obj.button2:setWidth(23);
    obj.button2:setHeight(23);
    obj.button2:setText("+");
    obj.button2:setName("button2");

    obj.rclHabilidadesIniciais = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclHabilidadesIniciais:setParent(obj.layout123);
    obj.rclHabilidadesIniciais:setName("rclHabilidadesIniciais");
    obj.rclHabilidadesIniciais:setField("campoDosHabilidadesIniciais");
    obj.rclHabilidadesIniciais:setTemplateForm("frmAMZ2_3_1");
    obj.rclHabilidadesIniciais:setLeft(5);
    obj.rclHabilidadesIniciais:setTop(25);
    obj.rclHabilidadesIniciais:setWidth(390);
    obj.rclHabilidadesIniciais:setHeight(595);
    obj.rclHabilidadesIniciais:setLayout("vertical");
    obj.rclHabilidadesIniciais:setMinQt(1);

    obj.tab10 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab10:setParent(obj.tabControl3);
    obj.tab10:setTitle("Equipamentos");
    obj.tab10:setName("tab10");

    obj.frmAMZ2_4 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ2_4:setParent(obj.tab10);
    obj.frmAMZ2_4:setName("frmAMZ2_4");
    obj.frmAMZ2_4:setAlign("client");
    obj.frmAMZ2_4:setTheme("dark");

    obj.scrollBox8 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.frmAMZ2_4);
    obj.scrollBox8:setAlign("client");
    obj.scrollBox8:setName("scrollBox8");

    obj.layout124 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.scrollBox8);
    obj.layout124:setLeft(0);
    obj.layout124:setTop(0);
    obj.layout124:setWidth(310);
    obj.layout124:setHeight(175);
    obj.layout124:setName("layout124");

    obj.rectangle55 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.layout124);
    obj.rectangle55:setAlign("client");
    obj.rectangle55:setColor("black");
    obj.rectangle55:setXradius(5);
    obj.rectangle55:setYradius(5);
    obj.rectangle55:setCornerType("round");
    obj.rectangle55:setName("rectangle55");

    obj.layout125 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.layout124);
    obj.layout125:setLeft(5);
    obj.layout125:setTop(25);
    obj.layout125:setWidth(300);
    obj.layout125:setHeight(25);
    obj.layout125:setName("layout125");

    obj.label159 = gui.fromHandle(_obj_newObject("label"));
    obj.label159:setParent(obj.layout125);
    obj.label159:setLeft(0);
    obj.label159:setTop(0);
    obj.label159:setWidth(100);
    obj.label159:setHeight(20);
    obj.label159:setText("Arma Primaria");
    obj.label159:setHorzTextAlign("center");
    obj.label159:setName("label159");

    obj.edit100 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.layout125);
    obj.edit100:setLeft(100);
    obj.edit100:setTop(0);
    obj.edit100:setWidth(200);
    obj.edit100:setHeight(25);
    obj.edit100:setField("zhul_arma1");
    obj.edit100:setName("edit100");

    obj.layout126 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.layout124);
    obj.layout126:setLeft(5);
    obj.layout126:setTop(75);
    obj.layout126:setWidth(300);
    obj.layout126:setHeight(25);
    obj.layout126:setName("layout126");

    obj.label160 = gui.fromHandle(_obj_newObject("label"));
    obj.label160:setParent(obj.layout126);
    obj.label160:setLeft(0);
    obj.label160:setTop(0);
    obj.label160:setWidth(100);
    obj.label160:setHeight(20);
    obj.label160:setText("Arma Secundaria");
    obj.label160:setHorzTextAlign("center");
    obj.label160:setName("label160");

    obj.edit101 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.layout126);
    obj.edit101:setLeft(100);
    obj.edit101:setTop(0);
    obj.edit101:setWidth(200);
    obj.edit101:setHeight(25);
    obj.edit101:setField("zhul_arma2");
    obj.edit101:setName("edit101");

    obj.layout127 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.layout124);
    obj.layout127:setLeft(5);
    obj.layout127:setTop(125);
    obj.layout127:setWidth(300);
    obj.layout127:setHeight(25);
    obj.layout127:setName("layout127");

    obj.label161 = gui.fromHandle(_obj_newObject("label"));
    obj.label161:setParent(obj.layout127);
    obj.label161:setLeft(0);
    obj.label161:setTop(0);
    obj.label161:setWidth(100);
    obj.label161:setHeight(20);
    obj.label161:setText("Arma Reserva");
    obj.label161:setHorzTextAlign("center");
    obj.label161:setName("label161");

    obj.edit102 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.layout127);
    obj.edit102:setLeft(100);
    obj.edit102:setTop(0);
    obj.edit102:setWidth(200);
    obj.edit102:setHeight(25);
    obj.edit102:setField("zhul_arma3");
    obj.edit102:setName("edit102");

    obj.layout128 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.scrollBox8);
    obj.layout128:setLeft(315);
    obj.layout128:setTop(0);
    obj.layout128:setWidth(310);
    obj.layout128:setHeight(175);
    obj.layout128:setName("layout128");

    obj.rectangle56 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.layout128);
    obj.rectangle56:setAlign("client");
    obj.rectangle56:setColor("black");
    obj.rectangle56:setXradius(5);
    obj.rectangle56:setYradius(5);
    obj.rectangle56:setCornerType("round");
    obj.rectangle56:setName("rectangle56");

    obj.layout129 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.layout128);
    obj.layout129:setLeft(5);
    obj.layout129:setTop(25);
    obj.layout129:setWidth(300);
    obj.layout129:setHeight(25);
    obj.layout129:setName("layout129");

    obj.label162 = gui.fromHandle(_obj_newObject("label"));
    obj.label162:setParent(obj.layout129);
    obj.label162:setLeft(0);
    obj.label162:setTop(0);
    obj.label162:setWidth(100);
    obj.label162:setHeight(20);
    obj.label162:setText("Equipamento 1");
    obj.label162:setHorzTextAlign("center");
    obj.label162:setName("label162");

    obj.edit103 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.layout129);
    obj.edit103:setLeft(100);
    obj.edit103:setTop(0);
    obj.edit103:setWidth(200);
    obj.edit103:setHeight(25);
    obj.edit103:setField("zhul_equip1");
    obj.edit103:setName("edit103");

    obj.layout130 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.layout128);
    obj.layout130:setLeft(5);
    obj.layout130:setTop(75);
    obj.layout130:setWidth(300);
    obj.layout130:setHeight(25);
    obj.layout130:setName("layout130");

    obj.label163 = gui.fromHandle(_obj_newObject("label"));
    obj.label163:setParent(obj.layout130);
    obj.label163:setLeft(0);
    obj.label163:setTop(0);
    obj.label163:setWidth(100);
    obj.label163:setHeight(20);
    obj.label163:setText("Equipamento 2");
    obj.label163:setHorzTextAlign("center");
    obj.label163:setName("label163");

    obj.edit104 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.layout130);
    obj.edit104:setLeft(100);
    obj.edit104:setTop(0);
    obj.edit104:setWidth(200);
    obj.edit104:setHeight(25);
    obj.edit104:setField("zhul_equip2");
    obj.edit104:setName("edit104");

    obj.layout131 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.layout128);
    obj.layout131:setLeft(5);
    obj.layout131:setTop(125);
    obj.layout131:setWidth(300);
    obj.layout131:setHeight(25);
    obj.layout131:setName("layout131");

    obj.label164 = gui.fromHandle(_obj_newObject("label"));
    obj.label164:setParent(obj.layout131);
    obj.label164:setLeft(0);
    obj.label164:setTop(0);
    obj.label164:setWidth(100);
    obj.label164:setHeight(20);
    obj.label164:setText("Equipamento 3");
    obj.label164:setHorzTextAlign("center");
    obj.label164:setName("label164");

    obj.edit105 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.layout131);
    obj.edit105:setLeft(100);
    obj.edit105:setTop(0);
    obj.edit105:setWidth(200);
    obj.edit105:setHeight(25);
    obj.edit105:setField("zhul_equip3");
    obj.edit105:setName("edit105");

    obj.layout132 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.scrollBox8);
    obj.layout132:setLeft(630);
    obj.layout132:setTop(0);
    obj.layout132:setWidth(310);
    obj.layout132:setHeight(175);
    obj.layout132:setName("layout132");

    obj.rectangle57 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.layout132);
    obj.rectangle57:setAlign("client");
    obj.rectangle57:setColor("black");
    obj.rectangle57:setXradius(5);
    obj.rectangle57:setYradius(5);
    obj.rectangle57:setCornerType("round");
    obj.rectangle57:setName("rectangle57");

    obj.layout133 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.layout132);
    obj.layout133:setLeft(5);
    obj.layout133:setTop(25);
    obj.layout133:setWidth(300);
    obj.layout133:setHeight(25);
    obj.layout133:setName("layout133");

    obj.label165 = gui.fromHandle(_obj_newObject("label"));
    obj.label165:setParent(obj.layout133);
    obj.label165:setLeft(0);
    obj.label165:setTop(0);
    obj.label165:setWidth(100);
    obj.label165:setHeight(20);
    obj.label165:setText("E.E. 1");
    obj.label165:setHorzTextAlign("center");
    obj.label165:setName("label165");

    obj.edit106 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.layout133);
    obj.edit106:setLeft(100);
    obj.edit106:setTop(0);
    obj.edit106:setWidth(200);
    obj.edit106:setHeight(25);
    obj.edit106:setField("zhul_ee1");
    obj.edit106:setName("edit106");

    obj.layout134 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.layout132);
    obj.layout134:setLeft(5);
    obj.layout134:setTop(75);
    obj.layout134:setWidth(300);
    obj.layout134:setHeight(25);
    obj.layout134:setName("layout134");

    obj.label166 = gui.fromHandle(_obj_newObject("label"));
    obj.label166:setParent(obj.layout134);
    obj.label166:setLeft(0);
    obj.label166:setTop(0);
    obj.label166:setWidth(100);
    obj.label166:setHeight(20);
    obj.label166:setText("E.E. 2");
    obj.label166:setHorzTextAlign("center");
    obj.label166:setName("label166");

    obj.edit107 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.layout134);
    obj.edit107:setLeft(100);
    obj.edit107:setTop(0);
    obj.edit107:setWidth(200);
    obj.edit107:setHeight(25);
    obj.edit107:setField("zhul_ee2");
    obj.edit107:setName("edit107");

    obj.layout135 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.layout132);
    obj.layout135:setLeft(5);
    obj.layout135:setTop(125);
    obj.layout135:setWidth(300);
    obj.layout135:setHeight(25);
    obj.layout135:setName("layout135");

    obj.label167 = gui.fromHandle(_obj_newObject("label"));
    obj.label167:setParent(obj.layout135);
    obj.label167:setLeft(0);
    obj.label167:setTop(0);
    obj.label167:setWidth(100);
    obj.label167:setHeight(20);
    obj.label167:setText("E.E. 3");
    obj.label167:setHorzTextAlign("center");
    obj.label167:setName("label167");

    obj.edit108 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.layout135);
    obj.edit108:setLeft(100);
    obj.edit108:setTop(0);
    obj.edit108:setWidth(200);
    obj.edit108:setHeight(25);
    obj.edit108:setField("zhul_ee3");
    obj.edit108:setName("edit108");

    obj.tab11 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab11:setParent(obj.tabControl1);
    obj.tab11:setTitle("Rolagens");
    obj.tab11:setName("tab11");

    obj.tab12 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab12:setParent(obj.tabControl1);
    obj.tab12:setTitle("Historia");
    obj.tab12:setName("tab12");

    obj.frmAMZ4 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ4:setParent(obj.tab12);
    obj.frmAMZ4:setName("frmAMZ4");
    obj.frmAMZ4:setAlign("client");
    obj.frmAMZ4:setTheme("dark");

    obj.scrollBox9 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.frmAMZ4);
    obj.scrollBox9:setAlign("client");
    obj.scrollBox9:setName("scrollBox9");

    obj.layout136 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.scrollBox9);
    obj.layout136:setLeft(0);
    obj.layout136:setTop(0);
    obj.layout136:setWidth(650);
    obj.layout136:setHeight(635);
    obj.layout136:setName("layout136");

    obj.rectangle58 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.layout136);
    obj.rectangle58:setAlign("client");
    obj.rectangle58:setColor("black");
    obj.rectangle58:setXradius(5);
    obj.rectangle58:setYradius(5);
    obj.rectangle58:setCornerType("round");
    obj.rectangle58:setName("rectangle58");

    obj.label168 = gui.fromHandle(_obj_newObject("label"));
    obj.label168:setParent(obj.layout136);
    obj.label168:setLeft(0);
    obj.label168:setTop(0);
    obj.label168:setWidth(650);
    obj.label168:setHeight(20);
    obj.label168:setText("Historia");
    obj.label168:setHorzTextAlign("center");
    obj.label168:setName("label168");

    obj.richEdit1 = gui.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout136);
    obj.richEdit1:setLeft(10);
    obj.richEdit1:setTop(25);
    obj.richEdit1:setWidth(630);
    obj.richEdit1:setHeight(595);
    obj.richEdit1:setField("historia");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    lfm_setPropAsString(obj.richEdit1, "defaultFontSize",  "12");
    obj.richEdit1:setName("richEdit1");

    obj.layout137 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.scrollBox9);
    obj.layout137:setLeft(660);
    obj.layout137:setTop(0);
    obj.layout137:setWidth(400);
    obj.layout137:setHeight(635);
    obj.layout137:setName("layout137");

    obj.rectangle59 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.layout137);
    obj.rectangle59:setAlign("client");
    obj.rectangle59:setColor("black");
    obj.rectangle59:setXradius(5);
    obj.rectangle59:setYradius(5);
    obj.rectangle59:setCornerType("round");
    obj.rectangle59:setName("rectangle59");

    obj.label169 = gui.fromHandle(_obj_newObject("label"));
    obj.label169:setParent(obj.layout137);
    obj.label169:setLeft(0);
    obj.label169:setTop(0);
    obj.label169:setWidth(400);
    obj.label169:setHeight(20);
    obj.label169:setText("Caracteristica Zhuls");
    obj.label169:setHorzTextAlign("center");
    obj.label169:setName("label169");

    obj.richEdit2 = gui.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.layout137);
    obj.richEdit2:setLeft(10);
    obj.richEdit2:setTop(25);
    obj.richEdit2:setWidth(380);
    obj.richEdit2:setHeight(595);
    obj.richEdit2:setField("carac_zhuls");
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    lfm_setPropAsString(obj.richEdit2, "defaultFontSize",  "12");
    obj.richEdit2:setName("richEdit2");

    obj.tab13 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab13:setParent(obj.tabControl1);
    obj.tab13:setTitle("Anotações");
    obj.tab13:setName("tab13");

    obj.frmAMZ5 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ5:setParent(obj.tab13);
    obj.frmAMZ5:setName("frmAMZ5");
    obj.frmAMZ5:setAlign("client");
    obj.frmAMZ5:setTheme("dark");

    obj.scrollBox10 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.frmAMZ5);
    obj.scrollBox10:setAlign("client");
    obj.scrollBox10:setName("scrollBox10");

    obj.layout138 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.scrollBox10);
    obj.layout138:setLeft(0);
    obj.layout138:setTop(0);
    obj.layout138:setWidth(400);
    obj.layout138:setHeight(580);
    obj.layout138:setName("layout138");

    obj.rectangle60 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.layout138);
    obj.rectangle60:setLeft(0);
    obj.rectangle60:setTop(0);
    obj.rectangle60:setWidth(400);
    obj.rectangle60:setHeight(580);
    obj.rectangle60:setColor("black");
    obj.rectangle60:setXradius(5);
    obj.rectangle60:setYradius(15);
    obj.rectangle60:setCornerType("round");
    obj.rectangle60:setName("rectangle60");

    obj.label170 = gui.fromHandle(_obj_newObject("label"));
    obj.label170:setParent(obj.layout138);
    obj.label170:setLeft(0);
    obj.label170:setTop(0);
    obj.label170:setWidth(400);
    obj.label170:setHeight(20);
    obj.label170:setText("Anotações");
    obj.label170:setHorzTextAlign("center");
    obj.label170:setName("label170");

    obj.textEditor13 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.layout138);
    obj.textEditor13:setLeft(10);
    obj.textEditor13:setTop(25);
    obj.textEditor13:setWidth(380);
    obj.textEditor13:setHeight(540);
    obj.textEditor13:setField("anotacoes1");
    obj.textEditor13:setName("textEditor13");

    obj.layout139 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.scrollBox10);
    obj.layout139:setLeft(410);
    obj.layout139:setTop(0);
    obj.layout139:setWidth(400);
    obj.layout139:setHeight(580);
    obj.layout139:setName("layout139");

    obj.rectangle61 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.layout139);
    obj.rectangle61:setLeft(0);
    obj.rectangle61:setTop(0);
    obj.rectangle61:setWidth(400);
    obj.rectangle61:setHeight(580);
    obj.rectangle61:setColor("black");
    obj.rectangle61:setXradius(5);
    obj.rectangle61:setYradius(15);
    obj.rectangle61:setCornerType("round");
    obj.rectangle61:setName("rectangle61");

    obj.label171 = gui.fromHandle(_obj_newObject("label"));
    obj.label171:setParent(obj.layout139);
    obj.label171:setLeft(0);
    obj.label171:setTop(0);
    obj.label171:setWidth(400);
    obj.label171:setHeight(20);
    obj.label171:setText("Anotações");
    obj.label171:setHorzTextAlign("center");
    obj.label171:setName("label171");

    obj.textEditor14 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.layout139);
    obj.textEditor14:setLeft(10);
    obj.textEditor14:setTop(25);
    obj.textEditor14:setWidth(380);
    obj.textEditor14:setHeight(540);
    obj.textEditor14:setField("anotacoes2");
    obj.textEditor14:setName("textEditor14");

    obj.layout140 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.scrollBox10);
    obj.layout140:setLeft(820);
    obj.layout140:setTop(0);
    obj.layout140:setWidth(400);
    obj.layout140:setHeight(580);
    obj.layout140:setName("layout140");

    obj.rectangle62 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.layout140);
    obj.rectangle62:setLeft(0);
    obj.rectangle62:setTop(0);
    obj.rectangle62:setWidth(400);
    obj.rectangle62:setHeight(580);
    obj.rectangle62:setColor("black");
    obj.rectangle62:setXradius(5);
    obj.rectangle62:setYradius(15);
    obj.rectangle62:setCornerType("round");
    obj.rectangle62:setName("rectangle62");

    obj.label172 = gui.fromHandle(_obj_newObject("label"));
    obj.label172:setParent(obj.layout140);
    obj.label172:setLeft(0);
    obj.label172:setTop(0);
    obj.label172:setWidth(400);
    obj.label172:setHeight(20);
    obj.label172:setText("Anotações");
    obj.label172:setHorzTextAlign("center");
    obj.label172:setName("label172");

    obj.textEditor15 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.layout140);
    obj.textEditor15:setLeft(10);
    obj.textEditor15:setTop(25);
    obj.textEditor15:setWidth(380);
    obj.textEditor15:setHeight(540);
    obj.textEditor15:setField("anotacoes3");
    obj.textEditor15:setName("textEditor15");

    obj.tab14 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab14:setParent(obj.tabControl1);
    obj.tab14:setTitle("Creditos");
    obj.tab14:setName("tab14");

    obj.frmAMZ6 = gui.fromHandle(_obj_newObject("form"));
    obj.frmAMZ6:setParent(obj.tab14);
    obj.frmAMZ6:setName("frmAMZ6");
    obj.frmAMZ6:setAlign("client");
    obj.frmAMZ6:setTheme("dark");

    obj.scrollBox11 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.frmAMZ6);
    obj.scrollBox11:setAlign("client");
    obj.scrollBox11:setName("scrollBox11");

    obj.image4 = gui.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.scrollBox11);
    obj.image4:setLeft(0);
    obj.image4:setTop(0);
    obj.image4:setWidth(500);
    obj.image4:setHeight(500);
    obj.image4:setStyle("autoFit");
    obj.image4:setSRC("/Ficha Arc Metal Zhuls/images/arc.jpg");
    obj.image4:setName("image4");

    obj.image5 = gui.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.scrollBox11);
    obj.image5:setLeft(550);
    obj.image5:setTop(0);
    obj.image5:setWidth(250);
    obj.image5:setHeight(250);
    obj.image5:setStyle("autoFit");
    obj.image5:setSRC("/Ficha Arc Metal Zhuls/images/RPGmeister.jpg");
    obj.image5:setName("image5");

    obj.layout141 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.scrollBox11);
    obj.layout141:setLeft(850);
    obj.layout141:setTop(0);
    obj.layout141:setWidth(200);
    obj.layout141:setHeight(160);
    obj.layout141:setName("layout141");

    obj.rectangle63 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.layout141);
    obj.rectangle63:setAlign("client");
    obj.rectangle63:setColor("black");
    obj.rectangle63:setXradius(5);
    obj.rectangle63:setYradius(15);
    obj.rectangle63:setCornerType("round");
    obj.rectangle63:setName("rectangle63");

    obj.label173 = gui.fromHandle(_obj_newObject("label"));
    obj.label173:setParent(obj.layout141);
    obj.label173:setLeft(0);
    obj.label173:setTop(10);
    obj.label173:setWidth(200);
    obj.label173:setHeight(20);
    obj.label173:setText("Programador: Vinny (Ambesek)");
    obj.label173:setHorzTextAlign("center");
    obj.label173:setName("label173");

    obj.label174 = gui.fromHandle(_obj_newObject("label"));
    obj.label174:setParent(obj.layout141);
    obj.label174:setLeft(0);
    obj.label174:setTop(35);
    obj.label174:setWidth(200);
    obj.label174:setHeight(20);
    obj.label174:setText("Arte: Nefer (Nefertyne)");
    obj.label174:setHorzTextAlign("center");
    obj.label174:setName("label174");

    obj.label175 = gui.fromHandle(_obj_newObject("label"));
    obj.label175:setParent(obj.layout141);
    obj.label175:setLeft(0);
    obj.label175:setTop(60);
    obj.label175:setWidth(200);
    obj.label175:setHeight(20);
    obj.label175:setText("Consultor: Hugo Melo (BlackOne71)");
    obj.label175:setHorzTextAlign("center");
    obj.label175:setFontSize(11);
    obj.label175:setName("label175");

    obj.label176 = gui.fromHandle(_obj_newObject("label"));
    obj.label176:setParent(obj.layout141);
    obj.label176:setLeft(0);
    obj.label176:setTop(85);
    obj.label176:setWidth(200);
    obj.label176:setHeight(20);
    obj.label176:setText("Ficha feita para a mesa: ");
    obj.label176:setHorzTextAlign("center");
    obj.label176:setName("label176");

    obj.label177 = gui.fromHandle(_obj_newObject("label"));
    obj.label177:setParent(obj.layout141);
    obj.label177:setLeft(0);
    obj.label177:setTop(110);
    obj.label177:setWidth(200);
    obj.label177:setHeight(20);
    obj.label177:setText("Arc Metal Zhuls");
    obj.label177:setHorzTextAlign("center");
    obj.label177:setName("label177");

    obj.label178 = gui.fromHandle(_obj_newObject("label"));
    obj.label178:setParent(obj.layout141);
    obj.label178:setLeft(0);
    obj.label178:setTop(135);
    obj.label178:setWidth(200);
    obj.label178:setHeight(20);
    obj.label178:setText("Sistema: Arc Metal Zhuls");
    obj.label178:setHorzTextAlign("center");
    obj.label178:setName("label178");

    obj.label179 = gui.fromHandle(_obj_newObject("label"));
    obj.label179:setParent(obj.scrollBox11);
    obj.label179:setLeft(555);
    obj.label179:setTop(300);
    obj.label179:setWidth(100);
    obj.label179:setHeight(20);
    obj.label179:setText("Versão Atual: ");
    obj.label179:setHorzTextAlign("center");
    obj.label179:setName("label179");

    obj.image6 = gui.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.scrollBox11);
    obj.image6:setLeft(667);
    obj.image6:setTop(300);
    obj.image6:setWidth(100);
    obj.image6:setHeight(20);
    obj.image6:setStyle("autoFit");
    obj.image6:setSRC("http://www.cin.ufpe.br/~jvdl/Plugins/Ficha%20Arc%20Metal%20Zhuls/release.png");
    obj.image6:setName("image6");

    obj.label180 = gui.fromHandle(_obj_newObject("label"));
    obj.label180:setParent(obj.scrollBox11);
    obj.label180:setLeft(555);
    obj.label180:setTop(325);
    obj.label180:setWidth(100);
    obj.label180:setHeight(20);
    obj.label180:setText("Ultima Versão: ");
    obj.label180:setHorzTextAlign("center");
    obj.label180:setName("label180");

    obj.image7 = gui.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.scrollBox11);
    obj.image7:setLeft(667);
    obj.image7:setTop(325);
    obj.image7:setWidth(100);
    obj.image7:setHeight(20);
    obj.image7:setStyle("autoFit");
    obj.image7:setSRC("http://www.cin.ufpe.br/~jvdl/Plugins/Version/versao01.png");
    obj.image7:setName("image7");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox11);
    obj.button3:setLeft(555);
    obj.button3:setTop(350);
    obj.button3:setWidth(100);
    obj.button3:setText("Change Log");
    obj.button3:setName("button3");

    obj.button4 = gui.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.scrollBox11);
    obj.button4:setLeft(667);
    obj.button4:setTop(350);
    obj.button4:setWidth(100);
    obj.button4:setText("Atualizar");
    obj.button4:setName("button4");

    obj.label181 = gui.fromHandle(_obj_newObject("label"));
    obj.label181:setParent(obj.scrollBox11);
    obj.label181:setLeft(555);
    obj.label181:setTop(400);
    obj.label181:setWidth(200);
    obj.label181:setHeight(20);
    obj.label181:setText("Conheça as Mesas:");
    obj.label181:setName("label181");

    obj.button5 = gui.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.scrollBox11);
    obj.button5:setLeft(555);
    obj.button5:setTop(425);
    obj.button5:setWidth(100);
    obj.button5:setText("RPGmeister");
    obj.button5:setName("button5");

    obj.button6 = gui.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.scrollBox11);
    obj.button6:setLeft(667);
    obj.button6:setTop(425);
    obj.button6:setWidth(125);
    obj.button6:setText("Arc Metals Zhuls");
    obj.button6:setName("button6");

    obj._e_event0 = obj.image1:addEventListener("onStartDrag",
        function (self, drag, x, y)
            drag:addData("imageURL", sheet.avatar);
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_des) or 0) +
            									(tonumber(sheet.atr_dom_des) or 0) +
            									(tonumber(sheet.atr_evolucao_des) or 0);
            					sheet.atr_total_des = total;
            				end;
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_per) or 0) +
            									(tonumber(sheet.atr_dom_per) or 0) +
            									(tonumber(sheet.atr_evolucao_per) or 0);
            					sheet.atr_total_per = total;
            				end;
        end, obj);

    obj._e_event3 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_int) or 0) +
            									(tonumber(sheet.atr_dom_int) or 0) +
            									(tonumber(sheet.atr_evolucao_int) or 0);
            					sheet.atr_total_int = total;
            				end;
        end, obj);

    obj._e_event4 = obj.dataLink4:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_con) or 0) +
            									(tonumber(sheet.atr_dom_con) or 0) +
            									(tonumber(sheet.atr_evolucao_con) or 0);
            					sheet.atr_total_con = total;
            				end;
        end, obj);

    obj._e_event5 = obj.dataLink5:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_fv) or 0) +
            									(tonumber(sheet.atr_dom_fv) or 0) +
            									(tonumber(sheet.atr_evolucao_fv) or 0);
            					sheet.atr_total_fv = total;
            				end;
        end, obj);

    obj._e_event6 = obj.dataLink6:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_mir) or 0) +
            									(tonumber(sheet.atr_dom_mir) or 0) +
            									(tonumber(sheet.atr_evolucao_mir) or 0);
            					sheet.atr_total_mir = total;
            				end;
        end, obj);

    obj._e_event7 = obj.dataLink7:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_rac) or 0) +
            									(tonumber(sheet.atr_dom_rac) or 0) +
            									(tonumber(sheet.atr_evolucao_rac) or 0);
            					sheet.atr_total_rac = total;
            				end;
        end, obj);

    obj._e_event8 = obj.dataLink8:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_ref) or 0) +
            									(tonumber(sheet.atr_dom_ref) or 0) +
            									(tonumber(sheet.atr_evolucao_ref) or 0);
            					sheet.atr_total_ref = total;
            				end;
        end, obj);

    obj._e_event9 = obj.dataLink9:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_hab) or 0) +
            									(tonumber(sheet.atr_dom_hab) or 0) +
            									(tonumber(sheet.atr_evolucao_hab) or 0);
            					sheet.atr_total_hab = total;
            				end;
        end, obj);

    obj._e_event10 = obj.dataLink10:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            						local total = 	(tonumber(sheet.pps_total) or 0) -
            										(tonumber(sheet.pps_gastos_allei) or 0) -
            										(tonumber(sheet.pps_gastos_zhul) or 0);
            						sheet.pps_saldo = total;
            					end;
        end, obj);

    obj._e_event11 = obj.button1:addEventListener("onClick",
        function (self)
            if sheet~=nil then
            								local node = self.rclListaDasMissoes:append();
            								local nodes = ndb.getChildNodes(sheet.campoDasMissoes);  
            								node.num = #nodes;
            							end;
        end, obj);

    obj._e_event12 = obj.image2:addEventListener("onStartDrag",
        function (self, drag, x, y)
            drag:addData("imageURL", sheet.peculiaridade_image);
        end, obj);

    obj._e_event13 = obj.dataLink11:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            							if sheet.inventario_9 == "Estojo" then
            								self.inventario_11.visible = true;
            								self.inventario_12.visible = true;
            								self.inventario_13.visible = false;
            								self.inventario_14.visible = false;
            								self.inventario_15.visible = false;
            								self.inventario_16.visible = false;
            								self.inventario_17.visible = false;
            								self.inventario_18.visible = false;
            							elseif sheet.inventario_9 == "Mochila" then
            								self.inventario_11.visible = true;
            								self.inventario_12.visible = true;
            								self.inventario_13.visible = true;
            								self.inventario_14.visible = true;
            								self.inventario_15.visible = false;
            								self.inventario_16.visible = false;
            								self.inventario_17.visible = false;
            								self.inventario_18.visible = false;
            							elseif sheet.inventario_9 == "Bag" then
            								self.inventario_11.visible = true;
            								self.inventario_12.visible = true;
            								self.inventario_13.visible = true;
            								self.inventario_14.visible = true;
            								self.inventario_15.visible = true;
            								self.inventario_16.visible = true;
            								self.inventario_17.visible = true;
            								self.inventario_18.visible = true;
            							else
            								self.inventario_11.visible = false;
            								self.inventario_12.visible = false;
            								self.inventario_13.visible = false;
            								self.inventario_14.visible = false;
            								self.inventario_15.visible = false;
            								self.inventario_16.visible = false;
            								self.inventario_17.visible = false;
            								self.inventario_18.visible = false;
            							end
            						end;
        end, obj);

    obj._e_event14 = obj.image3:addEventListener("onStartDrag",
        function (self, drag, x, y)
            drag:addData("imageURL", sheet.avatar_zhul);
        end, obj);

    obj._e_event15 = obj.dataLink12:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_for) or 0) +
            									(tonumber(sheet.atr_dom_for) or 0) +
            									(tonumber(sheet.atr_evolucao_for) or 0);
            					sheet.atr_total_for = total;
            				end;
        end, obj);

    obj._e_event16 = obj.dataLink13:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_vel) or 0) +
            									(tonumber(sheet.atr_dom_vel) or 0) +
            									(tonumber(sheet.atr_evolucao_vel) or 0);
            					sheet.atr_total_vel = total;
            				end;
        end, obj);

    obj._e_event17 = obj.dataLink14:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_maq) or 0) +
            									(tonumber(sheet.atr_dom_maq) or 0) +
            									(tonumber(sheet.atr_evolucao_maq) or 0);
            					sheet.atr_total_maq = total;
            				end;
        end, obj);

    obj._e_event18 = obj.dataLink15:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_ce) or 0) +
            									(tonumber(sheet.atr_dom_ce) or 0) +
            									(tonumber(sheet.atr_evolucao_ce) or 0);
            					sheet.atr_total_ce = total;
            				end;
        end, obj);

    obj._e_event19 = obj.dataLink16:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_pf) or 0) +
            									(tonumber(sheet.atr_dom_pf) or 0) +
            									(tonumber(sheet.atr_evolucao_pf) or 0);
            					sheet.atr_total_pf = total;
            				end;
        end, obj);

    obj._e_event20 = obj.dataLink17:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_agi) or 0) +
            									(tonumber(sheet.atr_dom_agi) or 0) +
            									(tonumber(sheet.atr_evolucao_agi) or 0);
            					sheet.atr_total_agi = total;
            				end;
        end, obj);

    obj._e_event21 = obj.dataLink18:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_res) or 0) +
            									(tonumber(sheet.atr_dom_res) or 0) +
            									(tonumber(sheet.atr_evolucao_res) or 0);
            					sheet.atr_total_res = total;
            				end;
        end, obj);

    obj._e_event22 = obj.dataLink19:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            					local total = 	(tonumber(sheet.atr_inicial_voo) or 0) +
            									(tonumber(sheet.atr_dom_voo) or 0) +
            									(tonumber(sheet.atr_evolucao_voo) or 0);
            					sheet.atr_total_voo = total;
            				end;
        end, obj);

    obj._e_event23 = obj.button2:addEventListener("onClick",
        function (self)
            if sheet~=nil then
            						local node = self.rclHabilidadesIniciais:append();
            					end;
        end, obj);

    obj._e_event24 = obj.button3:addEventListener("onClick",
        function (self)
            gui.openInBrowser('http://www.cin.ufpe.br/~jvdl/Plugins/Ficha%20Arc%20Metal%20Zhuls/changelog.txt')
        end, obj);

    obj._e_event25 = obj.button4:addEventListener("onClick",
        function (self)
            gui.openInBrowser('http://www.cin.ufpe.br/~jvdl/Plugins/Ficha%20Arc%20Metal%20Zhuls/Ficha%20Arc%20Metal%20Zhuls.rpk')
        end, obj);

    obj._e_event26 = obj.button5:addEventListener("onClick",
        function (self)
            gui.openInBrowser('http://firecast.rrpg.com.br:90/a?a=pagRWEMesaInfo.actInfoMesa&mesaid=64070');
        end, obj);

    obj._e_event27 = obj.button6:addEventListener("onClick",
        function (self)
            gui.openInBrowser('http://firecast.rrpg.com.br:90/a?a=pagRWEMesaInfo.actInfoMesa&mesaid=131903');
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label158 ~= nil then self.label158:destroy(); self.label158 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.label164 ~= nil then self.label164:destroy(); self.label164 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.rclEstilosDeLuta ~= nil then self.rclEstilosDeLuta:destroy(); self.rclEstilosDeLuta = nil; end;
        if self.tab13 ~= nil then self.tab13:destroy(); self.tab13 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.label161 ~= nil then self.label161:destroy(); self.label161 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label163 ~= nil then self.label163:destroy(); self.label163 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.label162 ~= nil then self.label162:destroy(); self.label162 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.label176 ~= nil then self.label176:destroy(); self.label176 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.layout137 ~= nil then self.layout137:destroy(); self.layout137 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.tab10 ~= nil then self.tab10:destroy(); self.tab10 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.label159 ~= nil then self.label159:destroy(); self.label159 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.label170 ~= nil then self.label170:destroy(); self.label170 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.inventario_16 ~= nil then self.inventario_16:destroy(); self.inventario_16 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.tab12 ~= nil then self.tab12:destroy(); self.tab12 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.frmAMZ1_4 ~= nil then self.frmAMZ1_4:destroy(); self.frmAMZ1_4 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.tab11 ~= nil then self.tab11:destroy(); self.tab11 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.frmAMZ2_3 ~= nil then self.frmAMZ2_3:destroy(); self.frmAMZ2_3 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.label166 ~= nil then self.label166:destroy(); self.label166 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.rclHabilidadesIniciais ~= nil then self.rclHabilidadesIniciais:destroy(); self.rclHabilidadesIniciais = nil; end;
        if self.label181 ~= nil then self.label181:destroy(); self.label181 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.label175 ~= nil then self.label175:destroy(); self.label175 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.frmAMZ2_1 ~= nil then self.frmAMZ2_1:destroy(); self.frmAMZ2_1 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.inventario_18 ~= nil then self.inventario_18:destroy(); self.inventario_18 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.label160 ~= nil then self.label160:destroy(); self.label160 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.frmAMZ5 ~= nil then self.frmAMZ5:destroy(); self.frmAMZ5 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label177 ~= nil then self.label177:destroy(); self.label177 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.tab8 ~= nil then self.tab8:destroy(); self.tab8 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label154 ~= nil then self.label154:destroy(); self.label154 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.frmAMZ6 ~= nil then self.frmAMZ6:destroy(); self.frmAMZ6 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.frmAMZ1_2 ~= nil then self.frmAMZ1_2:destroy(); self.frmAMZ1_2 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.inventario_15 ~= nil then self.inventario_15:destroy(); self.inventario_15 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.inventario_14 ~= nil then self.inventario_14:destroy(); self.inventario_14 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.frmAMZ2_4 ~= nil then self.frmAMZ2_4:destroy(); self.frmAMZ2_4 = nil; end;
        if self.label167 ~= nil then self.label167:destroy(); self.label167 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.inventario_12 ~= nil then self.inventario_12:destroy(); self.inventario_12 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.label155 ~= nil then self.label155:destroy(); self.label155 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.tab9 ~= nil then self.tab9:destroy(); self.tab9 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.inventario_17 ~= nil then self.inventario_17:destroy(); self.inventario_17 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.rclHabilidadesUnicas ~= nil then self.rclHabilidadesUnicas:destroy(); self.rclHabilidadesUnicas = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.inventario_13 ~= nil then self.inventario_13:destroy(); self.inventario_13 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.rclListaDasMissoes ~= nil then self.rclListaDasMissoes:destroy(); self.rclListaDasMissoes = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.inventario_11 ~= nil then self.inventario_11:destroy(); self.inventario_11 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.label171 ~= nil then self.label171:destroy(); self.label171 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.label178 ~= nil then self.label178:destroy(); self.label178 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.label179 ~= nil then self.label179:destroy(); self.label179 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.tabControl3 ~= nil then self.tabControl3:destroy(); self.tabControl3 = nil; end;
        if self.label165 ~= nil then self.label165:destroy(); self.label165 = nil; end;
        if self.label174 ~= nil then self.label174:destroy(); self.label174 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.frmAMZ1_3 ~= nil then self.frmAMZ1_3:destroy(); self.frmAMZ1_3 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.frmAMZ4 ~= nil then self.frmAMZ4:destroy(); self.frmAMZ4 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.tabControl2 ~= nil then self.tabControl2:destroy(); self.tabControl2 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.label169 ~= nil then self.label169:destroy(); self.label169 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.label173 ~= nil then self.label173:destroy(); self.label173 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.label180 ~= nil then self.label180:destroy(); self.label180 = nil; end;
        if self.frmAMZ1_1 ~= nil then self.frmAMZ1_1:destroy(); self.frmAMZ1_1 = nil; end;
        if self.label172 ~= nil then self.label172:destroy(); self.label172 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label157 ~= nil then self.label157:destroy(); self.label157 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.frmAMZ2_2 ~= nil then self.frmAMZ2_2:destroy(); self.frmAMZ2_2 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.label156 ~= nil then self.label156:destroy(); self.label156 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.label168 ~= nil then self.label168:destroy(); self.label168 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.label153 ~= nil then self.label153:destroy(); self.label153 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.tab14 ~= nil then self.tab14:destroy(); self.tab14 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.inventario_10 ~= nil then self.inventario_10:destroy(); self.inventario_10 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFichaRPGmeister = {
    newEditor = newfrmFichaRPGmeister, 
    new = newfrmFichaRPGmeister, 
    name = "frmFichaRPGmeister", 
    dataType = "Arc.Metal.Zhuls", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Arc Metal Zhuls", 
    description=""};

frmFichaRPGmeister = _frmFichaRPGmeister;
rrpg.registrarForm(_frmFichaRPGmeister);
rrpg.registrarDataType(_frmFichaRPGmeister);

return _frmFichaRPGmeister;
