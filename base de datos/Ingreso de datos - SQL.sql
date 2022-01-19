--Dar formato al tipo de fecha.
SET datestyle = "MDY";

-- SACERDOTE
insert into sacerdote values ('00001', 'Mario Oliva Heras', 0);
--insert into sacerdote values ('00002', 'Calos Lóper Hernán', 0);

-- PARROQUIA
insert into parroquia values ('00001', 'Eloy Alfaro');
insert into parroquia values ('00002', 'Los Esteros');
insert into parroquia values ('00003', 'San Mateo');
insert into parroquia values ('00004', 'San Lorenzo');
insert into parroquia values ('00005', 'Tarqui');
insert into parroquia values ('00006', 'Leonidas Proaño');

-- IGLESIA
insert into iglesia values ('00001', '00006', '00001', 'Santísima Trinidad', 'Leonidas proaño - Manta', '2921187');

-- OCUPACION
insert into ocupacion values ('00001', 'Sastre');
insert into ocupacion values ('00002', 'Cajero');
insert into ocupacion values ('00003', 'Locutor');
insert into ocupacion values ('00004', 'Barbero');
insert into ocupacion values ('00005', 'Policía');
insert into ocupacion values ('00006', 'Economista');
insert into ocupacion values ('00007', 'Enfermero');
insert into ocupacion values ('00008', 'Abogado');

-- TIPO
insert into tipo values ('00001', 'Bautismo');
insert into tipo values ('00002', 'Confirmacion');
insert into tipo values ('00003', 'Matrimonio');
insert into tipo values ('00004', 'Fe de Bautismo');
insert into tipo values ('00005', 'Certificado de Confirmacion');
insert into tipo values ('00006', 'Acta de Matrimonio');

-- SEXO
insert into sexo values ('00001', 'Femenino');
insert into sexo values ('00002', 'Masculino');

-- ROL
insert into rol values ('00001', 'Pastor');
insert into rol values ('00002', 'Ministro oficiante');
insert into rol values ('00003', 'Presidente de la Junta Directiva');
insert into rol values ('00004', 'Padrino');
insert into rol values ('00005', 'Testigo');

-- PERFIL EDUCATIVO
insert into perfil_educativo values ('00001', 'Dinámicos', 'Sala Cuna Menor'); 							--Bautizo
insert into perfil_educativo values ('00002', 'Unidad Educativa 24 De Mayo', 'Sala Cuna Mayor'); 		--Bautizo
insert into perfil_educativo values ('00003', 'Jardin Y Escuela Piaget', 'Nivel Medio Menor'); 			--Bautizo
insert into perfil_educativo values ('00004', 'Jardin Y Escuela Little People', 'Nivel Medio Mayor'); 	--Bautizo

-- PERFIL PARROQUIAL
insert into perfil_parroquial values ('00001', '00002', '01/05/1935'); --Matrimonio
insert into perfil_parroquial values ('00002', '00003', '05/28/1941'); --Matrimonio
insert into perfil_parroquial values ('00003', '00001', '03/07/1934'); --Matrimonio
insert into perfil_parroquial values ('00004', '00005', '10/30/1939'); --Matrimonio
insert into perfil_parroquial values ('00005', '00004', '12/12/1946'); --Matrimonio
insert into perfil_parroquial values ('00006', '00006', '08/20/1948'); --Matrimonio
insert into perfil_parroquial values ('00007', '00004', '03/14/1935'); --Matrimonio
insert into perfil_parroquial values ('00008', '00006', '08/19/1941'); --Matrimonio
insert into perfil_parroquial values ('00009', '00005', '06/17/1934'); --Matrimonio
insert into perfil_parroquial values ('00010', '00002', '01/24/1939'); --Matrimonio
insert into perfil_parroquial values ('00011', '00001', '03/26/1946'); --Matrimonio
insert into perfil_parroquial values ('00012', '00003', '11/22/1948'); --Matrimonio

