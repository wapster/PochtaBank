<?php
set_time_limit(0);
include 'simple_html_dom.php';

// $goroda = ['Абакан', 'Абинск'];
$goroda = file( '1.txt' );

foreach ($goroda as $gorod) {
    $url = "https://ru.wikipedia.org/wiki/" . $gorod;
    $headers = get_headers($url, 1);
    if ( $headers[1] == 'HTTP/1.1 404 Not Found') {
        echo $gorod . " - HTTP/1.1 404 Not Found</br>";
    } else {
    $html = file_get_html($url);
    if($html && is_object($html)) {
        $arr = $html->find('table tr td', 0);
        $a = $arr->plaintext;
        $html->clear();
        unset($html);
        $str_start = explode('Население', $a );
        $str_end = @explode('человек (2', $str_start[1]);
        echo $gorod . " " . $str_end[0] . "</br>";
    }
    }
}
