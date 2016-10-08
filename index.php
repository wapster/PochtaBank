<form action="" method="post">
<p><b>Клиентские центры и стойки продаж</b></p>
<textarea name="office" rows="15" cols="70" style="background:; font-size: 14px;"></textarea>

<p><b>БАНКОМАТЫ</b></p>
<textarea name="atm" rows="15" cols="70" style="background: ; font-size: 14px;"></textarea>

<p><input type="submit" name="submit" value="Добавить"></p>

</form>


<?php
if ( !empty($_POST['submit']) ) {
    require_once 'connect.php';
    $atm = $_POST['atm'];
    $office = $_POST['office'];
    echo $atm;
    // $stmt = $pdo->query("SELECT * FROM `office_feature`");
    // while ($row = $stmt->fetch()) {
    //     echo $row['office_feature'] ."<br>";
    // }

    // $gorod = 'Москва';
    // $goroda = file('1.txt');
    // $stmt = $pdo->prepare("INSERT INTO `goroda` (gorod) VALUES (:gorod)");
    // foreach ($goroda as $gorod) {
    //     $stmt->bindParam( ':gorod', $gorod);
    //     $stmt->execute();
    // }


}



$pdo = NULL;
