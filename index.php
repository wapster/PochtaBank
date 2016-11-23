<style media="screen">
    .ok {
        color: green;
    }

    .error {
        color: red;
    }
</style>

<form action="" method="post">

<!-- Город:
<select name="gorod">
    <option name="null" value="0"> - - - - -  </option> -->
    <?php

        require_once 'connect.php';
        $countGoroda = $pdo->query("SELECT DISTINCT count(*) FROM `goroda`")->fetchColumn();
        $countAddsOffice = $pdo->query("SELECT count(DISTINCT  `gorod_id`) FROM `office`")->fetchColumn();
        $stmt = $pdo->query("SELECT * FROM `goroda_draft`");
        $pdo = NULL;
        $list_town_not_added = [];
        while ($row = $stmt->fetch()) {
            $list_town_not_added[$row['id']] = trim($row['gorod']);
            // echo "<option value='" . $row['id']  . "'>" . $row['gorod'] . "</option>";
        }
    ?>
<!-- </select> -->

<p>
    <!-- добавлено городов: <?php //echo $countAddsOffice; ?> из <?php //echo $countGoroda; ?> -->
    <!-- <br>осталось <?php //echo ($countGoroda - $countAddsOffice); ?> -->

    <p>
        <input type="submit" name="submit" value="Добавить">
    </p>

</p>

</form>

<?php
$dir = 'txt';
$scanned_directory = array_diff( scandir($dir), array('..', '.') );
echo "<pre>";
print_r( $scanned_directory );
echo "</pre>";

