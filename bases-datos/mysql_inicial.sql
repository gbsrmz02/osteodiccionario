CREATE DATABASE IF NOT EXISTS diccionario;
USE diccionario;

CREATE TABLE IF NOT EXISTS huesos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nombre_cientifico VARCHAR(100),
    region VARCHAR(50) NOT NULL
);

-- CRÁNEO
INSERT INTO huesos (nombre, nombre_cientifico, region) VALUES
('Frontal', 'Os frontale', 'craneo'),
('Parietal Derecho', 'Os parietale dexter', 'craneo'),
('Parietal Izquierdo', 'Os parietale sinister', 'craneo'),
('Temporal Derecho', 'Os temporale dexter', 'craneo'),
('Temporal Izquierdo', 'Os temporale sinister', 'craneo'),
('Occipital', 'Os occipitale', 'craneo'),
('Esfenoides', 'Os sphenoidale', 'craneo'),
('Etmoides', 'Os ethmoidale', 'craneo');

-- CARA
INSERT INTO huesos (nombre, nombre_cientifico, region) VALUES
('Cigomático Derecho', 'Os zygomaticum dexter', 'cara'),
('Cigomático Izquierdo', 'Os zygomaticum sinister', 'cara'),
('Maxilar Superior Derecho', 'Maxilla dextra', 'cara'),
('Maxilar Superior Izquierdo', 'Maxilla sinistra', 'cara'),
('Mandíbula', 'Mandibula', 'cara'),
('Nasal Derecho', 'Os nasale dexter', 'cara'),
('Nasal Izquierdo', 'Os nasale sinister', 'cara'),
('Lagrimal Derecho', 'Os lacrimale dexter', 'cara'),
('Lagrimal Izquierdo', 'Os lacrimale sinister', 'cara'),
('Cornete Nasal Inferior Derecho', 'Concha nasalis inferior dextra', 'cara'),
('Cornete Nasal Inferior Izquierdo', 'Concha nasalis inferior sinistra', 'cara'),
('Vómer', 'Vomer', 'cara'),
('Palatino Derecho', 'Os palatinum dexter', 'cara'),
('Palatino Izquierdo', 'Os palatinum sinister', 'cara'),
('Hioides', 'Os hyoideum', 'cara');

-- COLUMNA
INSERT INTO huesos (nombre, nombre_cientifico, region) VALUES
('Atlas C1', 'Vertebra cervicalis I', 'columna'),
('Axis C2', 'Vertebra cervicalis II', 'columna'),
('C3', 'Vertebra cervicalis III', 'columna'),
('C4', 'Vertebra cervicalis IV', 'columna'),
('C5', 'Vertebra cervicalis V', 'columna'),
('C6', 'Vertebra cervicalis VI', 'columna'),
('C7', 'Vertebra cervicalis VII', 'columna'),
('T1', 'Vertebra thoracica I', 'columna'),
('T2', 'Vertebra thoracica II', 'columna'),
('T3', 'Vertebra thoracica III', 'columna'),
('T4', 'Vertebra thoracica IV', 'columna'),
('T5', 'Vertebra thoracica V', 'columna'),
('T6', 'Vertebra thoracica VI', 'columna'),
('T7', 'Vertebra thoracica VII', 'columna'),
('T8', 'Vertebra thoracica VIII', 'columna'),
('T9', 'Vertebra thoracica IX', 'columna'),
('T10', 'Vertebra thoracica X', 'columna'),
('T11', 'Vertebra thoracica XI', 'columna'),
('T12', 'Vertebra thoracica XII', 'columna'),
('L1', 'Vertebra lumbalis I', 'columna'),
('L2', 'Vertebra lumbalis II', 'columna'),
('L3', 'Vertebra lumbalis III', 'columna'),
('L4', 'Vertebra lumbalis IV', 'columna'),
('L5', 'Vertebra lumbalis V', 'columna'),
('Sacro', 'Os sacrum', 'columna'),
('Cóccix', 'Os coccygis', 'columna');

