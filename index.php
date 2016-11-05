<form action="" method="post">

Город:
<select name="gorod">
    <option name="null" value="0"> - - - - -  </option>
    <?php
        require_once 'connect.php';
        $countGoroda = $pdo->query("SELECT DISTINCT count(*) FROM `goroda`")->fetchColumn();
        $countAddsOffice = $pdo->query("SELECT count(DISTINCT  `gorod_id`) FROM `office`")->fetchColumn();

        $stmt = $pdo->query("SELECT * FROM `goroda_draft`");
        $pdo = NULL;
        while ($row = $stmt->fetch()) {
            echo "<option value='" . $row['id']  . "'>" . $row['gorod'] . "</option>";
        }
    ?>
</select>

<p>
    добавлено городов: <?php echo $countAddsOffice; ?> из <?php echo $countGoroda; ?>
</p>

<p>
    <input type="submit" name="submit" value="Добавить">
</p>

</form>

<?php
if ( !empty($_POST['submit']) ) {
    $gorod_id = $_POST['gorod'];
    if ($gorod_id == '0') {
        echo "Не указан город";
        exit();
    }
    
    require 'connect.php';

    $stmt = $pdo->prepare("INSERT INTO `office` (gorod_id, office_feature_id, adress, comment, location, mode)
    VALUES (:gorod_id, :office_feature_id, :adress, :comment, :location, :mode)");


    $file_office = file_get_contents( 'office.txt' );
    $office_array = explode("\n\n", $file_office);

    foreach ($office_array as $office) {
        $office = explode( "\n", $office );

        $end = end($office);
        if ($end == '') {
            array_pop($office);
        }

        $count = count($office) ."<br>";
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

        // echo "<pre>"; print_r ($office); echo "</pre>";
    }

    // ДОБАВЛЯЕМ БАНКОМАТЫ
    $file_atms = file_get_contents( 'atms.txt' );
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

        // echo "<pre>"; print_r ($atms); echo "</pre>";
    }

$stmt = $pdo->query("DELETE FROM `goroda_draft` WHERE `id` = $gorod_id");
$stmt->execute();
$pdo = NULL;
echo '<script>window.location.href = "index.php";</script>';
}
