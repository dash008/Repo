CREATE TABLE Sucursal (
	codigo_sucursal varchar(30),
	nombre varchar(30),
	ciudad varchar(30),
	activos int, 
	PRIMARY KEY (codigo_sucursal)
);
CREATE TABLE Credito  (
	numero_credito varchar(30), 
	código_sucursal varchar(30), 
	importe int ,
	PRIMARY KEY (numero_credito),
	FOREIGN KEY(codigo_sucursal) REFERENCES Sucursal(codigo_sucursal)
);
CREATE TABLE Cliente ( 
	identificacion varchar(30), 
	nombre varchar(30), 
	direccion varchar(30), 
	ciudad varchar(30),
	PRIMARY KEY(identificacion)
);
CREATE TABLE Cuenta  (
	numero_cuenta varchar(30), 
	codigo_sucursal varchar(30), 
	saldo int,
	PRIMARY KEY(numero_cuenta)
);
CREATE TABLE Creditos_Cliente (
	identificacion varchar(30),
	numero_credito varchar(30),
	PRIMARY KEY(identificacion,numero_credito),
	FOREIGN KEY (identificacion) REFERENCES Cliente (identificacion),
	FOREIGN KEY (numero_credito) REFERENCES Credito (numero_credito)
);
CREATE TABLE Cuentas_Cliente (
	identificacion varchar(30),
	numero_cuenta varchar(30),
	PRIMARY KEY(identificacion,numero_cuenta),
	FOREIGN KEY (identificacion) REFERENCES Cliente (identificacion),
	FOREIGN KEY (numero_cuenta) REFERENCES Cuenta (numero_cuenta)
);


