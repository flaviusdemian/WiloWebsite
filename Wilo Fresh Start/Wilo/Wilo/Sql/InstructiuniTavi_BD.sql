USE `wilo`;

/* Categorii */

INSERT INTO `categories`( `Name`) VALUES ('incalzire, climatizare, racire');
INSERT INTO `categories`( `Name`) VALUES ('alimentare cu apa');
INSERT INTO `categories`( `Name`) VALUES ('apa uzata');
INSERT INTO `categories`( `Name`) VALUES ('grupuri de incendii');

/* Incalzire, climatizare, racire */
INSERT INTO `subcategories` (`Name`, `CategoryId`) values ('Incalzire, climatizare, racire', 1); --i d:1
INSERT INTO `subcategories` (`Name`, `CategoryId`) values ('Sisteme solare termice, geotermale', 1); -- id:2
INSERT INTO `subcategories` (`Name`, `CategoryId`) values ('Recircularea apei calde menajere', 1); -- id:3


/* Alimentarea cu apa */
INSERT INTO `subcategories` (`Name`, `CategoryId`) values ('Pompe autoamorsante', 2); -- id:4
INSERT INTO `subcategories` (`Name`, `CategoryId`) values ('Pompe cu amorsare normala', 2); -- id:5
INSERT INTO `subcategories` (`Name`, `CategoryId`) values ('Sisteme', 2); --id:6

/* Apa uzata */
INSERT INTO `subcategories` (`Name`, `CategoryId`) values ('Module de pompare pentru ape murdare', 3); -- id:7

/* inserare produse alimentare cu apa */
insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Stratos PICO','../Images/Pompe/wilo_stratos_pico.png','../Images/Pompe/Grafice/wilo_stratos_pico.png',
'../Images/Pompe/Tabele/wilo_stratos_pico.png',1);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Yonos PICO','../Images/Pompe/Wilo_Yonos_PICO.png','../Images/Pompe/Grafice/Wilo_Yonos_PICO.png',
'../Images/Pompe/Tabele/Wilo_Yonos_PICO.png',1);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Yonos MAXO','../Images/Pompe/Wilo_Yonos_MAXO.png','../Images/Pompe/Grafice/Wilo_Yonos_MAXO.png',
'../Images/Pompe/Tabele/Wilo_Yonos_MAXO.png',1);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Stratos ECO-BMS','../Images/Pompe/Wilo_Stratos_ECO_BMS.png','../Images/Pompe/Grafice/Wilo_Stratos_ECO_BMS.png',
'../Images/Pompe/Tabele/Wilo_Stratos_ECO_BMS.png',1);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Stratos','../Images/Pompe/wilo_stratos.png','../Images/Pompe/Grafice/wilo_stratos.png',
'../Images/Pompe/Tabele/wilo_stratos.png',1);

/* inserare sisteme solare termice, geotermale */
insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Stratos ECO-STG','../Images/Pompe/Wilo_Stratos_ECO_STG.png','../Images/Pompe/Grafice/Wilo_Stratos_ECO_STG.png',
'../Images/Pompe/Tabele/Wilo_Stratos_ECO_STG.png',2);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Stratos ECO-STG','../Images/Pompe/Wilo_Stratos_ECO_STG.png','../Images/Pompe/Grafice/Wilo_Stratos_ECO_STG.png',
'../Images/Pompe/Tabele/Wilo_Stratos_ECO_STG.png',2);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Star-STG','../Images/Pompe/Wilo_Star_STG.png','../Images/Pompe/Grafice/Wilo_Star_STG.png',
'../Images/Pompe/Tabele/Wilo_Star_STG.png',2);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-TOP-STG','../Images/Pompe/Wilo_TOP_STG.png','../Images/Pompe/Grafice/Wilo_TOP_STG.png',
'../Images/Pompe/Tabele/Wilo_TOP_STG.png',2);

/* Recircularea apei calde menajere' */
insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Star-Z NOVA','../Images/Pompe/Wilo_Star_Z_NOVA.png','../Images/Pompe/Grafice/Wilo_Star_Z_NOVA.png',
'../Images/Pompe/Tabele/Wilo_Star_Z_NOVA.png',3);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Stratos ECO-Z','../Images/Pompe/Wilo_Stratos_ECO_Z.png','../Images/Pompe/Grafice/Wilo_Stratos_ECO_Z.png',
'../Images/Pompe/Tabele/Wilo_Stratos_ECO_Z.png',3);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Stratos-Z','../Images/Pompe/Wilo_Stratos_Z.png','../Images/Pompe/Grafice/Wilo_Stratos_Z.png',
'../Images/Pompe/Tabele/Wilo_Stratos_Z.png',3);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Star-Z','../Images/Pompe/Wilo_Star_Z.png','../Images/Pompe/Grafice/Wilo_Star_Z.png',
'../Images/Pompe/Tabele/Wilo_Star_Z.png',3);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-TOP-Z','../Images/Pompe/Wilo_TOP_Z.png','../Images/Pompe/Grafice/Wilo_TOP_Z.png',
'../Images/Pompe/Tabele/Wilo_TOP_Z.png',3);