if ( !empty($_POST['submit']) ) {

    foreach ($scanned_directory as $town_name) {
        $town_folder = $dir . '/' . $town_name;

        // Проверяем является ли имя файла директорией
        if ( is_dir($town_folder) ) {

            if ( in_array($town_name, $list_town_not_added) ) {
                // Колв-во обрабатываемых папок(городов)
                $count_folder = 0;

                // Определяем id города
                $gorod_id = array_search( $town_name, $list_town_not_added );

                // Получаем список файлов в папке
                $list_files = array_diff( scandir($town_folder), array('..', '.') );

                if ( count($list_files) == 0 ) {
                    echo "<div class='error'>Папка $town_name пуста</div>";
                } else {
                    require 'connect.php';

                    // ОБРАБАТЫВАЕМ БАНКОМАТЫ
                    $count_atms = 0;
                    if ( in_array('atms.txt', $list_files) ) {

                        $file_atms = file_get_contents( $town_folder . '/atms.txt' );
                        $atms_array = explode("\n\n", $file_atms);

                        $stmt = $pdo->prepare("INSERT INTO `atms` (gorod_id, adress, whose_atm_id, mode, services)
                        VALUES (:gorod_id, :adress, :whose_atm_id, :mode, :service_id)");

                        foreach ($atms_array as $atms) {

                            $atms = explode( "\n", $atms );

                            $end = end($atms);
                            if ($end == '') {
                                array_pop($atms);
                            }

                            list( $adress, $whose_atm, $mode, $service) = $atms;

                            if ($whose_atm == 'Банкомат «Почта Банка»') {
                                $whose_atm_id = 1;
                            } elseif ($whose_atm == 'Банкомат ВТБ24') {
                                $whose_atm_id = 2;
                            } else $whose_atm_id = 0;

                            // прием.выдача наличных
                            if ($service == 'прием наличных') {
                                $service_id = 1;
                            } elseif ($service == 'выдача наличных') {
                                $service_id = 2;
                            } elseif ($service == 'прием/выдача наличных') {
                                $service_id = 3;
                            } else $service_id = 0;

                            $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
                            $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
                            $stmt->bindParam( ':whose_atm_id', $whose_atm_id, PDO::PARAM_INT);
                            $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
                            $stmt->bindParam( ':service_id', $service_id, PDO::PARAM_INT);
                            $stmt->execute();

                        $count_atms++;
                        $atms_message = '';
                        }
                    } else $atms_message = "<div class='error'>Файл atms.txt не доступен</div>";

                    // ОБРАБАТЫВАЕМ ОФИСЫ\ОТДЕЛЕНИЯ
                    $count_office = 0;
                    if ( in_array('office.txt', $list_files) ) {
                        $stmt = $pdo->prepare("INSERT INTO `office` (gorod_id, office_feature_id, adress, comment, location, mode) VALUES (:gorod_id, :office_feature_id, :adress, :comment, :location, :mode)");

                        $file_office = file_get_contents( $town_folder . '/office.txt' );
                        $office_array = explode("\n\n", $file_office);

                        foreach ($office_array as $office) {
                            $office = explode( "\n", $office );
                            $end = end($office);
                            if ($end == '') {
                                array_pop($office);
                            }

                            $count = count($office);
                            if ($count < 5) {
                                $comment = '';
                                array_splice($office, 2, 0, $comment);
                            }

                            list($office_feature, $adress, $comment, $location, $mode) = $office;

                            if ($office_feature == '«Почтовый Экспресс» и кредиты на индивидуальных условиях в точках партнеров') {
                                $office_feature_id = 1;
                            } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почта Банка)') {
                                $office_feature_id = 2;
                            } elseif ($office_feature == 'Клиентский центр') {
                                $office_feature_id = 3;
                            } elseif ($office_feature == 'Стойка продаж') {
                                $office_feature_id = 4;
                            } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почты России)') {
                                $office_feature_id = 5;
                            } else $office_feature_id = 0;

                            $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
                            $stmt->bindParam( ':office_feature_id', $office_feature_id, PDO::PARAM_INT);
                            $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
                            $stmt->bindParam( ':comment', $comment, PDO::PARAM_STR);
                            $stmt->bindParam( ':location', $location, PDO::PARAM_STR);
                            $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
                            $stmt->execute();

                            $count_office++;
                            $office_message = '';
                        }
                    } else $office_message = "<div class='error'>Файл office.txt не доступен</div>";

                echo "<p class='ok'><b>Город: $town_name (банкоматы: $count_atms; офисы: $count_office)</b>";
                if ($office_message != '') {
                    echo "<ul><li>$office_message</li></ul>";
                }
                if ($atms_message != ''){
                    echo "<ul><li>$atms_message</li></ul>";
                }
                echo "</p>";
                $stmt = $pdo->query("DELETE FROM `goroda_draft` WHERE `id` = $gorod_id");
                $stmt->execute();
                $pdo = NULL;

                } // endif проверка - пуста ли папка

            } else {
                echo "<p class='error'>Город <b>$town_name</b> не найден в списке необработанных городов</p>";
            } // endif in_array();

        } else {
            echo "<p class='error'><b>$town_name</b> не является директорией</p>";
        } //endif is_dir();



    } // endforeach;

    // echo "<pre>";
    // print_r( $list_town_not_added );
    // echo "</pre>";

}
//     $gorod_id = $_POST['gorod'];
//     if ($gorod_id == '0') {
//         echo "Не указан город";
//         exit();
//     }
//
//     require 'connect.php';
//
//     $stmt = $pdo->prepare("INSERT INTO `office` (gorod_id, office_feature_id, adress, comment, location, mode)
//     VALUES (:gorod_id, :office_feature_id, :adress, :comment, :location, :mode)");
//
//
//     $file_office = file_get_contents( 'office.txt' );
//     $office_array = explode("\n\n", $file_office);
//
//     $count_office = 0;
//
//     foreach ($office_array as $office) {
//         $office = explode( "\n", $office );
//
//         $end = end($office);
//         if ($end == '') {
//             array_pop($office);
//         }
//
//         $count = count($office);
//         if ($count < 5) {
//             $comment = '';
//             array_splice($office, 2, 0, $comment);
//         }
//
//         list($office_feature, $adress, $comment, $location, $mode) = $office;
//
//         if ($office_feature == '«Почтовый Экспресс» и кредиты на индивидуальных условиях в точках партнеров') {
//             $office_feature_id = 1;
//         } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почта Банка)') {
//             $office_feature_id = 2;
//         } elseif ($office_feature == 'Клиентский центр') {
//             $office_feature_id = 3;
//         } elseif ($office_feature == 'Стойка продаж') {
//             $office_feature_id = 4;
//         } elseif ($office_feature == 'Клиентский центр в отделении Почты России (сотрудник Почты России)') {
//             $office_feature_id = 5;
//         } else $office_feature_id = 0;
//
//         $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
//         $stmt->bindParam( ':office_feature_id', $office_feature_id, PDO::PARAM_INT);
//         $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
//         $stmt->bindParam( ':comment', $comment, PDO::PARAM_STR);
//         $stmt->bindParam( ':location', $location, PDO::PARAM_STR);
//         $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
//         $stmt->execute();
//
//         $count_office++;
//
//         // echo "<pre>"; print_r ($office); echo "</pre>";
//     }
//
//     // ДОБАВЛЯЕМ БАНКОМАТЫ
//     $file_atms = file_get_contents( 'atms.txt' );
//     $atms_array = explode("\n\n", $file_atms);
//
//     $stmt = $pdo->prepare("INSERT INTO `atms` (gorod_id, adress, whose_atm_id, mode, services)
//     VALUES (:gorod_id, :adress, :whose_atm_id, :mode, :service_id)");
//
//     $count_atms = 0;
//     foreach ($atms_array as $atms) {
//
//         $atms = explode( "\n", $atms );
//
//         $end = end($atms);
//         if ($end == '') {
//             array_pop($atms);
//         }
//
//         list( $adress, $whose_atm, $mode, $service) = $atms;
//
//         if ($whose_atm == 'Банкомат «Почта Банка»') {
//             $whose_atm_id = 1;
//         } elseif ($whose_atm == 'Банкомат ВТБ24') {
//             $whose_atm_id = 2;
//         } else $whose_atm_id = 0;
//
//         // прием.выдача наличных
//         if ($service == 'прием наличных') {
//             $service_id = 1;
//         } elseif ($service == 'выдача наличных') {
//             $service_id = 2;
//         } elseif ($service == 'прием/выдача наличных') {
//             $service_id = 3;
//         } else $service_id = 0;
//
//         $stmt->bindParam( ':gorod_id', $gorod_id, PDO::PARAM_INT);
//         $stmt->bindParam( ':adress', $adress, PDO::PARAM_STR);
//         $stmt->bindParam( ':whose_atm_id', $whose_atm_id, PDO::PARAM_INT);
//         $stmt->bindParam( ':mode', $mode, PDO::PARAM_STR);
//         $stmt->bindParam( ':service_id', $service_id, PDO::PARAM_INT);
//         $stmt->execute();
//
//         $count_atms++;
//         // echo "<pre>"; print_r ($atms); echo "</pre>";
//     }
//
// $stmt = $pdo->query("DELETE FROM `goroda_draft` WHERE `id` = $gorod_id");
// $stmt->execute();
// $pdo = NULL;
// // echo '<script>window.location.href = "index.php";</script>';
//
// echo "<p>Офисы: " . $count_office . "<br>";
// echo "Банкоматы: " . $count_atms . "</p>";
// }
//
//
//     require 'connect.php';
//     $stmts = $pdo->query("SELECT DISTINCT `gorod_id` FROM `office`");
//     while ($rows = $stmts->fetch()) {
//         $id_goroda = $rows['gorod_id'];
//         $stmts2 = $pdo->query("SELECT `gorod` FROM `goroda` WHERE `id` = $id_goroda");
//         while ($stroka = $stmts2->fetch()) {
//             $added_city[] = $stroka['gorod'];
//         }
//     }
//     $pdo = NULL;
//     krsort($added_city);
//         foreach ($added_city as $city) {
//             echo $city . "<br>";
//             $i++;
//         }
// }
