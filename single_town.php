<?php
set_time_limit(0);
include 'simple_html_dom.php';

function get_result($url){

    $curl = curl_init();
    $headers = [
        'User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0',
        'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
        'Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3',
        'Connection: keep-alive'
    ];

    $cookie = dirname(__DIR__)."/cookie.txt";
    curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);
    curl_setopt($curl,CURLOPT_FOLLOWLOCATION,1);
    curl_setopt($curl,CURLOPT_URL,$url);
    curl_setopt($curl,CURLOPT_HTTPHEADER,$headers);
    curl_setopt($curl,CURLOPT_SSL_VERIFYPEER,false);
    curl_setopt($curl,CURLOPT_SSL_VERIFYHOST,false);
    curl_setopt($curl,CURLOPT_COOKIEFILE,$cookie);
    curl_setopt($curl,CURLOPT_COOKIEJAR,$cookie);
    $res = curl_exec($curl);

    return $res;
}

function parser_simple_html($url, $gorod){

        $headers = @get_headers($url, 1);
        if ( $headers[1] == 'HTTP/1.1 404 Not Found') {
            echo $gorod . " - HTTP/1.1 404 Not Found</br>";
            // $html->clear();
            // unset($html);
        } else {
            $html = str_get_html(get_result($url));
            if($html && is_object($html)) {
                $arr = $html->find('.infobox tr td', 0);
                $a = $arr->plaintext;
                $html->clear();
                unset($html);
                $str_start = explode('Население', $a );
                $str_end = @explode('человек (2', $str_start[1]);
                echo $gorod . " " . $str_end[0] . "</br>";
            } else {
                echo "ошибка. Город: $gorod</br>";
            }
        }
}

// $goroda = '1.txt';
// $goroda = ['Абакан', 'Казань', 'Владивосток','Мурманск', 'алоалоапокkj'];
$goroda = ['Абакан', 'Абинск', 'Адлер', 'Азов', 'Аксай', 'Алапаевск', 'Алатырь', 'Алейск', 'Александров', 'Алексеевка', 'Алексеевское', 'Алексин', 'Альметьевск'];
// $gorod = 'Мурманск';

foreach ($goroda as $gorod) {
    $url = 'https://ru.wikipedia.org/wiki/' . $gorod;
    parser_simple_html($url, $gorod);
}

// $x = get_headers($url,1);
// echo "<pre>";
// print_r($x[1]);
// echo "</pre>";