-- PADRES
insert into padre values ('00001', '00007', null, 'Ismael Blasco Valero', '05/26/94', '0964574936'); 		--Bautizo
insert into padre values ('00002', '00005', null, 'Ani Leon Roda', '03/06/91', '0936592328'); 				--Bautizo
insert into padre values ('00003', '00004', null, 'Lorenzo Gimenez Acedo', '12/14/92', '0938790664'); 		--Bautizo
insert into padre values ('00004', '00001', null, 'Zaida Gimenez Farré', '08/27/04', '0935257055'); 		--Bautizo
insert into padre values ('00005', '00007', null, 'Nando Gargallo Lopez', '02/07/99', '0907430958'); 		--Bautizo
insert into padre values ('00006', '00006', null, 'Amarilis Caro Gonzalez', '01/07/93', '0989206295'); 		--Bautizo
insert into padre values ('00007', '00001', null, 'Gerardo Carrasco Uribe', '12/01/92', '0920372244'); 		--Bautizo
insert into padre values ('00008', '00003', null, 'Soledad Murillo Colomer', '05/19/92', '0908648629'); 	--Bautizo
insert into padre values ('00009', null, null, 'Lázaro Segarra Pino', null, null); 			--Confirmacion
insert into padre values ('00010', null, null, 'Paloma Montes Doménech', null, null); 		--Confirmacion
insert into padre values ('00011', null, null, 'Paco Cordero Aguirre', null, null); 		--Confirmacion
insert into padre values ('00012', null, null, 'Valentina Varela Izquierdo', null, null); 	--Confirmacion
insert into padre values ('00013', null, null, 'Eustaquio Lorenzo Agustín', null, null); 	--Confirmacion
insert into padre values ('00014', null, null, 'Ignacia Chamorro Grau', null, null); 		--Confirmacion
insert into padre values ('00015', null, null, 'Gabino Raya Soler', null, null); 			--Confirmacion
insert into padre values ('00016', null, null, 'Coral Rosales Arrieta', null, null); 		--Confirmacion
insert into padre values ('00017', null, '00001', 'Carlos Colom Rocha', null, null); 			--Matrimonio
insert into padre values ('00018', null, '00002', 'Candelas Ferrera Céspedes', null, null); 	--Matrimonio
insert into padre values ('00019', null, '00003', 'Paco Roselló Alberdi', null, null); 			--Matrimonio
insert into padre values ('00020', null, '00004', 'Jessica Galindo Escobar', null, null); 		--Matrimonio
insert into padre values ('00021', null, '00005', 'Marcial Cifuentes Ramón', null, null); 		--Matrimonio
insert into padre values ('00022', null, '00006', 'Selena Cabrero Galiano', null, null); 		--Matrimonio
insert into padre values ('00023', null, '00007', 'Severo Mendizábal Morcillo', null, null); 	--Matrimonio
insert into padre values ('00024', null, '00008', 'Marina Antúnez Guillen', null, null); 		--Matrimonio
insert into padre values ('00025', null, '00009', 'Gustavo Mínguez Mendoza', null, null); 		--Matrimonio
insert into padre values ('00026', null, '00010', 'Valeria García Ballesteros', null, null); 	--Matrimonio
insert into padre values ('00027', null, '00011', 'Jafet Martínez Jaume', null, null); 			--Matrimonio
insert into padre values ('00028', null, '00012', 'Esther Rosell Pont', null, null); 			--Matrimonio


