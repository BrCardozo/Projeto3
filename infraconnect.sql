-- Banco de dados da 'InfraConnect' --
-- NÃO EXECUTAR APÓS DEPLOY DO SITE (PRODUÇÃO) --

-- Apaga o banco de dados caso exista --
DROP DATABASE IF EXISTS infraconnect;

-- Cria database novamente com buscas 'case insensitive' --
CREATE DATABASE infraconnect CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Selecionar o database --
USE infraconnect;

-- Cria tabela com autores dos artigos --
CREATE TABLE authors (
    aut_id INT PRIMARY KEY AUTO_INCREMENT,
    aut_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    aut_name VARCHAR(127) NOT NULL, 
    aut_image VARCHAR(255),
    aut_link VARCHAR(255),
    aut_email VARCHAR(255) NOT NULL,
    aut_status ENUM('inativo', 'ativo') DEFAULT 'ativo'
);

-- Inserir autores --
INSERT INTO authors (
    aut_id,
    aut_name,
    aut_image,
    aut_link,
    aut_email
) VALUES 
(
    '1',
    'Bruno Fraga',
    'https://digitalpress.fra1.cdn.digitaloceanspaces.com/z624tfb/2021/02/bruno-fraga.jpg',
    'http://www.tdi.com/',
    'bruno@fraga.com'
),
(
    '2',
    'Edward Alderson',
    'https://i.pinimg.com/originals/2c/48/68/2c4868d648cb598e3cf84e6289c507aa.jpg',
    'http://www.robot.net/',
    'mr@robot.net'
),
(
    '3',
    'Barbara Streisand',
    'https://2.bp.blogspot.com/-mA6heOHY5Fw/V3VmnVu3EbI/AAAAAAAAIJ8/FiivpNzkQsUO4pcqVNFPi3NwwuabNKYBACLcB/s1600/Barbra_Streisand_-_1966.jpg',
    'http://www.barb.net/',
    'barb@streisand.net'
);

-- Cria tabela com Artigos --
CREATE TABLE articles (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    art_image VARCHAR(255) NOT NULL,
    art_title VARCHAR(127) NOT NULL,
    art_intro VARCHAR(255) NOT NULL,
    art_text LONGTEXT NOT NULL,
    art_author INT NOT NULL,
    art_status ENUM ('inativo', 'ativo') DEFAULT 'ativo',
    FOREIGN KEY (art_author) REFERENCES authors (aut_id)
);

