<?php
/**
 * Plugin Name: Meu Plugin
 */

function my_content_footer( $content ) {
    if ( is_single( )) {
        return $content . '<p>Bem-vindo ao blog Anti-Windows!</p>';
        return $content . '<p>Obrigado pela sua visita! </p>';
    }
}
add_filter('the_content', 'my_content_footer');
