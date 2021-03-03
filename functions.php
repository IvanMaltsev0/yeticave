<?php
$is_auth = rand(0, 1);

$user_name = 'IvanMaltsev'; // укажите здесь ваше имя

$categories_list = [
    'boards and skis' => 'Доски и лыжи',
    'Fasteners' => 'Крепления',
    'boots' => 'Ботинки',
    'fasteners' => 'Одежда',
    'Tools' => 'Инструменты',
    'different' => 'Разное',
];

$data_list = [
    [
        'name' => '2014 Rossignol District Snowboard',
        'cat' => 'boards and skis',
        'price' => '10999',
        'pictures' => 'img/lot-1.jpg',
    ],
    [
        'name' => 'DC Ply Mens 2016/2017 Snowboard',
        'cat' => 'boards and skis',
        'price' => '159999',
        'pictures' => 'img/lot-2.jpg',
    ],
    [
        'name' => 'Крепления Union Contact Pro 2015 года размер L/XL',
        'cat' => 'Fasteners',
        'price' => '8000',
        'pictures' => 'img/lot-3.jpg',
    ],
    [
        'name' => 'Ботинки для сноуборда DC Mutiny Charocal',
        'cat' => 'boots',
        'price' => '10999',
        'pictures' => 'img/lot-4.jpg',
    ],
    [
        'name' => 'Куртка для сноуборда DC Mutiny Charocal',
        'cat' => 'Одежда',
        'price' => '7500',
        'pictures' => 'img/lot-5.jpg',
    ],
    [
        'name' => 'Маска Oakley Canopy',
        'cat' => 'different',
        'price' => '5400',
        'pictures' => 'img/lot-6.jpg',
    ]
];

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
        return $price_n. '<b class=\"rub\">p</b>';
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