/* Pompe autoamorsante */
insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Jet WJ','../Images/Pompe/Wilo_Jet_WJ.png','../Images/Pompe/Grafice/Wilo_Jet_WJ.png',
'../Images/Pompe/Tabele/Wilo_Jet_WJ.png',4);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Jet FWJ','../Images/Pompe/Wilo_Jet_FWJ.png','../Images/Pompe/Grafice/Wilo_Jet_FWJ.png',
'../Images/Pompe/Tabele/Wilo_Jet_FWJ.png',4);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Jet HWJ','../Images/Pompe/Wilo_Jet_HWJ.png','../Images/Pompe/Grafice/Wilo_Jet_HWJ.png',
'../Images/Pompe/Tabele/Wilo_Jet_HWJ.png',4);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Multicargo MC','../Images/Pompe/Wilo_Multicargo_MC.png','../Images/Pompe/Grafice/Wilo_Multicargo_MC.png',
'../Images/Pompe/Tabele/Wilo_Multicargo_MC.png',4);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-MultiCargo FMC','../Images/Pompe/Wilo_MultiCargo_FMC.png','../Images/Pompe/Grafice/Wilo_MultiCargo_FMC.png',
'../Images/Pompe/Tabele/Wilo_MultiCargo_FMC.png',4);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-MultiCargo HMC','../Images/Pompe/Wilo_MultiCargo_HMC.png','../Images/Pompe/Grafice/Wilo_MultiCargo_HMC.png',
'../Images/Pompe/Tabele/Wilo_MultiCargo_HMC.png',4);

/* Pompe cu amorsare normala */

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Multipress MP','../Images/Pompe/Wilo_Multipress_MP.png','../Images/Pompe/Grafice/Wilo_Multipress_MP.png',
'../Images/Pompe/Tabele/Wilo_Multipress_MP.png',5);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-MultiPress FMP','../Images/Pompe/Wilo_MultiPress_FMP.png','../Images/Pompe/Grafice/Wilo_MultiPress_FMP.png',
'../Images/Pompe/Tabele/Wilo_MultiPress_FMP.png',5);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-MultiPress HMP','../Images/Pompe/Wilo_MultiPress_HMP.png','../Images/Pompe/Grafice/Wilo_MultiPress_HMP.png',
'../Images/Pompe/Tabele/Wilo_MultiPress_HMP.png',5);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-EMHIL','../Images/Pompe/Wilo_EMHIL.png','../Images/Pompe/Grafice/Wilo_EMHIL.png',
'../Images/Pompe/Tabele/Wilo_EMHIL.png',5);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Electronic control','../Images/Pompe/Wilo_Electronic_control.png','../Images/Pompe/Grafice/Wilo_Electronic_control.png',
'../Images/Pompe/Tabele/Wilo_Electronic_control.png',5);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Sub TWI 5/TWI 5-SE','../Images/Pompe/Wilo_Sub_TWI_5_TWI_5_SE.png','../Images/Pompe/Grafice/Wilo_Sub_TWI_5_TWI_5_SE.png',
'../Images/Pompe/Tabele/Wilo_Sub_TWI_5_TWI_5_SE.png',5);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Sub TWI 5-SE Plug & Pump','../Images/Pompe/Wilo_Sub_TWI_5_SE_Plug&Pump.png','../Images/Pompe/Grafice/Wilo_Sub_TWI_5_SE_Plug&Pump.png',
'../Images/Pompe/Tabele/Wilo_Sub_TWI_5_SE_Plug&Pump.png',5);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Economy COE-2 TWI 5','../Images/Pompe/Wilo_Economy_COE_2_TWI_5.png','../Images/Pompe/Grafice/Wilo_Economy_COE_2_TWI_5.png',
'../Images/Pompe/Tabele/Wilo_Economy_COE_2_TWI_5.png',5);