-- PERSONA
insert into persona values ('00001', '00001', 'Herminio Arjona Porta'); 	--Pastor
insert into persona values ('00002', '00002', 'Felix Baudelio Montes'); 	--Ministro oficiante
insert into persona values ('00003', '00003', 'Fabio Cabo Santos'); 		--Presidente de la Junta Directiva
insert into persona values ('00004', '00004', 'Gastón Antón Neira'); 		--Bautizo
insert into persona values ('00005', '00004', 'Yésica Acuña Palacio'); 		--Bautizo
insert into persona values ('00006', '00004', 'Arturo Alberola Bonet'); 	--Bautizo
insert into persona values ('00007', '00004', 'Mirta Alba Guijarro'); 		--Bautizo
insert into persona values ('00008', '00004', 'Calixto Antón Maestre'); 	--Bautizo
insert into persona values ('00009', '00004', 'Miguela Piñeiro Muro'); 		--Bautizo
insert into persona values ('00010', '00004', 'Curro Fernandez Cañas'); 	--Bautizo
insert into persona values ('00011', '00004', 'Isidora Salazar Correa'); 	--Bautizo
insert into persona values ('00012', '00004', 'Maximiliano Chacón Cobo'); 	--Confirmacion
insert into persona values ('00013', '00004', 'Aroa Castellanos Cuervo'); 	--Confirmacion
insert into persona values ('00014', '00004', 'Flavio Pintor Orozco'); 		--Confirmacion
insert into persona values ('00015', '00004', 'Manuela Serna Rivera'); 		--Confirmacion
insert into persona values ('00016', '00004', 'Cosme Casanova'); 			--Confirmacion
insert into persona values ('00017', '00004', 'Delia Gálvez Quero'); 		--Confirmacion
insert into persona values ('00018', '00004', 'Arturo Narváez Cabrero'); 	--Confirmacion
insert into persona values ('00019', '00004', 'Maura Urrutia Galvez'); 		--Confirmacion
insert into persona values ('00020', '00005', 'Eustaquio Rosa Uriarte'); 	--Matrimonio
insert into persona values ('00021', '00005', 'Tamara Corbacho Arroyo'); 	--Matrimonio
insert into persona values ('00022', '00005', 'Apolinar Malo Pozuelo'); 	--Matrimonio
insert into persona values ('00023', '00005', 'Celestina Matas Ibañez'); 	--Matrimonio
insert into persona values ('00024', '00005', 'Albert Calvo Jiménez'); 		--Matrimonio
insert into persona values ('00025', '00005', 'Rosalinda Comas Páez'); 		--Matrimonio

-- SACRAAMENTO
insert into sacramento values ('00001','00001','00001','08/02/2021'); --Bautismo
insert into sacramento values ('00002','00001','00001','08/09/2021'); --Bautismo
insert into sacramento values ('00003','00001','00001','08/16/2021'); --Bautismo
insert into sacramento values ('00004','00001','00002','08/24/2021'); --Confirmacion
insert into sacramento values ('00005','00001','00003','08/30/2021'); --Matrimonio
insert into sacramento values ('00006','00001','00003','08/31/2021'); --Matrimonio
insert into sacramento values ('00007','00001','00003','09/07/2021'); --Matrimonio

-- FELIGRESES
insert into feligreses values ('00001','00001','00001', null,'00001','1352058099','Herminia Blasco Leon','01/12/2021','Espejo 3030', 'P Montufar 238', null, null); 					--Bautizo
insert into feligreses values ('00002','00002','00001', null,'00001','1352045673','Ariadna Gimenez Gimenez','02/02/2020','Pedro Carbo 123 y Junin', 'Barrio Albornos', null, null); 	--Bautizo
insert into feligreses values ('00003','00003','00002', null,'00002','1359869008','Rodrigo Gargallo Caro','07/20/2019','Hurtado 202', 'Uruguay 24-35 Y Veloz', null, null); 			--Bautizo
insert into feligreses values ('00004','00004','00002', null,'00003','1354794400','Josep Carrasco Murillo','05/01/2018',' Colón 2027', '9 de Oct.', null, null); 						--Bautizo
insert into feligreses values ('00005', null, null, null,'00004','1353607207','Miguel Segarra Montes','01/24/2012','Via Daule Km 10', null, null, null); 	--Confirmacion
insert into feligreses values ('00006', null, null, null,'00004','1355455349','Lupita Cordero Varela','05/02/2016','Portete 3840', null, null, null); 		--Confirmacion
insert into feligreses values ('00007', null, null, null,'00004','1359596736','Fabio Lorenzo Chamorro','03/15/2013','Luque 1404', null, null, null); 		--Confirmacion
insert into feligreses values ('00008', null, null, null,'00004','1354664038','Máxima Raya Rosales','12/20/2015','Maldonado 720', null, null, null); 		--Confirmacion
insert into feligreses values ('00009', null, null, null,'00005','1356308804','Custodio Colom Ferrera', null, null, null, '01/16/2025', null); 		--Matrimonio
insert into feligreses values ('00010', null, null, null,'00005','1354767974','Elvira Roselló Galindo', null, null, null, '05/27/2023', null); 		--Matrimonio
insert into feligreses values ('00011', null, null, null,'00006','1357573597','Eliseo Cifuentes Cabrero', null, null, null, '07/30/2027', null); 	--Matrimonio
insert into feligreses values ('00012', null, null, null,'00006','1356404242','Amelia Mendizábal Antúnez', null, null, null, '03/05/2029', null); 	--Matrimonio
insert into feligreses values ('00013', null, null, null,'00007','1357696272','Leonel Mínguez García', null, null, null, '12/02/2022', null); 		--Matrimonio
insert into feligreses values ('00014', null, null, null,'00007','1354828777','María Martínez Rosell', null, null, null, '11/10/2025', null); 		--Matrimonio

