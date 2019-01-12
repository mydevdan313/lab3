<?php

require('header.inc');


  // Создать короткие имена переменных

  $tireqty = $_POST['tireqty'];

  $oilqty = $_POST['oilqty'];

  $sparkqty = $_POST['sparkqty'];

  $address = $_POST['address'];

$fio = $_POST['fio'];

  $DOCUMENT_ROOT = $_SERVER['DOCUMENT_ROOT'];




?>

<html>

<head>

  <title>Автозапчасти от Боба - Результаты заказа</title>

</head>

<body>




<h1>Лабораторная работа № 4 по теме сохранение и востановление данных посредством использования массивов и текстовых файлов</h1>

<h2>Автозапчасти от Боба</h2>

<h3>Результаты заказа</h3>




<?php 

  $totalqty = 0;

  $totalqty += $tireqty;

  $totalqty += $oilqty;

  $totalqty += $sparkqty;

  

  $totalamount = 0.00;

 

  define('TIREPRICE', 100);

  define('OILPRICE', 10);

  define('SPARKPRICE', 4);



  $date = date('H:i, jS F');


  echo '<p>Заказ обработан в ';

  echo $date;

  echo '<br />';

  echo '<p>Список вашего заказа:';

  echo '<br />';




  if( $totalqty == 0 )

  {

    echo 'Вы ничего не заказали на предыдущей странице!<br />';

  }

  else

  {

    if ( $tireqty>0 )

      echo $tireqty.' автопокрышек<br />';

    if ( $oilqty>0 )

      echo $oilqty.' бутылок с маслом<br />';

    if ( $sparkqty>0 )

      echo $sparkqty.' свечей зажигания<br />';

  }




  $total = $tireqty * TIREPRICE + $oilqty * OILPRICE + $sparkqty * SPARKPRICE; 

  $total=number_format($total, 2, '.', ' ');

 
  echo '<P>Итого по заказу: '.$total.'</p>';
  echo '<P>ФИО клиента: '.$fio.'</p>';
  echo '<P>Адрес доставки: '.$address.'<br />';

$products=array("$date", "$tireqty", "$oilqty", "$sparkqty","$total", "$address", "$fio");


//echo "$products[0] <br>";

//echo "$products[1] <br>";

//echo "$products[2] <br>";

//echo "$products[3] <br>";

//echo "$products[4] <br>";

//echo "$products[5] <br>";

//echo "$products[6] <br>";

  $outputstring = $products[0]."\t".$products[1]." автопокрышек \t".$products[2]." масла\t"

                  .$products[3]." свечей\t\$".$products[4]

                  ."\t Адрес доставки товара\t ". $products[5]."\t ФИО клиента:\t".$products[6]." \n";



// Открыть файл для добавления

  $fp = fopen("orders_4.txt", 'a');

  flock($fp, LOCK_EX); 

 

  if (!$fp)

  {

    echo '<p><strong>В настоящий момент ваш запрос не может быть обработан.  '

         .'Пожалуйста, попытайтесь позже.</strong></p></body></html>';

    exit;

  } 

  fwrite($fp, $outputstring);

  flock($fp, LOCK_UN); 

  fclose($fp);


  echo '<p>Заказ сохранен.</p>'; 

?>

<a href="vieworders_4.php"> Интерфейс персонала для просмотра файла заказов </a>

</body>

</html>




<?php

require('footer.inc');

?>
