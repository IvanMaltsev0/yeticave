<nav class="nav">
    <ul class="nav__list container">
        <li class="nav__item">
            <a href="all-lots.html">Доски и лыжи</a>
        </li>
        <li class="nav__item">
            <a href="all-lots.html">Крепления</a>
        </li>
        <li class="nav__item">
            <a href="all-lots.html">Ботинки</a>
        </li>
        <li class="nav__item">
            <a href="all-lots.html">Одежда</a>
        </li>
        <li class="nav__item">
            <a href="all-lots.html">Инструменты</a>
        </li>
        <li class="nav__item">
            <a href="all-lots.html">Разное</a>
        </li>
    </ul>
</nav>
<form class="form container form--invalid" action="login.php" enctype="multipart/form-data" method="post"> <!-- form--invalid -->
    <h2>Вход</h2>
    <div class="form__item <?= empty($errors['email'])? "" : "form__item--invalid"  ?>" > <!-- form__item--invalid -->
        <label for="email">E-mail <sup>*</sup></label>
        <input id="email" type="text" name="email" placeholder="Введите e-mail">
        <span class="form__error">Введите e-mail</span>
    </div>
    <div class="form__item form__item--last <?= empty($errors['password'])? "" : "form__item--invalid"  ?>">
        <label for="password">Пароль <sup>*</sup></label>
        <input id="password" type="password" name="password" placeholder="Введите пароль">
        <span class="form__error">Введите пароль</span>
    </div>
    <span class="form__error form__error--bottom"><?= $valid?></span>
    <button type="submit" class="button">Войти</button>
</form>