/* Sisteme */
insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Sub TWU 3 Plug & Pump','../Images/Pompe/Wilo_Sub_TWU_3_Plug&Pump.png','../Images/Pompe/Grafice/Wilo_Sub_TWU_3_Plug&Pump.png',
'../Images/Pompe/Tabele/Wilo_Sub_TWU_3_Plug&Pump.png',6);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Sub TWU 4 Plug & Pump','../Images/Pompe/Wilo_Sub_TWU_4_Plug&Pump.png','../Images/Pompe/Grafice/Wilo_Sub_TWU_4_Plug&Pump.png',
'../Images/Pompe/Tabele/Wilo_Sub_TWU_4_Plug&Pump.png',6);

/* Module de pompare pentru ape murdare */
insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-Sub TWU 3 Plug & Pump','../Images/Pompe/Wilo_DrainLift_TMP_32.png','../Images/Pompe/Grafice/Wilo_DrainLift_TMP_32.png',
'../Images/Pompe/Tabele/Wilo_DrainLift_TMP_32.png',7);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-DrainLift TMP 40','../Images/Pompe/Wilo_DrainLift_TMP_40.png','../Images/Pompe/Grafice/Wilo_DrainLift_TMP_40.png',
'../Images/Pompe/Tabele/Wilo_DrainLift_TMP_40.png',7);

insert INTO `products` (`Title`, `Icon`, `Graphic`, `Table`, `SubCategoryId`) values 
('Wilo-DrainLift Box','../Images/Pompe/Wilo_DrainLift_Box.png','../Images/Pompe/Grafice/Wilo_DrainLift_Box.png',
'../Images/Pompe/Tabele/Wilo_DrainLift_Box.png',7);

/* campuri asociate fiecarui produs */
INSERT INTO `product_properties`(`Name` ) VALUES ('Tip constructiv');
INSERT INTO `product_properties`(`Name`) VALUES ('Domenii de utilizare');
INSERT INTO `product_properties`(`Name`) VALUES ('Date tehnice');
INSERT INTO `product_properties`(`Name`) VALUES ('Particularitati/Avantaje ale produsului');
INSERT INTO `product_properties`(`Name`) VALUES ('Optiuni');

/* product product_property_texts */
/* Tip constructiv */
INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Pompa de recirculare cu rotor umed, cu racord filetat sau cu flansa, motor EC si reglare automata a puterii', 1,1);

 /* Domenii de utilizare */
 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Instalatii de incalzire cu apa calda, de toate tipurile, instalatii de climatizare, circuite inchise de racire, instalatii industriale de recirculare.', 2,1);

 /* Date tehnice */
 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Domeniul de temperatura admis între -10°C si +110°C', 3,1);

  INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Alimentare 1~230 V, 50/60 Hz', 3,1);

  INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Grad de protectie IP X4D', 3,1);

   INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Racord cu fiting sau cu flansa (in functie de model) Rp 1 şi DN 100', 3,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Presiune maxima de lucru, model standard: 6/10 bar sau 6 bar (model special: 10 bar sau 16 bar)', 3,1);

 /* Particularităţi/Avantaje ale produsului */
 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Clasa de eficienta energetica A', 4,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Grad de eficienta maxim datorită tehnologiei ECM', 4,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Pana la 80% economie de curent fata de pompele de recirculare nereglabile', 4,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Utilizare optima datorita comenzii frontale si accesului frontal la compartimentul bornelor, pozitii de montaj variabile, display independent de pozitie', 4,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Modalitate simpla de montaj datorita flansei combinate PN 6/PN 10 (la DN 32 până la DN 65)', 4,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Utilizarea in instalatii de racire/climatizare posibila, fara limitare a temperaturii de ambianta', 4,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Carcasa pompei cu strat de acoperire prin cataforeza (KTL), pentru evitarea coroziunii la formarea condensului', 4,1);

 INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Extinderea sistemului cu module de comunicare LON, CAN, PLR etc., ce pot fi montate ulterior.', 4,1);

  INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Comanda de la distanta prin interfata cu raze infrarosii (modul IR/telecomanda IR)', 4,1);

 /*optiuni */

   INSERT INTO `product_property_texts`(`Text`, `productPropertyId`, `ProductId`) VALUES
 ('Modele speciale pentru o presiune de lucru de PN 16', 5,1);

 /* products_subproducts */

 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('763','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('896','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('976','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('1024','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('773','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('958','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('1047','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('1093','1');
 INSERT INTO `product_subproducts`(`Text`, `ProductId`) VALUES ('1289','1');

