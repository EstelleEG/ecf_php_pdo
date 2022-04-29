<?php

require_once VIEW . DIRECTORY_SEPARATOR . 'header.html.php';
?>
    <article class="p-3 border border-1 rounded mb-3" id="comment<?= $comment->getIdComment() ?>">
        <p><?= nl2br(filter_var($article->getContent(), FILTER_SANITIZE_FULL_SPECIAL_CHARS)) ?></p>
        <?php
        if (isset($_SESSION['user'])) :
            ?>
            <hr>
            <ul class="nav">
                <li class="nav-item me-2">
                    <a class="nav-link btn btn-primary text-light"
                       href="<?= sprintf("/comment/edit/%d", $article->getIdComment()) ?>">Edit</a>
                </li>
                <li class="nav-item me-2">
                    <a class="nav-link btn btn-danger text-light"
                       href="<?= sprintf("/comment/delete/%d", $article->getIdComment()) ?>">Delete</a>
                </li>
            </ul>
        <?php
        endif;
        ?>
    </article>
<?php
require_once VIEW . DIRECTORY_SEPARATOR . "footer.html.php";
?>