<?php

// Configurações Globais //
require_once ('_config.php');


// Configurações da Página //

// Título da Página
$T['pageTitle'] = 'Página Modelo';

// Css da Página
$T['pageCSS'] = '/css/template.css';

// JavaScript da Página
$T['pageJS'] = '/js/template.js';

// Cabeçalho da Página //
require_once('_header.php');

?>

<!-- Conteúdo principal -->
<article>

<h2>Título</h2>
<p>InfraConnect</p>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic repellendus inventore nesciunt
    voluptatum consectetur perspiciatis odio dolor quod modi deserunt quam cum itaque, accusamus
    corrupti a laborum nulla. Natus, officiis.</p>
<img src="https://picsum.photos/400/300" class="flush" alt="Imagem aleatória">
<p>Espero que o código esteja arrumadinho</p>
<h4>Links</h4>
<ul>
    <li><a href="https://github.com/BrunoTheRipper">GitHub do Bruno Cardozo</a></li>
</ul>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo molestiae doloremque quidem officia,
    magnam nobis saepe quibusdam iste hic repellat. Ut sint possimus dolores eius, ipsa itaque
    consectetur aperiam a!</p>

</article>

<!----------------------------- Barra Lateral -------------------------------->
<aside>
<h3>Barra lateral</h3>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
<ul>
<li><a href="/">Link 1</a></li>
<li><a href="/">Link 2</a></li>
<li><a href="/">Link 3</a></li>
<li><a href="/">Link 4</a></li>
</ul>
</aside>

<?php

// Rodapé da Página //
require_once ('_footer.php');