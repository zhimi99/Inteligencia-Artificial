

CREATE TABLE "Cliente" (
"idCliente" INTEGER,
"nombre" TEXT,
"direccion" TEXT,
"telefono" TEXT,
"email" TEXT
);
INSERT INTO "Cliente" VALUES (1, 'enrique', 'segarra', '2266740', 'chino@gmail.com');


CREATE UNIQUE INDEX "idcliente" ON "Cliente" ("idCliente");

CREATE TABLE "Cuenta" (
"idCuenta" INTEGER,
"saldo" REAL,
"numTarje" TEXT,
"idCliente" INTEGER
);


CREATE TABLE "Pedido" (
"idPedido" INTEGER,
"total" NUMERIC,
"estadoPedido" TEXT,
"idCuenta" INTEGER
);
INSERT INTO "Pedido" VALUES (1, 5, NULL, 1);


CREATE TABLE "PedidoCompuesto" (
"id" INTEGER,
"cantidad" NUMERIC,
"idCliente" INTEGER,
"idProducto" INTEGER,
"idPedido" INTEGER
);


CREATE TABLE "PedidoSimple" (
"id" INTEGER,
"cantidad" INTEGER,
"idCliente" INTEGER,
"idProducto" INTEGER,
"idPedido" INTEGER
);


CREATE TABLE "Producto" (
"idProducto" INTEGER,
"nombre" TEXT,
"costo" REAL,
"stock" NUMERIC
);
INSERT INTO "Producto" VALUES (1, 'mouseGamer', NULL, NULL);
INSERT INTO "Producto" VALUES (2, 'watch', NULL, NULL);
