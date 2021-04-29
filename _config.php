<?php

  //************************//
 //  Configuração do Site  //
//************************//

// PHP em UTF-8 //
header('Content-Type: text/html; charset=utf-8');

// Conexão com MySQL //
if($_SERVER['SERVER_NAME'] == 'localhost') {

    // XAMPP //
    $server = 'localhost';  // Servidor //
    $user = 'root';         // Usuário //
    $password = '';         // Senha do usuário //
    $database = 'infraconnect';   // Nome da base de dados //
} else {

    // Provedor de hospedagem //
    $server = '';           // Servidor //
    $user = '';             // Usuário //
    $password = '';         // Senha do usuário //
    $database = '';         // Nome da base de dados //
}
$conn = new mysqli($server, $user, $password, $database);

// Em caso de erro //
if ($conn->connect_error) die("Falha de conexão com o banco e dados: " . $conn->connect_error);

// Transações MySQL em UTF-8 //
$conn->query("SET NAMES 'utf8'");
$conn->query('SET character_set_connection=utf8');
$conn->query('SET character_set_client=utf8');
$conn->query('SET character_set_results=utf8');

// MySQL com nomes de dias da semana e meses em português //
$conn->query('SET GLOBAL lc_time_names = pt_BR');
$conn->query('SET lc_time_names = pt_BR');

// Variáveis das Configurações do Site //
$T = array (
    'siteName' => 'InfraConnect',        // Nome do site //
    'siteSlogan' => 'Conectando as Redes',         // Slogan do site //
    'siteLogo' => '/img/Logo_de_la_serie_Redes.png',    // Logotipo do site //
    'favicon' => '/img/Logo_de_la_serie_Redes.png',     // Ícone de favoritos //
    'templateCSS' => '/css/global.css', // CSS do template  //
    'pageTitle' => 'Intranet',          // <title> da página //
    'pageCSS' => '',                    // CSS da página //
    'pageJS' => '',                     // JavaScript da página //
    'menuSocial' => array (             // Links para redes sociais //
        'facebook' => 'https://facebook.com/',
        'youtube' => 'https://youtube.com/',
        'github' => 'https://github.com/BrunoTherRipper',
        'linkedin' => 'https://linkedin.com/'
    )
);

?>