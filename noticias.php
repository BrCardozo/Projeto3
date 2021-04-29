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
 while($art = $res->fetch_assoc()):
   $articles .= <<<HTML

     <div class="article" data-link="/view.php?{$art['art_id']}">
      <img src="{$art['art_image']}" alt="{$art['art_title']}">
 <div>
  <h4>{$art['art_title']}</h4>
  <small>{$art['art_intro']}</small>
 </div>
      </div>
HTML;

endwhile;

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
  <h2>Artigos Recentes</h2>
  <small>Boa Leitura!</small>
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