-- PADRE_SACRAMENTO
insert into padre_sacramento values ('00001', '00001'); --Bautizo
insert into padre_sacramento values ('00002', '00001'); --Bautizo
insert into padre_sacramento values ('00003', '00001'); --Bautizo
insert into padre_sacramento values ('00004', '00001'); --Bautizo
insert into padre_sacramento values ('00005', '00002'); --Bautizo
insert into padre_sacramento values ('00006', '00002'); --Bautizo
insert into padre_sacramento values ('00007', '00003'); --Bautizo
insert into padre_sacramento values ('00008', '00003'); --Bautizo
insert into padre_sacramento values ('00009', '00004'); --Confirmacion
insert into padre_sacramento values ('00010', '00004'); --Confirmacion
insert into padre_sacramento values ('00011', '00004'); --Confirmacion
insert into padre_sacramento values ('00012', '00004'); --Confirmacion
insert into padre_sacramento values ('00013', '00004'); --Confirmacion
insert into padre_sacramento values ('00014', '00004'); --Confirmacion
insert into padre_sacramento values ('00015', '00004'); --Confirmacion
insert into padre_sacramento values ('00016', '00004'); --Confirmacion
insert into padre_sacramento values ('00017', '00005'); --Matrimonio
insert into padre_sacramento values ('00018', '00005'); --Matrimonio
insert into padre_sacramento values ('00019', '00005'); --Matrimonio
insert into padre_sacramento values ('00020', '00005'); --Matrimonio
insert into padre_sacramento values ('00021', '00006'); --Matrimonio
insert into padre_sacramento values ('00022', '00006'); --Matrimonio
insert into padre_sacramento values ('00023', '00006'); --Matrimonio
insert into padre_sacramento values ('00024', '00006'); --Matrimonio
insert into padre_sacramento values ('00025', '00007'); --Matrimonio
insert into padre_sacramento values ('00026', '00007'); --Matrimonio
insert into padre_sacramento values ('00027', '00007'); --Matrimonio
insert into padre_sacramento values ('00028', '00007'); --Matrimonio

-- PERSONA_SACRAMENTO
insert into persona_sacramento values ('00004', '00001'); --Bautizo
insert into persona_sacramento values ('00005', '00001'); --Bautizo
insert into persona_sacramento values ('00006', '00001'); --Bautizo
insert into persona_sacramento values ('00007', '00001'); --Bautizo
insert into persona_sacramento values ('00008', '00002'); --Bautizo
insert into persona_sacramento values ('00009', '00002'); --Bautizo
insert into persona_sacramento values ('00010', '00003'); --Bautizo
insert into persona_sacramento values ('00011', '00003'); --Bautizo
insert into persona_sacramento values ('00012', '00004'); --Confirmacion
insert into persona_sacramento values ('00013', '00004'); --Confirmacion
insert into persona_sacramento values ('00014', '00004'); --Confirmacion
insert into persona_sacramento values ('00015', '00004'); --Confirmacion
insert into persona_sacramento values ('00016', '00004'); --Confirmacion
insert into persona_sacramento values ('00017', '00004'); --Confirmacion
insert into persona_sacramento values ('00018', '00004'); --Confirmacion
insert into persona_sacramento values ('00019', '00004'); --Confirmacion
insert into persona_sacramento values ('00001', '00005'); --Matrimonio
insert into persona_sacramento values ('00002', '00005'); --Matrimonio
insert into persona_sacramento values ('00003', '00005'); --Matrimonio
insert into persona_sacramento values ('00020', '00005'); --Matrimonio
insert into persona_sacramento values ('00021', '00005'); --Matrimonio
insert into persona_sacramento values ('00001', '00006'); --Matrimonio
insert into persona_sacramento values ('00002', '00006'); --Matrimonio
insert into persona_sacramento values ('00003', '00006'); --Matrimonio
insert into persona_sacramento values ('00022', '00006'); --Matrimonio
insert into persona_sacramento values ('00023', '00006'); --Matrimonio
insert into persona_sacramento values ('00001', '00007'); --Matrimonio
insert into persona_sacramento values ('00002', '00007'); --Matrimonio
insert into persona_sacramento values ('00003', '00007'); --Matrimonio
insert into persona_sacramento values ('00024', '00007'); --Matrimonio
insert into persona_sacramento values ('00025', '00007'); --Matrimonio

