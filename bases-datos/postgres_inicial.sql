CREATE DATABASE datos_osteologicos;
\c datos_osteologicos;

CREATE TABLE IF NOT EXISTS datos_huesos (
    id SERIAL PRIMARY KEY,
    hueso_id INT UNIQUE,
    nombre VARCHAR(100),
    nombre_cientifico VARCHAR(100),
    region VARCHAR(50),
    ubicacion TEXT,
    caracteristicas TEXT,
    uso_forense TEXT,
    imagen TEXT
);

-- CRÁNEO
INSERT INTO datos_huesos (hueso_id, nombre, nombre_cientifico, region, ubicacion, caracteristicas, uso_forense, imagen) VALUES
(1, 'Frontal', 'Os frontale', 'craneo', 'Parte anterior y superior del cráneo, forma la frente y techo de las órbitas.', 'Hueso impar, plano, contiene senos frontales.', 'Estimación de edad por suturas; dimorfismo sexual por grosor; análisis de traumatismos.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Frontal_bone.png/640px-Frontal_bone.png'),
(2, 'Parietal Derecho', 'Os parietale dexter', 'craneo', 'Lado derecho de la bóveda craneal.', 'Par, cuadrilátero, delgado pero resistente.', 'Determinación de edad y sexo; fracturas por impacto lateral.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Parietal_bone.png/640px-Parietal_bone.png'),
(3, 'Parietal Izquierdo', 'Os parietale sinister', 'craneo', 'Lado izquierdo de la bóveda craneal.', 'Simétrico al derecho.', 'Referencia bilateral para mediciones.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Parietal_bone.png/640px-Parietal_bone.png'),
(4, 'Temporal Derecho', 'Os temporale dexter', 'craneo', 'Lado derecho de la base del cráneo, contiene el oído.', 'Par, irregular, con porción mastoidea.', 'Estimación de edad en jóvenes; región mastoidea indica sexo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Temporal_bone.png/640px-Temporal_bone.png'),
(5, 'Temporal Izquierdo', 'Os temporale sinister', 'craneo', 'Lado izquierdo de la base del cráneo.', 'Simétrico al derecho.', 'Análisis comparativo bilateral.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Temporal_bone.png/640px-Temporal_bone.png'),
(6, 'Occipital', 'Os occipitale', 'craneo', 'Parte posterior e inferior, conecta con la columna.', 'Impar, contiene el agujero magno.', 'Muy fiable para sexo; lesiones frecuentes en estrangulamiento.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Occipital_bone.png/640px-Occipital_bone.png'),
(7, 'Esfenoides', 'Os sphenoidale', 'craneo', 'Base media del cráneo, forma de mariposa.', 'Impar, muy resistente.', 'Se conserva bien en incendios; datos en restos fragmentarios.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Sphenoid_bone.png/640px-Sphenoid_bone.png'),
(8, 'Etmoides', 'Os ethmoidale', 'craneo', 'Entre las órbitas, forma parte de nariz.', 'Impar, ligero y frágil.', 'Ayuda en reconstrucción facial.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Ethmoid_bone.png/640px-Ethmoid_bone.png');

-- CARA
INSERT INTO datos_huesos (hueso_id, nombre, nombre_cientifico, region, ubicacion, caracteristicas, uso_forense, imagen) VALUES
(9, 'Cigomático Derecho', 'Os zygomaticum dexter', 'cara', 'Forma el pómulo derecho.', 'Par, rugoso y resistente.', 'Indica sexo y etnia; lesiones por golpes en la cara.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Zygomatic_bone.png/640px-Zygomatic_bone.png'),
(10, 'Cigomático Izquierdo', 'Os zygomaticum sinister', 'cara', 'Forma el pómulo izquierdo.', 'Simétrico al derecho.', 'Referencia comparativa.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Zygomatic_bone.png/640px-Zygomatic_bone.png'),
(11, 'Maxilar Superior Derecho', 'Maxilla dextra', 'cara', 'Soporte de dientes superiores derechos.', 'Par, hueco, contiene senos maxilares.', 'Identificación por registros dentales; edad y sexo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Maxilla.png/640px-Maxilla.png'),
(12, 'Maxilar Superior Izquierdo', 'Maxilla sinistra', 'cara', 'Soporte de dientes superiores izquierdos.', 'Simétrico al derecho.', 'Complementa datos dentales.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Maxilla.png/640px-Maxilla.png'),
(13, 'Mandíbula', 'Mandibula', 'cara', 'Único hueso móvil del cráneo, base inferior de la cara.', 'Impar, muy resistente.', '✅ Excelente para identificación: edad, sexo, estatura; resiste fuego y tiempo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Mandible.png/640px-Mandible.png'),
(23, 'Hioides', 'Os hyoideum', 'cara', 'En el cuello, no se articula con ningún otro hueso.', 'Impar, en forma de U.', '✅ Fracturas en sus cuernos = evidencia directa de estrangulamiento.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Hyoid_bone.png/640px-Hyoid_bone.png');

