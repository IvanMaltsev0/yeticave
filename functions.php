<?php
require_once ('podklychenie.php');

function sum_format($number)
{
    $number = ceil($number);
    $f = true;
    if ($number>=1000){
        $price_n = number_format($number, 0, '.',' ');
    }
    else{
        $price_n=$number;
    }

    if($f==true){
        return $price_n. '<b class=\"rub\"></b>';
    }
    else{
        return $price_n;
    }
}


function timer_to()
{
    $time_now = strtotime("now");

    $time_tomorrow = strtotime("tomorrow");

    $time_sub = $time_tomorrow-$time_now;

    $time_minutes = floor($time_sub/60);

    $time_hours = floor($time_minutes/60);

    $time_minutes=$time_minutes-$time_hours*60;

    $result = sprintf('%02d:%02d',$time_hours,$time_minutes);

    return $result;
}

function compile_template($templates, $data)
{
    $templates = 'templates/'. $templates;
  $result = '';
    if(!file_exists($templates))
    {
        return $result;
    }

    ob_start();
    extract($data);
    require($templates);
    $result = ob_get_clean();
    return $result;
}

?>;
