-- V5: Seed inventario Dic 2025
-- Generado desde inventario_dic_2025_normalizado.csv (duplicados fusionados)

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- Productos (428 registros)
INSERT INTO productos (id, nombre, categoria, unidad, descripcion) VALUES
  (UUID(), 'Absolut Cristal', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Aceite Coco', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Aceite De Mani (Botella)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Aceite De Sesamo (Frasco)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Aceite Maravilla (Botellas)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Aceite Pepita De Uva ( Botella )', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Aceto Balsamico (Botella)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Acido Ascorbico', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Acido Citrico', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Acido Tartarico', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Agar-Agar', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Agua con gas', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Agua sin gas', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Aji Cachocabra', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Ajinomoto', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Ajo En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Ají Color', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Albumina', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Alga Madera Chapsui', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Alga Nori', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Alga para Chapsui', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Alitas de Pollo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Aliño Completo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Almendra', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Almendra Laminadas', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Amaretto', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Anis Estrella', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Anis del Mono', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Anis en Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arandanos Congelados', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Arroz Basmati', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz Carnaroli', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz De Paella', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz De Rissotto Scotti', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz Grado 1', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz Grano 2', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz Integral', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz Jasmine', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arroz Sushi', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Arverjas Congeladas', 'Otros', 'KG', NULL),
  (UUID(), 'Asiento de Vacuno', 'Carnes Rojas', 'KG', NULL),
  (UUID(), 'Atún', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Avellana Europea', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Azucar De Coco', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Azucar Flor', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Azucar Granulada', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Azucar Invertida', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Azucar Morena', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Azucar Perla', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Azucar Rubia', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Baileys', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Ballantines Whisky', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Barquillos para Helado ( 18 und)', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Barras Valghrona', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Benediktiner (Cerveza) weissbier', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Bicarbonato', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Bidon Aceite De Oliva', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Cabeza de Congrio', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Cacao En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Café  En Granos', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Café Capuccino', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Café Instantaneo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Calamares Entero Pequeños', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Camarones', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Campari', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Canela En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Canela Entera', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Caracoles', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Carcasa de Pato', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Carcasa de Pollo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Cardamomo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Carmenere D. Dominga', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Carmenere T.H. Undurraga', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Carmenere Tabali Pedregoso', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Carne de Centolla', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Carne de Jaiba', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Carre de Cordero', 'Carnes Rojas', 'KG', NULL),
  (UUID(), 'Castañas De Caju', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Castañas en almibar', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Cebolla En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Cereal Corn Flakes', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Cerezas Congeladas', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Cerezas En Conserva (Tarro)', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Champiñon Deshidratado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chancaca', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chardonnay Carmen', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Chardonnay Casa silva', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Chardonnay Casas del Bosque', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Chardonnay D.Dominga', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Chardonnay Vivendo', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Chcolate sucedaneo Negro', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Choclo Congelado', 'Otros', 'KG', NULL),
  (UUID(), 'Choclo Peruano', 'Otros', 'KG', NULL),
  (UUID(), 'Chocolate 33%', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate 35%', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Chocolate 38% Peru', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate 40% Ecuador', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate 56%', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate 62% Peru', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate 70 %', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate Blanco RDC', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate Manjari', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate dulcey', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chocolate sucedaneo blanco', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Chorizo Crudo', 'Enbutidos', 'KG', NULL),
  (UUID(), 'Chuleta de Cordero', 'Carnes Rojas', 'KG', NULL),
  (UUID(), 'Chuño', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Cinco Sabores', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Clavo De Olor Entero', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Clavo De Olor Molido', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Cloruro De Calcio', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Cmc', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Cochayullo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Coco En Escamas', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Coco Rallado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Colapez', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Comino En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Comino Entero', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Conejo', 'Carnes Blancas', 'UNIDAD', NULL),
  (UUID(), 'Confrio Filete', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Costillar de Cordero', 'Carnes Rojas', 'KG', NULL),
  (UUID(), 'Cous Cous', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Coñac Tres Palos', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Creanberry', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Crema Vegetal', 'Inventario Lacteos', 'LT', NULL),
  (UUID(), 'Crema de Leche', 'Inventario Lacteos', 'LT', NULL),
  (UUID(), 'Cremor Tartaro', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Crepinette', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Crispy Frambuesa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Crispy Lima', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Croquetas de Zapallo', 'Otros', 'KG', NULL),
  (UUID(), 'Cuerdo de Cerdo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Curcuma', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Curry', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Damascos Turcos Confitado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Del puerto Pale Ale', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Despunte Pechuga de Pollo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Dextrosa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Durazno En Conserva (Tarro)', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Enebro', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Eneldo Deshidratado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Escencia Vainilla (Botella) 60 ml', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Esparragos', 'Otros', 'KG', NULL),
  (UUID(), 'Espumante Dussaillant', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Espumante Gema', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Espumante Norton Extra Brut', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Espumante Undurraga', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Espumante Viñamar', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Estragon Seco', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Extracto De Malta Seco', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Extracto De Zanahoria Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Feulletine', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Fideos Cabellitos De Angel Corto', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Fideos Cabellos De Angel Largo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Fior di Latte', 'Otros', 'KG', NULL),
  (UUID(), 'Flor de jamaica', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Foie Gras', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Fondo De Ave En Polvo', 'Otros', 'KG', 'Vence: 2024-07-03'),
  (UUID(), 'Fondo De Pescado En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Fondo de Alcachofa', 'Otros', 'KG', NULL),
  (UUID(), 'Frambuesa Liofilizada', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Frambuesas Congeladas', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Fruits Passion Maracuya Crispy', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Fruits Passion Maracuya Liofilizada', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Frutillas Congeladas', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Galangal', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Galleta Biscoff', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Gelatina En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Gelbinder (Gelificante )', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Gelificante Vegetal', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Gianduja', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Gin Beefeater', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Glucosa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Glucosa 33', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Glucosa 39', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Glucosa 40', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Goma Xantana', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Gran Masala', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Granadina', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Grasa de Cerdo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Grue De Cacao', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Gulden Draak (cerveza) Stout', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Habas Congeledas', 'Otros', 'KG', NULL),
  (UUID(), 'Harina Centeno Fina', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina De Almendras', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina De Calafate', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina De Maiz', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina De Quinoa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina De Yuca', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina Flor', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina Fuerza', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina Integral', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina Super', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina de Arroz', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Harina de Arroz Integral', 'Otros', 'KG', 'Vence: 2025-07-06'),
  (UUID(), 'Harina de Coco', 'Otros', 'KG', 'Vence: 2020-02-07'),
  (UUID(), 'Harina de Garbanzos', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Higos Secos', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Hojas de kaffir', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Hueso de Ciervo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Hueso de Codorniz', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Hueso de Cordero', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Hueso de Pato', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Huevos', 'Inventario Lacteos', 'UNIDAD', NULL),
  (UUID(), 'Inspiracion Almendra', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Inspiracion frambuesa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Inulina', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Isomalt', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Jarabe de Goma', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Jengibre Confitado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Jengibre En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Jim Beam Whiskey', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Kanikama', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Kross Pils Lager', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Kross Stout', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Kunstman Ipa', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Langostinos', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Late Harvest Carmen', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Laurel', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Leche Condensada (Tarro)', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Leche Descremada', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Leche En Polvo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Leche Entera', 'Inventario Lacteos', 'LT', NULL),
  (UUID(), 'Leche evaporada (Tarro)', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Lecitina De Soya', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Lentejas 4mm', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Lentejas Rojas', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Levadura Isntantanea', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Levadura Isntantanea Lesaffre', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Licor Cherry', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor De Cassis', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor De Nuez', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor Frances', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor de Cacao', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor de Café', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor de Frambuesa', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor de Frutilla', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Licor de Menta', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Limon Confitado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Lomito de Cordero', 'Carnes Rojas', 'KG', NULL),
  (UUID(), 'Longaniza de Chillan', 'Enbutidos', 'KG', NULL),
  (UUID(), 'Luxardo', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Magre de Pato', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Mahou (Cerveza) Ipa', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Maicena', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Maltodextrina', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Mani', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Manteca De Cacao', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Mantequilla', 'Inventario Lacteos', 'KG', NULL),
  (UUID(), 'Mantequilla Mani', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Margarina Vegetal', 'Inventario Lacteos', 'KG', NULL),
  (UUID(), 'Marraqueta', 'Otros', 'KG', NULL),
  (UUID(), 'Martini Bitter', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Martini Extra Dry', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Martini Rose', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Martini Rosso', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Mazapan', 'Otros', 'KG', NULL),
  (UUID(), 'Merken', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Merken (feo)', 'Otros', 'KG', NULL),
  (UUID(), 'Mermelada de Grosela', 'Otros', 'KG', NULL),
  (UUID(), 'Miel', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Moras Congeladas', 'Otros', 'KG', NULL),
  (UUID(), 'Mostacilla De Chocolate', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Mostacilla De Multicolores', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Mostaza Antigua (Frasco)', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Mostaza Dijon (Frasco)', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Muesli', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Naranja Confitada', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Neutralin', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Nuez Mariposa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Nuez Moscada', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Nuez Moscada entera', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Oregano', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Ostiones', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Pan Rallado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pan de Guagua', 'Otros', 'KG', NULL),
  (UUID(), 'Pan de Hamburguesa', 'Otros', 'KG', NULL),
  (UUID(), 'Panita de Pollo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Panko', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Paprika', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pasas Morenas', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pasas Rubias', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pasta De Almendra', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Pasta De Avellana', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Pasta De Cacahuate', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Pasta De Pistachos', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Pasta De Vainilla', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Pasta Penne Rigatti', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Pasta Yuzu', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pasta de Choclo c/ Espinaca', 'Otros', 'KG', NULL),
  (UUID(), 'Patas de Pollo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Pato', 'Carnes Blancas', 'UNIDAD', NULL),
  (UUID(), 'Pavo entero', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Pechuga De Pollo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Pechuga Deshuesada de Pavo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Pectina Jaune', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pectina Nh', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pectina X58', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Peperoncino', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Peta Crispy', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Blanca Entera', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Blanca Molida', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Cayena', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Jamaica', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Negra Entera', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Negra Molida', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Roja', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pimienta Rosada', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Pimienta Verde Entera', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pinot Noir 7 Colores', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Pinot Noir Leyda', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Pinot Noir Santa Ema', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Pipeño', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Pisco Capel 35%', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Pisco Mistral noble Fire', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Pistachos Con Cascaras', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Piña En Conserva (Tarro)', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Polvo De Horneo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Polvo Remolacha Liofiizada', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pomelo Confitado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Porotos', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Porto', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Posta Negra', 'Carnes Rojas', 'KG', NULL),
  (UUID(), 'Praline de Almendras', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'ProEspuma', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Procrema', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Prosorbet', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Proteina Vegetal De Soya', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pulpa Chirimoya', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa Damasco', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Frambuesa', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Limon', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Lucuma', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Mandarina', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Mango', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Maracuya', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Naranja', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa De Pera', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa Frutilla', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa Maracuya c/semillas', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa Pistacho', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa Piña', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa de Cerdo', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Pulpa de Frambuesa c/semillas', 'Pulpas y Frutas Congeladas', 'KG', NULL),
  (UUID(), 'Pulpa de Tamarindo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pure De Tomate (Frasco)', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Pure Instantaneo En Caja', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pure de Castañas', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Pure de patatas en polvo', 'Otros', 'KG', 'Vence: 2024-10-31'),
  (UUID(), 'Quebranta', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Queso Gauda', 'Inventario Lacteos', 'UNIDAD', NULL),
  (UUID(), 'Queso Mozarella', 'Inventario Lacteos', 'KG', NULL),
  (UUID(), 'Queso Parmesano', 'Inventario Lacteos', 'KG', NULL),
  (UUID(), 'Quifaros', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Quinoa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Quinoa Tricolor', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Rabano Picante', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Reineta Filete', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Riesling Cousiño - Macul', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Robalo Filete', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Ron Blanco Bacardi', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Ron Cabo Viejo', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Ron Malibú', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Ron Sierra Morena', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Rossard Bitter', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Rosé Cousiño -Macul', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Sal De Himalaya', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Sal De Mar Entre Fina', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Sal Fina', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Sal Nitrito', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Salmon Interfoliado', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Salsa Agridulce', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Salsa Inglesa (Frasco)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Sandy Mac', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Sauvignon Blanc De Martino', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Sauvignon Blanc Leyda', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Semilla de Amapola', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semilla de Cardamomo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semilla de Cilantro', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semilla de Linaza', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semilla de Maravillas', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semilla de Zapallo', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Semillas de Anis', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semillas de Chia', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semillas de Hinojo', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semillas de Sesamo Blanco', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semillas de Sesamo Negro', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semola', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Semolina', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Shishimi', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Sorbitol', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Soya (botella)', 'Bodega Abarrotes', 'UNIDAD', NULL),
  (UUID(), 'Sucedaneo De Limon', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Syra Santa Emilia', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Taco de Jamon Curado', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Tapioca', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Tarro De Tomates 2,5kg', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Tequila Jose Cuervo', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Tequila Sombre Negro', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Tocino Ahumado', 'Enbutidos', 'KG', NULL),
  (UUID(), 'Tomate Deshidratado', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Tomate Deshidratado En Conserva (Frasco)', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Tomillo Seco', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Trehalosa', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Trigo De Mote', 'Otros', 'KG', 'Vence: 2023-07-14'),
  (UUID(), 'Triple sec', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Tripolifosfato De Sodio', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Tuto Ala', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Tuto Entero', 'Carnes Blancas', 'KG', NULL),
  (UUID(), 'Té Ceylan', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Té De Matcha', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'Vaina Calamar', 'Pescados y Mariscos', 'KG', NULL),
  (UUID(), 'Vaina de Vainilla', 'Otros', 'KG', NULL),
  (UUID(), 'Vinagre De Arroz (Botella)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Vinagre De Jerez (Frasco)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Vinagre De Manzana (Botella)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Vinagre Para Sushi', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Vinagre Vino Blanco (Botella)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Vinagre Vino Tinto (Botella)', 'Bodega Abarrotes', 'LT', NULL),
  (UUID(), 'Vino Jerez Tio Pepe', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Vino Licoroso Diamante', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Vino licoroso Centenario', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Vodka Eristoff', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Vodka Stolichnaya', 'Vino Y Licores', 'LT', NULL),
  (UUID(), 'Yogurth Quillayes', 'Inventario Lacteos', 'KG', NULL),
  (UUID(), 'dulce de Leche', 'Inventario Lacteos', 'KG', NULL),
  (UUID(), 'inspiracion yuzu', 'Bodega Abarrotes', 'KG', NULL),
  (UUID(), 'queso Crema Quillayes', 'Inventario Lacteos', 'KG', NULL);

-- Lotes iniciales (uno por producto)
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 7.20 FROM productos p WHERE p.nombre = 'Absolut Cristal' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.48 FROM productos p WHERE p.nombre = 'Aceite Coco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Aceite De Mani (Botella)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Aceite De Sesamo (Frasco)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 62.00 FROM productos p WHERE p.nombre = 'Aceite Maravilla (Botellas)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Aceite Pepita De Uva ( Botella )' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Aceto Balsamico (Botella)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Acido Ascorbico' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Acido Citrico' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Acido Tartarico' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Agar-Agar' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 6.40 FROM productos p WHERE p.nombre = 'Agua con gas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.20 FROM productos p WHERE p.nombre = 'Agua sin gas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Aji Cachocabra' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Ajinomoto' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Ajo En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Ají Color' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Albumina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Alga Madera Chapsui' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Alga Nori' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Alga para Chapsui' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.10 FROM productos p WHERE p.nombre = 'Alitas de Pollo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Aliño Completo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Almendra' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Almendra Laminadas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Amaretto' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Anis Estrella' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.40 FROM productos p WHERE p.nombre = 'Anis del Mono' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Anis en Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Arandanos Congelados' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.50 FROM productos p WHERE p.nombre = 'Arroz Basmati' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.20 FROM productos p WHERE p.nombre = 'Arroz Carnaroli' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Arroz De Paella' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.00 FROM productos p WHERE p.nombre = 'Arroz De Rissotto Scotti' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Arroz Grado 1' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Arroz Grano 2' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Arroz Integral' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.20 FROM productos p WHERE p.nombre = 'Arroz Jasmine' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.00 FROM productos p WHERE p.nombre = 'Arroz Sushi' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Arverjas Congeladas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Asiento de Vacuno' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Atún' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Avellana Europea' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Azucar De Coco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 21.10 FROM productos p WHERE p.nombre = 'Azucar Flor' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 47.00 FROM productos p WHERE p.nombre = 'Azucar Granulada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Azucar Invertida' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.30 FROM productos p WHERE p.nombre = 'Azucar Morena' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.30 FROM productos p WHERE p.nombre = 'Azucar Perla' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Azucar Rubia' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Baileys' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.00 FROM productos p WHERE p.nombre = 'Ballantines Whisky' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.18 FROM productos p WHERE p.nombre = 'Barquillos para Helado ( 18 und)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Barras Valghrona' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Benediktiner (Cerveza) weissbier' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Bicarbonato' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 65.00 FROM productos p WHERE p.nombre = 'Bidon Aceite De Oliva' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.10 FROM productos p WHERE p.nombre = 'Cabeza de Congrio' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.70 FROM productos p WHERE p.nombre = 'Cacao En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.50 FROM productos p WHERE p.nombre = 'Café  En Granos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Café Capuccino' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.70 FROM productos p WHERE p.nombre = 'Café Instantaneo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.70 FROM productos p WHERE p.nombre = 'Calamares Entero Pequeños' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.00 FROM productos p WHERE p.nombre = 'Camarones' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Campari' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.40 FROM productos p WHERE p.nombre = 'Canela En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Canela Entera' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Caracoles' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.90 FROM productos p WHERE p.nombre = 'Carcasa de Pato' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 6.30 FROM productos p WHERE p.nombre = 'Carcasa de Pollo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Cardamomo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 23.20 FROM productos p WHERE p.nombre = 'Carmenere D. Dominga' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Carmenere T.H. Undurraga' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.70 FROM productos p WHERE p.nombre = 'Carmenere Tabali Pedregoso' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Carne de Centolla' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Carne de Jaiba' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Carre de Cordero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.30 FROM productos p WHERE p.nombre = 'Castañas De Caju' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Castañas en almibar' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Cebolla En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Cereal Corn Flakes' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.80 FROM productos p WHERE p.nombre = 'Cerezas Congeladas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.40 FROM productos p WHERE p.nombre = 'Cerezas En Conserva (Tarro)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Champiñon Deshidratado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Chancaca' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 8.20 FROM productos p WHERE p.nombre = 'Chardonnay Carmen' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Chardonnay Casa silva' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Chardonnay Casas del Bosque' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.40 FROM productos p WHERE p.nombre = 'Chardonnay D.Dominga' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Chardonnay Vivendo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 12.00 FROM productos p WHERE p.nombre = 'Chcolate sucedaneo Negro' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Choclo Congelado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.90 FROM productos p WHERE p.nombre = 'Choclo Peruano' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Chocolate 33%' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Chocolate 35%' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Chocolate 38% Peru' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Chocolate 40% Ecuador' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.00 FROM productos p WHERE p.nombre = 'Chocolate 56%' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Chocolate 62% Peru' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 6.60 FROM productos p WHERE p.nombre = 'Chocolate 70 %' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.80 FROM productos p WHERE p.nombre = 'Chocolate Blanco RDC' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Chocolate Manjari' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Chocolate dulcey' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 8.20 FROM productos p WHERE p.nombre = 'Chocolate sucedaneo blanco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Chorizo Crudo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.60 FROM productos p WHERE p.nombre = 'Chuleta de Cordero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Chuño' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Cinco Sabores' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Clavo De Olor Entero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Clavo De Olor Molido' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.40 FROM productos p WHERE p.nombre = 'Cloruro De Calcio' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.59 FROM productos p WHERE p.nombre = 'Cmc' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Cochayullo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.25 FROM productos p WHERE p.nombre = 'Coco En Escamas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.30 FROM productos p WHERE p.nombre = 'Coco Rallado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Colapez' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Comino En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.70 FROM productos p WHERE p.nombre = 'Comino Entero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Conejo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.70 FROM productos p WHERE p.nombre = 'Confrio Filete' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Costillar de Cordero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Cous Cous' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.70 FROM productos p WHERE p.nombre = 'Coñac Tres Palos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.30 FROM productos p WHERE p.nombre = 'Creanberry' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 6.00 FROM productos p WHERE p.nombre = 'Crema Vegetal' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 46.00 FROM productos p WHERE p.nombre = 'Crema de Leche' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Cremor Tartaro' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Crepinette' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.02 FROM productos p WHERE p.nombre = 'Crispy Frambuesa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Crispy Lima' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Croquetas de Zapallo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 9.30 FROM productos p WHERE p.nombre = 'Cuerdo de Cerdo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Curcuma' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Curry' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Damascos Turcos Confitado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.30 FROM productos p WHERE p.nombre = 'Del puerto Pale Ale' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.70 FROM productos p WHERE p.nombre = 'Despunte Pechuga de Pollo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Dextrosa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.60 FROM productos p WHERE p.nombre = 'Durazno En Conserva (Tarro)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Enebro' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Eneldo Deshidratado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.00 FROM productos p WHERE p.nombre = 'Escencia Vainilla (Botella) 60 ml' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Esparragos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Espumante Dussaillant' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 8.20 FROM productos p WHERE p.nombre = 'Espumante Gema' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Espumante Norton Extra Brut' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Espumante Undurraga' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 7.50 FROM productos p WHERE p.nombre = 'Espumante Viñamar' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Estragon Seco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Extracto De Malta Seco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Extracto De Zanahoria Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Feulletine' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.30 FROM productos p WHERE p.nombre = 'Fideos Cabellitos De Angel Corto' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.56 FROM productos p WHERE p.nombre = 'Fideos Cabellos De Angel Largo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.87 FROM productos p WHERE p.nombre = 'Fior di Latte' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Flor de jamaica' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.90 FROM productos p WHERE p.nombre = 'Foie Gras' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.00 FROM productos p WHERE p.nombre = 'Fondo De Ave En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Fondo De Pescado En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Fondo de Alcachofa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Frambuesa Liofilizada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Frambuesas Congeladas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Fruits Passion Maracuya Crispy' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Fruits Passion Maracuya Liofilizada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.59 FROM productos p WHERE p.nombre = 'Frutillas Congeladas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Galangal' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Galleta Biscoff' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.17 FROM productos p WHERE p.nombre = 'Gelatina En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Gelbinder (Gelificante )' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Gelificante Vegetal' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.30 FROM productos p WHERE p.nombre = 'Gianduja' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Gin Beefeater' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 18.00 FROM productos p WHERE p.nombre = 'Glucosa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.10 FROM productos p WHERE p.nombre = 'Glucosa 33' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.49 FROM productos p WHERE p.nombre = 'Glucosa 39' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Glucosa 40' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Goma Xantana' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Gran Masala' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.70 FROM productos p WHERE p.nombre = 'Granadina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.30 FROM productos p WHERE p.nombre = 'Grasa de Cerdo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Grue De Cacao' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Gulden Draak (cerveza) Stout' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.10 FROM productos p WHERE p.nombre = 'Habas Congeledas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.30 FROM productos p WHERE p.nombre = 'Harina Centeno Fina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 8.00 FROM productos p WHERE p.nombre = 'Harina De Almendras' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Harina De Calafate' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Harina De Maiz' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Harina De Quinoa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Harina De Yuca' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 75.00 FROM productos p WHERE p.nombre = 'Harina Flor' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 25.00 FROM productos p WHERE p.nombre = 'Harina Fuerza' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 6.10 FROM productos p WHERE p.nombre = 'Harina Integral' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 50.00 FROM productos p WHERE p.nombre = 'Harina Super' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Harina de Arroz' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Harina de Arroz Integral' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Harina de Coco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Harina de Garbanzos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Higos Secos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Hojas de kaffir' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.43 FROM productos p WHERE p.nombre = 'Hueso de Ciervo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Hueso de Codorniz' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 10.40 FROM productos p WHERE p.nombre = 'Hueso de Cordero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 12.60 FROM productos p WHERE p.nombre = 'Hueso de Pato' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Huevos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.10 FROM productos p WHERE p.nombre = 'Inspiracion Almendra' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.50 FROM productos p WHERE p.nombre = 'Inspiracion frambuesa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.80 FROM productos p WHERE p.nombre = 'Inulina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.57 FROM productos p WHERE p.nombre = 'Isomalt' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.60 FROM productos p WHERE p.nombre = 'Jarabe de Goma' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.95 FROM productos p WHERE p.nombre = 'Jengibre Confitado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Jengibre En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Jim Beam Whiskey' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Kanikama' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Kross Pils Lager' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.10 FROM productos p WHERE p.nombre = 'Kross Stout' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Kunstman Ipa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Langostinos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.50 FROM productos p WHERE p.nombre = 'Late Harvest Carmen' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Laurel' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Leche Condensada (Tarro)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.35 FROM productos p WHERE p.nombre = 'Leche Descremada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.75 FROM productos p WHERE p.nombre = 'Leche En Polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 54.00 FROM productos p WHERE p.nombre = 'Leche Entera' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Leche evaporada (Tarro)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.36 FROM productos p WHERE p.nombre = 'Lecitina De Soya' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.70 FROM productos p WHERE p.nombre = 'Lentejas 4mm' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Lentejas Rojas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.72 FROM productos p WHERE p.nombre = 'Levadura Isntantanea' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Levadura Isntantanea Lesaffre' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.50 FROM productos p WHERE p.nombre = 'Licor Cherry' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Licor De Cassis' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Licor De Nuez' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Licor Frances' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Licor de Cacao' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.30 FROM productos p WHERE p.nombre = 'Licor de Café' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Licor de Frambuesa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Licor de Frutilla' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Licor de Menta' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.50 FROM productos p WHERE p.nombre = 'Limon Confitado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Lomito de Cordero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.75 FROM productos p WHERE p.nombre = 'Longaniza de Chillan' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Luxardo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.35 FROM productos p WHERE p.nombre = 'Magre de Pato' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Mahou (Cerveza) Ipa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 6.70 FROM productos p WHERE p.nombre = 'Maicena' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Maltodextrina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.98 FROM productos p WHERE p.nombre = 'Mani' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.90 FROM productos p WHERE p.nombre = 'Manteca De Cacao' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 13.50 FROM productos p WHERE p.nombre = 'Mantequilla' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Mantequilla Mani' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Margarina Vegetal' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Marraqueta' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Martini Bitter' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Martini Extra Dry' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Martini Rose' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.30 FROM productos p WHERE p.nombre = 'Martini Rosso' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 14.00 FROM productos p WHERE p.nombre = 'Mazapan' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Merken' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Merken (feo)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.50 FROM productos p WHERE p.nombre = 'Mermelada de Grosela' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Miel' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.70 FROM productos p WHERE p.nombre = 'Moras Congeladas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Mostacilla De Chocolate' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Mostacilla De Multicolores' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.70 FROM productos p WHERE p.nombre = 'Mostaza Antigua (Frasco)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Mostaza Dijon (Frasco)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Muesli' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Naranja Confitada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.70 FROM productos p WHERE p.nombre = 'Neutralin' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.97 FROM productos p WHERE p.nombre = 'Nuez Mariposa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Nuez Moscada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Nuez Moscada entera' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Oregano' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.90 FROM productos p WHERE p.nombre = 'Ostiones' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Pan Rallado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 8.70 FROM productos p WHERE p.nombre = 'Pan de Guagua' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pan de Hamburguesa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.65 FROM productos p WHERE p.nombre = 'Panita de Pollo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Panko' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.30 FROM productos p WHERE p.nombre = 'Paprika' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Pasas Morenas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.40 FROM productos p WHERE p.nombre = 'Pasas Rubias' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pasta De Almendra' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pasta De Avellana' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pasta De Cacahuate' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pasta De Pistachos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pasta De Vainilla' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pasta Penne Rigatti' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Pasta Yuzu' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Pasta de Choclo c/ Espinaca' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.80 FROM productos p WHERE p.nombre = 'Patas de Pollo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pato' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.10 FROM productos p WHERE p.nombre = 'Pavo entero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 11.50 FROM productos p WHERE p.nombre = 'Pechuga De Pollo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Pechuga Deshuesada de Pavo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pectina Jaune' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.30 FROM productos p WHERE p.nombre = 'Pectina Nh' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.71 FROM productos p WHERE p.nombre = 'Pectina X58' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Peperoncino' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Peta Crispy' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.80 FROM productos p WHERE p.nombre = 'Pimienta Blanca Entera' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pimienta Blanca Molida' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.30 FROM productos p WHERE p.nombre = 'Pimienta Cayena' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pimienta Jamaica' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pimienta Negra Entera' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pimienta Negra Molida' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pimienta Roja' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pimienta Rosada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pimienta Verde Entera' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pinot Noir 7 Colores' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Pinot Noir Leyda' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pinot Noir Santa Ema' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Pipeño' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pisco Capel 35%' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pisco Mistral noble Fire' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Pistachos Con Cascaras' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.80 FROM productos p WHERE p.nombre = 'Piña En Conserva (Tarro)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Polvo De Horneo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Polvo Remolacha Liofiizada' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pomelo Confitado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Porotos' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Porto' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.50 FROM productos p WHERE p.nombre = 'Posta Negra' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.10 FROM productos p WHERE p.nombre = 'Praline de Almendras' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'ProEspuma' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Procrema' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Prosorbet' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Proteina Vegetal De Soya' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.00 FROM productos p WHERE p.nombre = 'Pulpa Chirimoya' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Pulpa Damasco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Pulpa De Frambuesa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.50 FROM productos p WHERE p.nombre = 'Pulpa De Limon' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.90 FROM productos p WHERE p.nombre = 'Pulpa De Lucuma' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Pulpa De Mandarina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 8.20 FROM productos p WHERE p.nombre = 'Pulpa De Mango' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.80 FROM productos p WHERE p.nombre = 'Pulpa De Maracuya' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.60 FROM productos p WHERE p.nombre = 'Pulpa De Naranja' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pulpa De Pera' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 6.60 FROM productos p WHERE p.nombre = 'Pulpa Frutilla' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.60 FROM productos p WHERE p.nombre = 'Pulpa Maracuya c/semillas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.10 FROM productos p WHERE p.nombre = 'Pulpa Pistacho' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Pulpa Piña' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.91 FROM productos p WHERE p.nombre = 'Pulpa de Cerdo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.70 FROM productos p WHERE p.nombre = 'Pulpa de Frambuesa c/semillas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pulpa de Tamarindo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pure De Tomate (Frasco)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pure Instantaneo En Caja' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.00 FROM productos p WHERE p.nombre = 'Pure de Castañas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Pure de patatas en polvo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Quebranta' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Queso Gauda' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.50 FROM productos p WHERE p.nombre = 'Queso Mozarella' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 7.00 FROM productos p WHERE p.nombre = 'Queso Parmesano' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Quifaros' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Quinoa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Quinoa Tricolor' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Rabano Picante' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.50 FROM productos p WHERE p.nombre = 'Reineta Filete' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.00 FROM productos p WHERE p.nombre = 'Riesling Cousiño - Macul' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.77 FROM productos p WHERE p.nombre = 'Robalo Filete' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Ron Blanco Bacardi' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Ron Cabo Viejo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 25.00 FROM productos p WHERE p.nombre = 'Ron Malibú' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Ron Sierra Morena' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Rossard Bitter' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.20 FROM productos p WHERE p.nombre = 'Rosé Cousiño -Macul' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Sal De Himalaya' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Sal De Mar Entre Fina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 7.70 FROM productos p WHERE p.nombre = 'Sal Fina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.80 FROM productos p WHERE p.nombre = 'Sal Nitrito' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.50 FROM productos p WHERE p.nombre = 'Salmon Interfoliado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.51 FROM productos p WHERE p.nombre = 'Salsa Agridulce' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Salsa Inglesa (Frasco)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Sandy Mac' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Sauvignon Blanc De Martino' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Sauvignon Blanc Leyda' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.20 FROM productos p WHERE p.nombre = 'Semilla de Amapola' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.10 FROM productos p WHERE p.nombre = 'Semilla de Cardamomo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semilla de Cilantro' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semilla de Linaza' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semilla de Maravillas' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semilla de Zapallo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semillas de Anis' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semillas de Chia' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semillas de Hinojo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Semillas de Sesamo Blanco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.34 FROM productos p WHERE p.nombre = 'Semillas de Sesamo Negro' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.61 FROM productos p WHERE p.nombre = 'Semola' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.10 FROM productos p WHERE p.nombre = 'Semolina' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Shishimi' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.56 FROM productos p WHERE p.nombre = 'Sorbitol' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Soya (botella)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Sucedaneo De Limon' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Syra Santa Emilia' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.38 FROM productos p WHERE p.nombre = 'Taco de Jamon Curado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Tapioca' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 10.00 FROM productos p WHERE p.nombre = 'Tarro De Tomates 2,5kg' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Tequila Jose Cuervo' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.50 FROM productos p WHERE p.nombre = 'Tequila Sombre Negro' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.00 FROM productos p WHERE p.nombre = 'Tocino Ahumado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Tomate Deshidratado' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Tomate Deshidratado En Conserva (Frasco)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.17 FROM productos p WHERE p.nombre = 'Tomillo Seco' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.60 FROM productos p WHERE p.nombre = 'Trehalosa' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.80 FROM productos p WHERE p.nombre = 'Trigo De Mote' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.70 FROM productos p WHERE p.nombre = 'Triple sec' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Tripolifosfato De Sodio' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.20 FROM productos p WHERE p.nombre = 'Tuto Ala' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.50 FROM productos p WHERE p.nombre = 'Tuto Entero' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Té Ceylan' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Té De Matcha' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.00 FROM productos p WHERE p.nombre = 'Vaina Calamar' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Vaina de Vainilla' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 3.00 FROM productos p WHERE p.nombre = 'Vinagre De Arroz (Botella)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Vinagre De Jerez (Frasco)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 13.00 FROM productos p WHERE p.nombre = 'Vinagre De Manzana (Botella)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.80 FROM productos p WHERE p.nombre = 'Vinagre Para Sushi' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 7.00 FROM productos p WHERE p.nombre = 'Vinagre Vino Blanco (Botella)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.00 FROM productos p WHERE p.nombre = 'Vinagre Vino Tinto (Botella)' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 2.00 FROM productos p WHERE p.nombre = 'Vino Jerez Tio Pepe' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.40 FROM productos p WHERE p.nombre = 'Vino Licoroso Diamante' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 0.00 FROM productos p WHERE p.nombre = 'Vino licoroso Centenario' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.60 FROM productos p WHERE p.nombre = 'Vodka Eristoff' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.10 FROM productos p WHERE p.nombre = 'Vodka Stolichnaya' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 5.60 FROM productos p WHERE p.nombre = 'Yogurth Quillayes' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 12.00 FROM productos p WHERE p.nombre = 'dulce de Leche' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 1.10 FROM productos p WHERE p.nombre = 'inspiracion yuzu' ORDER BY p.createdAt DESC LIMIT 1;
INSERT INTO lotes (id, productoId, codigoLote, cantidadActual) SELECT UUID(), p.id, 'INICIAL-DIC-2025', 4.40 FROM productos p WHERE p.nombre = 'queso Crema Quillayes' ORDER BY p.createdAt DESC LIMIT 1;

SET FOREIGN_KEY_CHECKS = 1;
