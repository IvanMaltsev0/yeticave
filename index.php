<?php


require_once ('functions.php');



$page_content = compile_template('index.php',
['categories_list' => $categories_list,
'data_list' => $data_list]);



$layout_content = compile_template(
    'layout.php', [
    'page_title' => 'Главная страница',
    'is_auth' => $is_auth,
    'user_name' => $user_name,
    'page_content' => $page_content,
    'categories_list' => $categories_list]);

print($layout_content);


?>;