--FELIGRESES_PADRE
insert into feligreses_padre values ('00001','00001'); --Bautizo
insert into feligreses_padre values ('00001','00002'); --Bautizo
insert into feligreses_padre values ('00002','00003'); --Bautizo
insert into feligreses_padre values ('00002','00004'); --Bautizo
insert into feligreses_padre values ('00003','00005'); --Bautizo
insert into feligreses_padre values ('00003','00006'); --Bautizo
insert into feligreses_padre values ('00004','00007'); --Bautizo
insert into feligreses_padre values ('00004','00008'); --Bautizo
insert into feligreses_padre values ('00005','00009'); --Confirmacion
insert into feligreses_padre values ('00005','00010'); --Confirmacion
insert into feligreses_padre values ('00006','00011'); --Confirmacion
insert into feligreses_padre values ('00006','00012'); --Confirmacion
insert into feligreses_padre values ('00007','00013'); --Confirmacion
insert into feligreses_padre values ('00007','00014'); --Confirmacion
insert into feligreses_padre values ('00008','00015'); --Confirmacion
insert into feligreses_padre values ('00008','00016'); --Confirmacion
insert into feligreses_padre values ('00009','00017'); --Matrimonio
insert into feligreses_padre values ('00009','00018'); --Matrimonio
insert into feligreses_padre values ('00010','00019'); --Matrimonio
insert into feligreses_padre values ('00010','00020'); --Matrimonio
insert into feligreses_padre values ('00011','00021'); --Matrimonio
insert into feligreses_padre values ('00011','00022'); --Matrimonio
insert into feligreses_padre values ('00012','00023'); --Matrimonio
insert into feligreses_padre values ('00012','00024'); --Matrimonio
insert into feligreses_padre values ('00013','00025'); --Matrimonio
insert into feligreses_padre values ('00013','00026'); --Matrimonio
insert into feligreses_padre values ('00014','00027'); --Matrimonio
insert into feligreses_padre values ('00014','00028'); --Matrimonio
---------------------

-- ACTA
insert into acta values ('00001', '00001', '00004', '00001', '08/02/2021'); --Fe de Bautismo
insert into acta values ('00002', '00001', '00004', '00001', '08/02/2021'); --Fe de Bautismo
insert into acta values ('00003', '00001', '00004', '00002', '08/09/2021'); --Fe de Bautismo
insert into acta values ('00004', '00001', '00004', '00003', '08/16/2021'); --Fe de Bautismo
insert into acta values ('00005', '00001', '00005', '00004', '08/24/2021'); --Certificado de Confirmacion
insert into acta values ('00006', '00001', '00005', '00004', '08/24/2021'); --Certificado de Confirmacion
insert into acta values ('00007', '00001', '00005', '00004', '08/24/2021'); --Certificado de Confirmacion
insert into acta values ('00008', '00001', '00005', '00004', '08/24/2021'); --Certificado de Confirmacion
insert into acta values ('00009', '00001', '00006', '00005', '08/30/2021'); --Acta de Matrimonio
insert into acta values ('00010', '00001', '00006', '00006', '08/31/2021'); --Acta de Matrimonio
insert into acta values ('00011', '00001', '00006', '00007', '09/07/2021'); --Acta de Matrimonio
