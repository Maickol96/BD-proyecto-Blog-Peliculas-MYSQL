-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-03-2024 a las 19:16:53
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias`
(
    `id`     int          NOT NULL AUTO_INCREMENT,
    `nombre` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 17
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`)
VALUES (1, 'Accion'),
       (2, 'Comedia'),
       (3, 'Deportes'),
       (12, 'Drama'),
       (13, 'Anime'),
       (14, 'Aventura'),
       (15, 'Ciencia Ficcion'),
       (16, 'Fantasia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

DROP TABLE IF EXISTS `entradas`;
CREATE TABLE IF NOT EXISTS `entradas`
(
    `id`           int          NOT NULL AUTO_INCREMENT,
    `usuarios_id`  int          NOT NULL,
    `categoria_id` int          NOT NULL,
    `titulo`       varchar(255) NOT NULL,
    `descripcion`  mediumtext,
    `fecha`        date         NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_entrada_usuario` (`usuarios_id`),
    KEY `fk_entradas_categoria` (`categoria_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 65
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `usuarios_id`, `categoria_id`, `titulo`, `descripcion`, `fecha`)
VALUES (33, 34, 1, 'El agente invisible',
        'El agente invisible es el agente de la CIA Court Gentry (Ryan Gosling), alias Sierra Seis. Sacado de una cárcel federal reclutado por su supervisor, Donald Fitzroy (Billy Bob Thornton), Gentry fue en su día un mercader de la muerte altamente cualificado, autorizado por la Agencia. Pero ahora las tornas han cambiado y Seis es el objetivo, perseguido por todo el mundo por Lloyd Hansen (Chris Evans), un antiguo compañero de la CIA que no se detendrá ante nada para acabar con él. La agente Dani Miranda (Ana de Armas) le cubre las espaldas. La necesitará.',
        '2024-03-12'),
       (34, 34, 1, 'Alerta roja',
        'El título de Alerta Roja hace referencia a la orden de arresto que la Interpol emite contra sus criminales más buscados, como los que protagonizan la película. El perfilador del FBI John Hartley (Johnson) consigue una gran victoria cuando finalmente detiene al famoso ladrón de arte Nolan Booth (Reynolds), un astuto delincuente que ha conseguido muchas fugas atrevidas a lo largo de los años. Booth se ha centrado en las piezas conocidas como los Huevos de Cleopatra, aunque no es el único que quiere conseguirlas.Justo cuando Hartley cree que ha realizado un arresto triunfal, la ladrona de arte más buscada del mundo, Bishop (Gadot), le traiciona y le inculpa del robo de uno de los Huevos. Para limpiar su nombre, Hartley debe formar equipo con Booth para encontrar los otros Huevos y acabar con el Obispo de una vez por todas.\r\n',
        '2024-03-12'),
       (35, 34, 1, 'La vieja guardia',
        'La película dirigida por Gina Prince-Bythewood (Love & Basketball, Beyond the Lights, La vida secreta de las abejas) nos presenta un grupo secreto y muy unido de cuatro mercenarios con una misteriosa capacidad que les impide morir. Juntos, llevan siglos luchando por proteger el mundo de los mortales a las órdenes de una guerrera llamada Andy (Charlize Theron). Pero cuando contratan al equipo para desempeñar una misión de emergencia hallan a una nueva inmortal, Nile (Kiki Layne), a quien reclutan. A partir de entonces sus extraordinarias habilidades quedan expuestas y son perseguidos. Andy y Nile (Kiki Layne) deberán ayudar al grupo a erradicar la amenaza de quienes pretenden replicar y rentabilizar su poder a cualquier precio.',
        '2024-03-12'),
       (36, 34, 1, 'Misión Imposible: Fallout ',
        'De la sorprendente primera parte a una vergonzosa y ridícula continuación, desde la tercera Tom Cruise ha sabido recuperar esta emblemática saga de acción y convertirla en una de las más respetadas y aclamadas por la crítica y exitosas de los últimos tiempos. Desde que JJ Abrams la actualizara con la tercera parte, la saga ha ido creciendo en ambición y envergadura con cada película. Tom Cruise, que rueda todas las escenas de acción, se supera a sí mismo en esta sexta entrega, posiblemente la mejor de todas.\r\n\r\nEn esta nueva entrega, además de escenarios increíbles e impactantes escenas de acción, descubriremos más a fondo la personalidad de Ethan Hunt, también volveremos a ver a la espía del MI6 Ilsa Faust (Rebecca Ferguson) y conoceremos a una nueva directora de la CIA (Angela Bassett). Además, vuelven otros personajes conocidos de la saga como Luther Stickell (Ving Rhames), Benji Dunn (Simon Pegg), Alan Hunley (Alec Baldwin) y Julia Meade (Michelle Monaghan).',
        '2024-03-12'),
       (38, 34, 2, 'La gente como vosotros (Kenya Barris, 2023)',
        'Tras un encuentro fortuito, chico conoce chica y... nada sale como esperan. En esta comedia interracial, un judío (Jonah Hill) y una musulmana (Lauren London) de caracteres opuestos se enamoran, lo que provoca un choque cultural enorme que no pasa desapercibido para sus respectivos padres, interpretados por Julia Louis-Dreyfus y David Duchovny y Nia Long y un recuperado Eddie Murphy.',
        '2024-03-12'),
       (39, 34, 2, 'Puñales por la espalda (Rian Johnson, 2019)',
        '\"Aquí hay gato encerrado\", afirmaba Benoît Blanc (Daniel Craig), principal protagonista de \'Puñales por la espalda\', y la verdad es que no se equivocaba. En 2019, Rian Johnson contaría con Chris Evans, Jamie Lee Curtis, Toni Collette, Ana de Armas, Don Johnson, Michael Shannon y Christopher Plummer para resucitar el juguetón espíritu de la intriga en la tradición de la mejor Agatha Christie en una película llena de giros, presuntos culpables y falsas coartadas, un puzle minuciosamente orquestado por su director en la que un detective deberá descubrir la verdad tras la muerte de un flamante novelista de misterio.',
        '2024-03-12'),
       (40, 34, 2, 'Érase una vez... en Hollywood (Quentin Tarantino, 2019)',
        'Ganadora de tres Oscar (incluido el de Mejor Actor de Reparto para Brad Pitt) y una de las mejores películas de Quentin Tarantino, \'Érase una vez... en Hollywood\' nos traslada a unos años 60 que lo cambiarían todo en la industria del cine y la sociedad estadounidense. La historia sigue a Rick Dalton (interpretado por Leonardo DiCaprio), un estrella de la gran pantalla que intenta amoldarse a los cambios del medio junto a su misterioso doble (Pitt) y paralelamente al ascenso a la fama de la prometedora actriz y modelo Sharon Tate (a la que da vida con pura magia Margot Robbie). ',
        '2024-03-12'),
       (41, 34, 2, 'El lado bueno de las cosas (David O. Russell, 2012)',
        'Jennifer Lawrence ingresó en la lista de ganadoras del Oscar a Mejor Actriz gracias a su trabajo en esta película de David O. Russell, una comedia romántica que coprotagonizó con Bradley Cooper, Robert de Niro y Jackie Weaver. Basada en el libro de Matthew Quick, la película sigue a un hombre que regresa a casa de sus padres después de pasar un tiempo en un centro de salud mental a raíz de una violenta ruptura con su pareja. ',
        '2024-03-12'),
       (42, 34, 3, 'Un domingo cualquiera (1999)',
        'Oliver Stone ve el fútbol americano como algo parecido a una panda de gladiadores asestándose hachazos en el Coliseo. Y no se equivoca del todo. Un domingo cualquiera es épica, alborotadora, sudorosa, malhablada y mucho más a lo largo de sus tres horas de duración. El elenco incluye a un Al Pacino muy gritón, a un joven Jamie Foxx, a un James Woods imposiblemente zalamero, a una desafiante Cameron Diaz y a varias leyendas de la NFL como Jim Brown, Lawrence Taylor y Dick Butkus. SM',
        '2024-03-12'),
       (43, 34, 3, 'Evasión o victoria (1981)',
        'Gracias a Rocky, sabemos que Stallone era ágil con las manos, pero, ¿alguien lo tenía por un portero extraordinario? Lo cierto es que se le va tan cómodo en el campo de fútbol como a Bambi sobre el hielo, así que es una suerte que la película también contara con Pelé, Bobby Moore y Ossie Ardiles para hacerse cargo de casi toda la acción futbolística. Michael Caine está en su mejor momento como carismático líder de los Aliados. SM',
        '2024-03-12'),
       (44, 34, 3, 'El luchador (2010)',
        '¿Convencional? Claro. ¿Eficaz? Sin duda. Rodada con el realismo de David O Russell y con un toque años 90, esta película biográfica de Micky Ward se sustenta sobre los hombros de sus grandes interpretaciones. Mark Wahlberg es Ward, todo magulladuras y cara de niño, mientras que Christian Bale es su demacrado hermano adicto al crack. La interpretación femenina viene de la mano de Amy Adams y de Melissa Leo. Wahlberg es el único que no fue nominado a los Óscar por esta película. Los aficionados al boxeo también se deleitarán con los pequeños detalles, como las clásicas imágenes de HBO y la sudorosa claustrofobia de las salas de cine pequeñas. SM',
        '2024-03-12'),
       (45, 34, 12, 'Estoy pensando en dejarlo',
        'La película de Charlie Kaufman reflexiona sobre cómo la cultura moldea nuestras inquietudes mientras trocea la masculinidad tóxica y las fantasías se niegan a ser manipuladas. Una pesadilla convertida en laberinto mental que se convirtió rápidamente en una de esas películas raras que son demasiado locas para creértelas, pero que nos atrapan desde el primer fotograma. Y no te pierdas nuestro análisis de \'Estoy pensando en dejarlo\' por si te has quedado con dudas. ',
        '2024-03-12'),
       (46, 34, 12, 'Un monstruo viene a verme',
        'J.A. Bayona se consagró en Hollywood con esta fantástica (y lacrimógena) historia sobre un niño que comienza a recibir las visitas de un monstruo gigante (con la voz de Liam Neeson) mientras lidia con el cáncer de su madre, la ausencia de su padre y el maltrato escolar. ',
        '2024-03-12'),
       (47, 34, 12, 'Wonder',
        'August Pullman (Jacob Tremblay, otra vez en el listado) es un niño nacido con malformaciones faciales que, hasta ahora, le han impedido ir a la escuela. Auggie se convierte en el más improbable de los héroes cuando entra en quinto grado del colegio local, con el apoyo de sus padres (Julia Roberts y Owen Wilson). La compasión y la aceptación de sus nuevos compañeros y del resto de la comunidad serán puestos a prueba, pero el extraordinario viaje de Auggie los unirá a todos y demostrará que no puedes camuflarte cuando has nacido para hacer algo grande. Si quieres saber un poquito más, que te lo cuente la mismísima Julia Roberts, a la que entrevistamos por \'Wonder\' en 2017.',
        '2024-03-12'),
       (48, 34, 12, 'Siete Almas',
        'Will Smith buscó desesperadamente el Oscar antes de recibirlo en 2022 por su papel en \'El método Williams\'. \'Siete Almas\' es una de las mejores películas de Will Smith, un dramón en el que el actor se reencontraba con Rosario Dawson tras \'Hombres de Negro II\'',
        '2024-03-12'),
       (49, 34, 13,
        'Violet Evergarden: La eternidad y la muñeca de recuerdos automáticos (Haruka Fujita y Taichi Ishidate, 2019)',
        'Primera incursión en la gran pantalla del personaje de Violet Evergarden, creado por Kana Akatsuki. La señorita Evergarden tendrá que acudir al \'rescate\' de Isabella, una chica de la nobleza que vive oprimida por las estrictas reglas de su padre. Su nueva profesora, y veterana de la guerra, asume el reto de entender sus sentimientos y ofrecerle una nueva perspectiva. ',
        '2024-03-12'),
       (50, 34, 13, 'Porco Rosso (Hayao Miyazaki, 1992)',
        'La producción de Ghibli está repleta de películas únicas pero ‘Porco Rosso’ es la más especial de todas. Muchos de sus pasajes siguen siendo un misterio años después y su complejidad hace que crezca con los visionados. Aquí el protagonista no es una joven sino un maduro piloto, algo amargado y machista, convertido en cerdo (sí, cuando los cerdos vuelen…) Estamos en la Italia fascista, pero Miyazaki nos lleva hasta un maravilloso mundo de pilotos de hidroaviones y piratas, que viven una distopía fuera de la ley sobre las aguas del Mar Adriático. Porco Rosso, que en realidad se llama Marco, guarda en su honesta dureza fuertes paralelismos con los héroes del noir de Humphrey Bogart o Robert Mitchum. Como ellos, es un romántico que se ha autocondenado, por principios, a vivir una vida peor de la que se merece. Con la historia de amor más triste y sutil de todo el universo Ghibli y un final que da para pensar y reposar toda una vida, ‘Porco Rosso’ es la película más madura de Miyazaki, la más crepuscular y melancólica. Además, tiene la mejor frase de todo la historia del cine animado. Por supuesto, hablamos de esa en la que el cerdo Porco Rosso rechaza unirse al ejército porque “Más vale ser un cerdo que ser un fascista”. Aplausos, por favor',
        '2024-03-12'),
       (51, 34, 13, 'Héroes humildes (Hiromasa Yonebayashi, Yoshiyuki Momose y Akihiko Yamashita, 2018)',
        'El Studio Ponoc, formado por extrabajadores del Studio Ghibli, demostraron su maestría animada con esta película formada por tres historias, dirigidas por tres cineastas diferentes: \'Kanini & Kanino\' de Hiromasa Yonebayashi, \'Life Ain\'t Gonna Lose\' de Yoshiyuki Momose y \'Invisible\' de Akihiko Yamashita. Su punto de partida conjunto: \"la historia de varios héroes modestos de nuestro tiempo\".',
        '2024-03-12'),
       (52, 34, 13, 'Amor de gata (Junichi Sato y Tomotaka Shibayama, 2020)',
        'La historia de esta tierna película de Junichi Sato y Tomotaka Shibayama sigue a una joven estudiante de secundaria, Miyo \"Muge\" Sasaki, que se ha enamorado de su compañero Kento Hinode, que no parece percatarse de su presencia. Sin embargo, mientras esconde un secreto que no puede contar a nadie, Muge descubre una máscara con la que se transforma en un gato llamado Tarō. Esto le permite acercarse a Kento, pero también corre el riesgo de no poder volver a transformarse en humana de nuevo. ¿Le valdrá la pena? ',
        '2024-03-12'),
       (53, 34, 14, 'La máscara del Zorro (Martin Campbell, 1998)',
        'Antonio Banderas se convirtió en uno de los héroes más famosos de la cultura popular, El Zorro, y nos regaló así esta fantástica película de aventuras en la California de mediados del siglo XIX. Con Anthony Hopkins y Catherine Zeta-Jones en el reparto, esta película de Martin Campbell sigue al protagonista desde que es un pobre diablo buscando vengar a su hermano hasta que se convierte en un guerrero por los derechos de los más desfavorecidos. ',
        '2024-03-12'),
       (54, 34, 14, 'La búsqueda (Jon Turteltaub, 2004)',
        '¿Nicolas Cage encontrando un mapa secreto mojando con limón la Declaración de Independencia de los Estados Unidos? Icónico. Esta película de Walt Disney Pictures puede parecer absurda a ratos, pero es un entretenimiento de aventuras de primer nivel, que sigue a un equipo decidido a encontrar el legendario tesoro de los Caballeros Templarios. Con Diane Kruger, Jon Voight, Harvey Keitel y Sean Bean en el reparto, tuvo tanto éxito entre el público que hasta tuvo secuela. ',
        '2024-03-12'),
       (55, 34, 14, 'Stardust (Matthew Vaughn, 2007)',
        'Quizás haya quien todavía no conozca una de las mejores películas de aventuras de los últimos años, y no pasa nada: te presentamos \'Stardust\', adaptación de la novela de Neil Gaiman y una aventura divertida, emocionante, romántica y original para creer en el poder de la fantasía. Con un reparto espectacular (Charlie Cox, Claire Danes, Michelle Pfeiffer, Robert De Niro, Sienna Miller, Ricky Gervais, Mark Strong, Ben Barnes... ¡Hasta Peter O\'Toole!), es una joya que muchos aún tienen por descubrir. ',
        '2024-03-12'),
       (56, 34, 14, 'La saga \'Harry Potter\'',
        'Esta serie de películas basadas en las novelas de J.K. Rowling son la definición misma de cine de aventuras: unos protagonistas heroicos, una lucha entre el bien y el mal, situaciones de peligro con mucha tensión, aliados y sorpresas, batallas a vida o muerte... Todo eso y más se expande a través de ocho películas protagonizadas por Daniel Radcliffe, Rupert Grint y Emma Watson, y que se han convertido en un auténtico fenómeno de público. Por algo ha habido tanto revuelo con la reunión de Harry Potter, \'Regreso a Hogwarts\'',
        '2024-03-12'),
       (57, 34, 15, 'Dune (Dennis Villeneuve, 2021)',
        'Reparto: Timothée Chalamet, Rebecca Ferguson, Oscar Isaac, Josh Brolin, Jason Momoa, Stellan Skarsgård, Zendaya, Javier Bardem\r\n\r\nCon \'Dune: Parte 2\' ya en camino, esta película se ha confirmado como una de las muestras de ciencia ficción más exitosas y visualmente espectaculares de los últimos años. Una de las mejores películas de 2021, \'Dune\' de Denis Villeneuve demostró que se puede tener éxito adaptando la novela de Frank Herbert, esquivando así el fracaso de \'Dune\' de David Lynch en los años 80. A su favor, la perspectiva histórica, un reparto lleno de estrellas, efectos visuales de infarto y dividir la historia en dos partes. La crítica de \'Dune\' no pudo ser más entusiasta. ',
        '2024-03-12'),
       (58, 34, 15, 'Cielo de medianoche (George Clooney, 2020',
        'Reparto: George Clooney, Felicity Jones, David Oyelowo, Demian Bichir, Kyle Chandler, Tiffany Boone, Caoilinn Springall, Ethan Peck\r\n\r\nQuizás no sea la mejor película de esta lista de un centenar de títulos, pero este nuevo trabajo de George Clooney como director y protagonista plantea ideas interesantes y lanza un mensaje más dirigido a nuestro presente que al futuro próximo. Es, eso sí, una de las mejores películas de Netflix. Adaptación de la novela homónima y de vocación ecologista de Lily Brooks-Dalton, la película se mueve entre una nave en el espacio que busca un nuevo asentamiento para el ser humano y una estación superviviente en una Tierra devastada. Además, podría ser una delas mejores películas de George Clooney. ',
        '2024-03-12'),
       (59, 34, 15, 'Próxima (Alice Winocour, 2019)',
        'Reparto: Eva Green, Matt Dillon, Lars Eidinger, Sandra Hüller, Jan Oliver Schroeder, Nancy Tate, Marc Fischer\r\n\r\nNo todo en el espacio es épica: también hay historias humanas. Y en el caso de esta notable película de Alice Winocour, hay una historia de maternidad y sacrificio. La directora relata de forma realista y alejándose de los mitos y leyendas el duro entrenamiento físico y psicológico de una astronauta, que además tiene que dejar atrás a niña de 7 años. Muestra el machismo de un sector masculinizado y plantea los problemas que muy habitualmente las mujeres se enfrentan entre su vida personal y profesional. ',
        '2024-03-12'),
       (60, 34, 15, 'Ad Astra (James Gray, 2019)',
        'Reparto: Brad Pitt, Tommy Lee Jones, Donald Sutherland, Ruth Negga, Liv Tyler\r\n\r\nGray encontró en la infinita negrura del espacio un nuevo lugar en el que verse completamente solo y, como ya es habitual en su carrera, dio un salto de fe a un nuevo género como vehículo para encontrar sentido al conflicto que lleva descifrando desde hace más de veinte años. Con Brad Pitt como protagonista absoluto, las dudas, miedos y anhelos de todos sus personajes principales se ven forzadamente enfrentados a un paisaje frío y crudo en el que, además de buscar a un padre ausente (literal y figuradamente), se deberán desfacer los diferentes entuertos que convierten \'Ad Astra\' no solo en una introspectiva búsqueda del ser mediante lazos sanguíneos, sino en toda una aventura espacial con estrella hollywoodense a la cabeza. ',
        '2024-03-12'),
       (61, 34, 16, 'Adele y el misterio de la momia (2010)',
        'Dirección: Luc Besson\r\nReparto: Louise Bourgoin, Mathieu Amalric, Gilles Lellouche, Jean-Paul Rouve\r\n\r\nCrítica de \'Adele y el misterio de la momia\'\r\n\r\n\"Como siempre, París es escenario de misterios y horrores que solo sirven para cerrar la inocencia del siglo XIX y enfrentarla al racional siglo XX. Besson vuelve a recobrar su excelente pulso, aunque en algunas secuencias se deja llevar por una mímesis innecesaria del tono aventurero de Stephen Sommers. Filmada con la ligereza de un vodevil sufragista y el encanto démodé de Larry Cohen, la película es un carrusel vintage de monstruos, museos, lencería y fantasía desbocada\"\r\n\r\n¿Por qué hay que verla? Porque es una de las mejores películas de Luc Besson, que habitualmente prefiere la ciencia ficción y la acción al fantástico',
        '2024-03-12'),
       (62, 34, 16, 'Solomon Kane (2009)',
        'Dirección: Michael J. Bassett\r\nReparto: James Purefoy, Pete Postlethwaite, Max von Sydow, Jason Flemyng, Rachel Hurd-Wood, Mackenzie Crook\r\n\r\nCrítica de \'Solomon Kane\'\r\n\r\n\"Que nadie se asuste, este tipo estirado es igual de habilidoso con la espada que cualquier bárbaro hyborio, y su destino es también luchar contra las fuerzas del Mal. Sin echar mano de los relatos, Michael J. Bassett ofrece una resultona adaptación, respetando el espíritu de Howard, aunque con cierta tentación de pretenciosidad\"\r\n\r\n¿Por qué hay que verla? Porque James Purefoy era el actor que necesitaba la estética pulp y cómic de la película.',
        '2024-03-12'),
       (63, 34, 16, 'Furia de titanes (1981)',
        'Dirección: Desmond Davis\r\nReparto: Harry Hamlin, Laurence Olivier, Ursula Andress, Maggie Smith, Burgess Meredith, Claire Bloom, Judi Bowker\r\n\r\nSinopsis\r\n\r\nMolestas por los devaneos de Zeus, cuatro diosas centran su venganza en su hijo Perseo y ponen todo tipo de impedimentos para que éste no consiga conquistar a la hermosa Andrómeda. Sin embargo, el hijo del dios de los dioses cuenta con la ayuda de Pegaso y Bubo. Gracias al caballo alado y al búho, Perseo logra superar todos los obstáculos que le separan de su amada. Tres brujas diabólicas y varios monstruos tratarán de frustrar su amor por Andrómeda.\r\n\r\n¿Por qué hay que verla? Porque fue el \'God of War\' de los ochenta.',
        '2024-03-12'),
       (64, 34, 16, 'El reino prohibido (2008)',
        'Dirección: Rob Minkoff\r\nReparto: Jackie Chan, Jet Li, Yifei Liu, Bingbing Li\r\n\r\nSinopsis\r\n\r\nJason (Michael Angarano), un adolescente de Boston obsesionado con el kung fú, viaja en el tiempo hasta la China ancestral como única esperanza del Rey Mono, convertido en piedra por una maldición. Para sortear los mil y un peligros que le esperan, el chico tendrá la ayuda de los misteriosos Lu Yuan (Jackie Chan) y el Monje Silencioso (Jet Li).\r\n\r\n¿Por qué hay que verla? Porque no nos podemos resistir a la combinación de Jet Li y Jackie Chan.',
        '2024-03-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios`
(
    `id`        int          NOT NULL AUTO_INCREMENT,
    `nombre`    varchar(100) NOT NULL,
    `apellidos` varchar(100) NOT NULL,
    `email`     varchar(255) NOT NULL,
    `password`  varchar(255) NOT NULL,
    `fecha`     date         NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_email` (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 39
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `fecha`)
VALUES (34, 'rbo', 'rbo', 'rbo@rbo.com', '$2y$05$wmjJTwOzNGPcBrt4VkzafenW/IwbtvnW7y.D/8E0r8CfcfAdfEoua', '2024-03-06'),
       (38, 'Maickol', 'Velasco', 'Maickol@velasco.com', '$2y$05$5C6vOgc4pl458hqED12Kceaw9bNHuIXbfoGML33PVQNW8ZBCoslou',
        '2024-03-12');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
    ADD CONSTRAINT `fk_entrada_usuario` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`),
    ADD CONSTRAINT `fk_entradas_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
