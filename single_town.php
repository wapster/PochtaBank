<?php
set_time_limit(0);
include 'simple_html_dom.php';

// $goroda = ['Абакан', 'Абинск'];
$goroda = file( 'output.txt' );

foreach ($goroda as $gorod) {
    $html = file_get_html("https://ru.wikipedia.org/wiki/" . $gorod);
    $arr = $html->find('table tr td', 0);
    if ($arr !== '') {
        $a = $arr->plaintext;
        $html->clear();
        unset($html);
        $str_start = explode('Население', $a );
        $str_end = @explode('человек (2', $str_start[1]);
        echo $gorod . " " . $str_end[0] . "<br>";
    } else echo "страница для города $gorod не найдена";
}