-- Insere artigos --
INSERT INTO articles (
    art_date,
    art_image,
    art_title,
    art_intro,
    art_text,
    art_author
) VALUES  
(
    '2021-03-10 10:10:00',
    'https://img.portalgsti.com.br/64a0dFc5GrGKH66GfnCl32SXtm8=/670x440/https://www.portalgsti.com.br/media/uploads/course/bruno-wanderley/2017/08/21/redes-wireless.png',
    'Rede Wireless',
    'Aprenda um pouco sobre as Redes sem fio',
    '<p>Uma rede sem fio é uma infraestrutura das comunicações sem fio que permite a transmissão de dados e informações sem a necessidade do uso de cabos – sejam eles telefónicos, coaxiais ou óticos. Isso é possível graças ao uso, por exemplo, de equipamentos de radiofrequência, de comunicações via infravermelho etc.</p><p>Essa infraestrutura tecnológica inclui desde o uso de transceptores de rádio (como walkie-talkies) até satélites artificiais no espaço sideral. Seu uso mais comum é em redes de computadores, servindo como meio de acesso à internet através de locais remotos como um escritório, um bar, um aeroporto, um parque, em casa etc.</p><img class="flush" src="https://lh3.googleusercontent.com/proxy/1O4JKlvzIohDuRWjyq3dTP1j_TzfoBEn2pEMknbgBlZ6KOjCZKv9we-1fP40lcGxaSo1Ps_INfKpWmDuqPI16yCIdrFaFgTYXqqqHDoariDGgnklXdsQxTzH0rPefSZk_kTGF8PuUvwtJpaq3nqdAac2cRvOv-vmKbyjSV4" alt="imagem aleatória"><h4>Lista de links:</h4><ul><li><a href="http://cardozo.net/">Site do Dono</a></li><li><a href="http://github.com/BrunoTheRipper">GitHub do Dono</a></li></ul><p>As conexões de dados sem fio usadas na computação móvel assumem três formas gerais. [5] O serviço de dados celular usa as tecnologias GSM, CDMA ou GPRS, redes 3G como W-CDMA, EDGE ou CDMA2000. [6] [1] e, mais recentemente, redes 4G, como LTE LTE-Advanced. [7] Essas redes geralmente estão disponíveis dentro do alcance das torres de celular comerciais.As conexões Wi-Fi oferecem maior desempenho, [8]podem estar em uma rede comercial privada ou acessadas por meio de pontos de acesso públicos, e ter um alcance típico de 100 pés em ambientes internos e até 1000 pés em ambientes externos.</p>',
    '2'
),
(
    '2021-03-13 10:10:00',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/NetworkTopologies.png/471px-NetworkTopologies.png',
    'Topologia de Rede',
    'Que tal aprender sobre as Topologias de Rede?',
    '<p>A topologia de rede é o canal no qual o meio de rede está conectado aos computadores e outros componentes de uma rede de computadores. Essencialmente, é a estrutura topológica da rede, e pode ser descrito física ou logicamente. Há várias formas nas quais se podem organizar a interligação entre cada um dos nós da rede</p><img class="flush" src="https://www.researchgate.net/profile/Alexandre-Mello-4/publication/261511046/figure/fig1/AS:339493870686211@1457953054118/Figura-5-Topologias-de-rede-basicas-No-presente-trabalho-sera-utilizado-a-topologia-de.png" alt="imagem aleatória"><p>A topologia em estrela reduz a probabilidade de uma falha de rede, conectando todos os nós periféricos (computadores, etc) a um nó central. Quando a topologia em estrela física é aplicada a uma rede lógica em Bus, tais como Ethernet , este nó central (tradicionalmente um hub) retransmite todas as transmissões recebidas a partir de qualquer nó periférico para todos os nós periféricos na rede, incluindo por vezes o nó de origem. Todos nós periféricos podem, assim, comunicar-se com todos os outros, transmitindo a, e recebendo, o nó central, apenas. A falha de uma linha de transmissão ligando qualquer nó periférico para o nó central irá resultar no isolamento desse nó periférico de todos os outros, mas os nós periféricos restantes não serão afetados. No entanto, a desvantagem é que a falha do nó central fará com que todos os nós periféricos falhem também.</p><h4>Lista de links:</h4><ul><li><a href="">Site do Dono</a></li><li><a href="http://github.com/BrunoTheRipper">GitHub do Dono</a></li></ul><p>Numa malha de topologia (isto é, uma malha parcialmente conectada topologia), há pelo menos dois nós com dois ou mais caminhos entre eles para fornecer caminhos redundantes a serem utilizados no caso de a ligação proporcionando um dos caminhos de falha. Esta descentralização é frequentemente utilizado com vantagem para compensar a desvantagem de um único ponto de falha, que está presente quando se utiliza um único dispositivo como um nó central (por exemplo, em redes de estrela e árvores). Um tipo especial de malha, limitando o número de saltos entre dois nós, é um hipercubo. O número de grafos arbitrários em redes mesh torna mais difícil de conceber e implementar, mas a sua natureza descentralizada torna muito útil. Isto é semelhante em alguns aspectos a um rede de pontos, em que uma topologia linear ou anel é utilizado para ligar sistemas em múltiplas direcções. Um anel multi-dimensional tem uma topologia toroidal , por exemplo.</p>',
    '1'
);