-- TÓRAX
INSERT INTO huesos (nombre, nombre_cientifico, region) VALUES
('Esternón', 'Sternum', 'torax'),
('Costilla 1 Derecha', 'Costa I dextra', 'torax'),
('Costilla 1 Izquierda', 'Costa I sinistra', 'torax'),
('Costilla 2 Derecha', 'Costa II dextra', 'torax'),
('Costilla 2 Izquierda', 'Costa II sinistra', 'torax'),
('Costilla 3 Derecha', 'Costa III dextra', 'torax'),
('Costilla 3 Izquierda', 'Costa III sinistra', 'torax'),
('Costilla 4 Derecha', 'Costa IV dextra', 'torax'),
('Costilla 4 Izquierda', 'Costa IV sinistra', 'torax'),
('Costilla 5 Derecha', 'Costa V dextra', 'torax'),
('Costilla 5 Izquierda', 'Costa V sinistra', 'torax'),
('Costilla 6 Derecha', 'Costa VI dextra', 'torax'),
('Costilla 6 Izquierda', 'Costa VI sinistra', 'torax'),
('Costilla 7 Derecha', 'Costa VII dextra', 'torax'),
('Costilla 7 Izquierda', 'Costa VII sinistra', 'torax'),
('Costilla 8 Derecha', 'Costa VIII dextra', 'torax'),
('Costilla 8 Izquierda', 'Costa VIII sinistra', 'torax'),
('Costilla 9 Derecha', 'Costa IX dextra', 'torax'),
('Costilla 9 Izquierda', 'Costa IX sinistra', 'torax'),
('Costilla 10 Derecha', 'Costa X dextra', 'torax'),
('Costilla 10 Izquierda', 'Costa X sinistra', 'torax'),
('Costilla 11 Derecha', 'Costa XI dextra', 'torax'),
('Costilla 11 Izquierda', 'Costa XI sinistra', 'torax'),
('Costilla 12 Derecha', 'Costa XII dextra', 'torax'),
('Costilla 12 Izquierda', 'Costa XII sinistra', 'torax');

-- MIEMBRO SUPERIOR
INSERT INTO huesos (nombre, nombre_cientifico, region) VALUES
('Clavícula Derecha', 'Clavicula dextra', 'miembro_sup'),
('Clavícula Izquierda', 'Clavicula sinistra', 'miembro_sup'),
('Omóplato Derecho', 'Scapula dextra', 'miembro_sup'),
('Omóplato Izquierdo', 'Scapula sinistra', 'miembro_sup'),
('Húmero Derecho', 'Humerus dexter', 'miembro_sup'),
('Húmero Izquierdo', 'Humerus sinister', 'miembro_sup'),
('Cúbito Derecho', 'Ulna dextra', 'miembro_sup'),
('Cúbito Izquierdo', 'Ulna sinistra', 'miembro_sup'),
('Radio Derecho', 'Radius dexter', 'miembro_sup'),
('Radio Izquierdo', 'Radius sinister', 'miembro_sup');

-- PELVIS Y MIEMBRO INFERIOR
INSERT INTO huesos (nombre, nombre_cientifico, region) VALUES
('Coxal Derecho', 'Os coxae dexter', 'pelvis'),
('Coxal Izquierdo', 'Os coxae sinister', 'pelvis'),
('Fémur Derecho', 'Femur dexter', 'miembro_inf'),
('Fémur Izquierdo', 'Femur sinister', 'miembro_inf'),
('Rótula Derecha', 'Patella dextra', 'miembro_inf'),
('Rótula Izquierda', 'Patella sinistra', 'miembro_inf'),
('Tibia Derecha', 'Tibia dextra', 'miembro_inf'),
('Tibia Izquierda', 'Tibia sinistra', 'miembro_inf'),
('Peroné Derecho', 'Fibula dextra', 'miembro_inf'),
('Peroné Izquierdo', 'Fibula sinistra', 'miembro_inf');