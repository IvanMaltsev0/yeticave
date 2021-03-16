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

$con = mysqli_connect('127.0.0.1', 'root', '', 'yeticave');
$sql = 'SELECT * FROM categories';
$result = mysqli_query($con, $sql);
if($result){
    echo mysqli_error($con);
}

$categories_list = mysqli_fetch_all($result, MYSQLI_ASSOC);
