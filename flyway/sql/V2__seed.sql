SET @admin = UUID();
SET @user  = UUID();
INSERT INTO usuarios (id,email,password,rol) VALUES
(@admin,'admin@bodega.cl','$2b$10$IkJev3KX9.F0so.Oq/MKZOyHWrGxtaicbc6WYxTgEWbKgJDfKk8rm','ADMIN'),
(@user ,'user@bodega.cl' ,'$2b$10$tBnd4Txp9TMxh39rQjZ3Ae46HrwTPKTgo0R7VY93eOiAkMRnz0S8u','USER');

SET @harina = UUID();
SET @loteH  = UUID();
INSERT INTO productos (id,nombre,unidad) VALUES (@harina,'Harina','KG');
INSERT INTO lotes (id,productoId,codigoLote,fechaVencimiento,cantidadActual)
VALUES (@loteH,@harina,'HAR-01','2026-06-15',20.00);

INSERT INTO movimientos (id,tipo,cantidad,usuarioId,productoId,loteId) VALUES
(UUID(),'ENTRADA',20.00,@admin,@harina,@loteH);
