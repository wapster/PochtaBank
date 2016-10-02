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

function parser_simple_html($url, $town){
        $html = str_get_html(get_result($url));
        $status_200 =  http_response_code();

        if ($status_200 == 200) {
            $arr = $html->find('table tr td', 0);
            $a = $arr->plaintext;
            $html->clear();
            unset($html);
            $str_start = explode('Население', $a );
            $str_end = @explode('человек (2', $str_start[1]);
            echo $town . " " . $str_end[0] . "<br>";
        } else {
            echo "ошибка";
            $html->clear();
            unset($html);
        }
}

$town = 'Абакан';
$url = 'https://ru.wikipedia.org/wiki/' . $town;
parser_simple_html($url, $town);

// $status_200 =  http_response_code();
// if ( $status_200 ) {
//   echo "ok";
// } else {
//   echo "bad";
// }