INSERT INTO articles (
    art_date,
    art_image,
    art_title,
    art_intro,
    art_text,
    art_author
) VALUES 
(
    '2021-03-13 11:42:00',
    'https://overbr.com.br/wp-content/uploads/2021/02/dia-da-internet-segura.png',
    'Segurança da Informação',
    'Conheça um pouco desse universo!',
    '<p>A segurança da informação está diretamente relacionada com proteção de um conjunto de informações, no sentido de preservar o valor que possuem para um indivíduo ou uma organização. São propriedades básicas da segurança da informação: confidencialidade, integridade, disponibilidade, autenticidade e legalidade. </p><p>Todo sistema de computação necessita de um sistema para proteção de arquivos. Este sistema é um conjunto de regras que garantem que a informação não seja lida, ou modificada por quem não tem permissão.</p><img class="flush" src="https://www.revistaferramental.com.br/admin/images/artigos/seguranca-da-informacao.jpg" alt="imagem aleatória"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates incidunt officia id doloribus dicta saepe atque ab ullam nisi inventore quas libero, rem a eveniet assumenda ex quibusdam illo maiores?</p><h4>Lista de links:</h4><ul><li><a href="http://cardozo.net/">Site do Dono</a></li><li><a href="http://github.com/BrunoTheRipper">GitHub do Dono</a></li></ul><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam, exercitationem commodi!</p><p>Depois de identificado o potencial de ataque, as organizações têm que decidir o nível de segurança a estabelecer para uma rede ou sistema os recursos físicos e lógicos a necessitar de proteção. No nível de segurança devem ser quantificados os custos associados aos ataques e os associados à implementação de mecanismos de proteção para minimizar a probabilidade de ocorrência de um ataque.</p>',
    '3'
),
(
    '2021-03-14 10:10:00',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Wireshark_icon.svg/1200px-Wireshark_icon.svg.png',
    'Wireshark: A ferramenta',
    'Aprenda para que serve a ferramenta Wireshark',
    '<p>O Wireshark é um programa que analisa o tráfego de rede, e o organiza por protocolos. As funcionalidades do Wireshark são parecidas com o tcpdump mas com uma interface gráfica, com mais informação e com a possibilidade da utilização de filtros</p><img class="flush" src="https://www.wireshark.org/docs/wsug_html_chunked/wsug_graphics/ws-main.png" alt="imagem aleatória"><p>Através dessa aplicação é possível controlar o tráfego de uma rede e monitorar a entrada e saída de dados do computador, em diferentes protocolos, ou da rede à qual o computador está ligado.</p><h4>Lista de links:</h4><ul><li><a href="http://cardozo.net/">Site do Dono</a></li><li><a href="http://github.com/BrunoTheRipper">GitHub do Dono</a></li></ul><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam, exercitationem commodi!</p><p>Também é possível controlar o tráfego de um determinado dispositivo de rede numa máquina que pode ter um ou mais desses dispositivos. Se você estiver a rede local, com micros ligados através de um hub ou switch, outro usuário pode usar o Wireshark para capturar todas as suas transmissões.</p>',
    '2'
);

-- Cria tabela para contatos --
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message LONGTEXT NOT NULL,
    status ENUM('recebida', 'lida', 'respondida', 'apagada') DEFAULT 'recebida'
);

-- Cria a tabela pras configurações do site --
CREATE TABLE config (
    id INT PRIMARY KEY AUTO_INCREMENT,
    var VARCHAR(63) NOT NULL,
    val LONGTEXT NOT NULL
);

-- Insere as configurações --
INSERT INTO config (var, val) VALUES
('pageTitle', ''),
('pageCSS', ''),
('pageJS', ''),
('siteName', 'InfraConnect'),
('siteFullName', 'InfraConnect'),
('siteSlogan', 'Conectando as Redes.'),
('siteLogo', '/img/logo02.png'),
('favicon', '/img/logo02.png'),
('templateCSS', '/css/global.css'),
('social_github', 'http://github.com/BrunoTheRipper'),
('social_youtube', 'http://youtube.com/'),
('social_linkedin', 'http://linkedin.com/'),
('social_facebook', 'http://facebook.com/'),
('siteOwner', 'Bruno Cardozo'),
('siteOwnerEmail', 'brunocardozocontato@gmail.com'),
('siteYear', '2021'),
('meta_author', 'Bruno Cardozo'),
('meta_description', 'Site sobre Redes e Tecnologia.'),
('meta_keywords', 'rede, segurança, tecnologia, wireless, cabo'),
('meta_copyright', 'Bruno Cardozo © 2021 ')
;