-- Active: 1709165130996@@bevkfcstvghhnjpe9vzn-mysql.services.clever-cloud.com@3306@bevkfcstvghhnjpe9vzn



CREATE Table usuarios(
    id_users INT(4) PRIMARY KEY AUTO_INCREMENT,
    edad INT(3) ,
    nombres VARCHAR (50),
    apellidos VARCHAR(50),
    tipo_de_documento VARCHAR(50),
    cedula INT(20) UNIQUE
)



INSERT INTO usuarios(edad,nombres,apellidos,tipo_de_documento,cedula) 
VALUES(18, 'Stefa', 'Medina', 'cedula', 13123213),
(22, 'Carlos', 'Gonzalez', 'cedula', 23456789),
(30, 'Luisa', 'Fernandez', 'cedula', 34567890),
(25, 'Mariana', 'Perez', 'cedula', 45678901),
(29, 'Jorge', 'Martinez', 'cedula', 56789012),
(35, 'Andrea', 'Jimenez', 'cedula', 67890123),
(27, 'Roberto', 'Diaz', 'cedula', 78901234),
(32, 'Sofia', 'Lopez', 'cedula', 89012345),
(24, 'Camilo', 'Torres', 'cedula', 90123456),
(28, 'Valeria', 'Castro', 'cedula', 12345678);

CREATE Table vehiculos(
    id_car INT(4) PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(6) UNIQUE,
    color VARCHAR(10),
    marca VARCHAR (10),
    modelo VARCHAR(10),
    id_usuario INT(3)

)

alter Table vehiculos ADD FOREIGN KEY (id_usuario) REFERENCES usuarios(id_users);


INSERT INTO vehiculos (placa,color,marca,modelo,id_usuario)
 VALUES
('abc231', 'azul', 'Toyota', '2020', 1),
('def456', 'rojo', 'Ford', '2018', 2),
('ghi789', 'negro', 'Chevrolet', '2019', 3),
('jkl012', 'blanco', 'Nissan', '2021', 4),
('mno345', 'gris', 'Honda', '2017', 5),
('pqr678', 'verde', 'BMW', '2022', 6),
('stu901', 'amarillo', 'Mercedes', '2023', 7),
('vwx234', 'morado', 'Audi', '2015', 8),
('yz1234', 'naranja', 'Volkswagen', '2016', 9),
('abc987', 'azul claro', 'Hyundai', '2020', 10);



SELECT  usuarios.edad, usuarios.id_users, usuarios.nombres, vehiculos.placa FROM usuarios INNER JOIN vehiculos WHERE usuarios.id_users = vehiculos.id_usuario AND vehiculos.placa = "mno345"


DROP Table usuarios;
DROP  Table vehiculos;

ALTER Table vehiculos add id_hora INT(3)

ALTER Table vehiculos ADD Foreign Key (id_hora) REFERENCES parquing(id_parquing)


ALTER Table parquing ADD Foreign Key (id_vehiculo) REFERENCES vehiculos(id_car)

ALTER Table vehiculos ADD id_delugar INT(4);

ALTER Table vehiculos ADD Foreign Key (id_delugar) REFERENCES estacionamientos(id_parqueadero)