-- COLUMNA
INSERT INTO datos_huesos (hueso_id, nombre, nombre_cientifico, region, ubicacion, caracteristicas, uso_forense, imagen) VALUES
(24, 'Atlas C1', 'Vertebra cervicalis I', 'columna', 'Primera vértebra, sostiene el cráneo.', 'Sin cuerpo, forma de anillo.', 'Fracturas = lesión medular grave; ahorcamiento o caídas.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Atlas_%28anatomy%29.png/640px-Atlas_%28anatomy%29.png'),
(25, 'Axis C2', 'Vertebra cervicalis II', 'columna', 'Debajo del atlas, permite rotación de cabeza.', 'Posee el "diente" odontoideo.', 'Lesiones = torsión violenta del cuello.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Axis_%28anatomy%29.png/640px-Axis_%28anatomy%29.png'),
(46, 'Sacro', 'Os sacrum', 'columna', 'Base de columna, entre lumbares y cóccix.', 'Fusión de 5 vértebras, triangular.', '✅ Determinación de sexo y edad adulta.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Sacrum.png/640px-Sacrum.png'),
(47, 'Cóccix', 'Os coccygis', 'columna', 'Extremo final de la columna.', 'Fusión de 3-5 vértebras pequeñas.', 'Osificación = edad avanzada; fracturas por caídas.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Coccyx.png/640px-Coccyx.png');

-- TÓRAX
INSERT INTO datos_huesos (hueso_id, nombre, nombre_cientifico, region, ubicacion, caracteristicas, uso_forense, imagen) VALUES
(48, 'Esternón', 'Sternum', 'torax', 'Línea media anterior del pecho.', 'Plano, alargado, 3 partes: manubrio, cuerpo, apófisis.', 'Cierre de partes = edad; tamaño = sexo; fracturas en accidentes.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Sternum.png/640px-Sternum.png'),
(49, 'Costilla 1 Derecha', 'Costa I dextra', 'torax', 'Primera costilla, corta y ancha.', 'Más resistente y curva.', 'Lesiones = traumatismos de alta energía.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Ribs.png/640px-Ribs.png');

-- MIEMBRO SUPERIOR
INSERT INTO datos_huesos (hueso_id, nombre, nombre_cientifico, region, ubicacion, caracteristicas, uso_forense, imagen) VALUES
(73, 'Clavícula Derecha', 'Clavicula dextra', 'miembro_sup', 'Entre esternón y omóplato.', 'Forma de S, primer hueso en osificarse.', '✅ Mejor indicador de edad entre 15 y 30 años.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Clavicle.png/640px-Clavicle.png'),
(75, 'Omóplato Derecho', 'Scapula dextra', 'miembro_sup', 'Parte posterior del tórax.', 'Plano, triangular.', 'Forma y tamaño = sexo y complexión.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Scapula.png/640px-Scapula.png'),
(77, 'Húmero Derecho', 'Humerus dexter', 'miembro_sup', 'Hueso del brazo.', 'Más grande del miembro superior.', '✅ Cálculo de estatura ±3 cm; cabeza = sexo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Humerus.png/640px-Humerus.png');

-- PELVIS Y MIEMBRO INFERIOR
INSERT INTO datos_huesos (hueso_id, nombre, nombre_cientifico, region, ubicacion, caracteristicas, uso_forense, imagen) VALUES
(133, 'Coxal Derecho', 'Os coxae dexter', 'pelvis', 'Mitad derecha de la pelvis.', 'Fusión de ilion, isquion y pubis.', '✅ EL MEJOR PARA SEXO (95 % precisión); edad por sínfisis.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Hip_bone.png/640px-Hip_bone.png'),
(135, 'Fémur Derecho', 'Femur dexter', 'miembro_inf', 'Hueso del muslo.', 'Más largo y resistente del cuerpo.', '✅ MÁS PRECISO PARA ESTATURA ±2 cm; sexo por diámetro.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Femur.png/640px-Femur.png'),
(139, 'Tibia Derecha', 'Tibia dextra', 'miembro_inf', 'Hueso principal de la pierna.', 'Transmite todo el peso del cuerpo.', 'Segundo mejor para estatura; grosor = sexo.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Tibia.png/640px-Tibia.png');