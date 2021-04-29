<?php

// Configurações Globais //
require_once ('_config.php');

/***** Lista de artigos *****/

    // Database //
    $sql = "
      SELECT art_id, art_image, art_title, art_intro 
      FROM articles
      WHERE art_status = 'ativo' AND art_date <= NOW()
      ORDER BY art_date DESC;";
    $res = $conn->query($sql);

// Prepara a 'view' dos artigos //
$articles = '';

// Obtém uma linha por vez //
   $articles .= <<<HTML
      
<article>
    <h2>Nossa Empresa</h2>
   <p>Escrevemos artigos para quem gosta de ler e aprender mais sobre a área de tecnologia e redes no geral.</p>
    <img src="https://tpinformatica.com.br/site/wp-content/uploads/2020/03/rede-computadores-artigo.jpg" class="flush" alt="Imagem aleatória">
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic repellendus inventore nesciunt voluptatum consectetur perspiciatis odio dolor quod modi deserunt quam cum itaque, accusamus corrupti a laborum nulla. Natus, officiis.</p>
 <h4>Links</h4>
   <ul>
      <li><a href="https://github.com/BrunoTheRipper">GitHub do Dono</a></li>
</ul>

</article>
HTML;


////////////////////////////////////////////////// Configurações da Página ///////////////////////////////////////////////////

// Título da Página //
$T['pageTitle'] = 'Intranet';

// CSS da Página //
$T['pageCSS'] = '/css/index.css';

// JavaScript da Página //
$T['pageJS'] = '/js/index.js';

// Cabeçalho da Página //
require_once('_header.php');

?>

<!-- Conteúdo principal -->
<article>
  <h2>Sobre:</h2>
  <small>Saiba quem somos!</small>
  <?php echo $articles ?>    
</article>

<!-- Barra lateral -->
<aside>
  <h3>Artigos Futuros</h3>
  <p>(Em breve)</p>
    <ul>
      <li><a href="/">Cabos de Rede</a></li>
      <li><a href="/">Switches</a></li>
      <li><a href="/">Access Point</a></li>
      <li><a href="/">Roteadores</a></li>
    </ul>
</aside>

<?php

// Rodapé da página //
require_once ('_footer.php');