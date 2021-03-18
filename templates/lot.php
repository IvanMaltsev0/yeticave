
<nav class="nav">
    <ul class="nav__list container">
        <?php foreach($data_list as $item):?>
            <li class="nav__item">
                <a href="all-lots.html"><?=$item['categ_name'];?></a>
            </li>
        <?php endforeach;?>
    </ul>
</nav>
<section class="lot-item container">
    <h2><?=$lot['lot_name'];?></h2>
    <div class="lot-item__content">
        <div class="lot-item__left">
            <div class="lot-item__image">
                <img src="<?=$lot['lot_image'];?>" width="730" height="548" alt="Сноуборд">
            </div>
            <p class="lot-item__category">Категория: <span><?=$categories_list[$lotID]['categ_name'];?></span></p>
            <p class="lot-item__description"><?=$lot['lot_descr_text']?></p>
        </div>

        <div class="lot-item__right">
            <div class="lot-item__state">
                <div class="lot-item__timer timer">
                    <?=timer_to($result);?>
                </div>
                <div class="lot-item__cost-state">
                    <div class="lot-item__rate">
                        <span class="lot-item__amount">Текущая цена</span>
                        <span class="lot-item__cost"><?=sum_format($lot['lot_start_price']);?></span>
                    </div>

                </div>
            </div>
        </div>
</section>
