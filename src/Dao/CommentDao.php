<?php

namespace App\Dao;

use App\Model\User;
use PDO;
use Core\AbstractDao;
use App\Model\Comment;

class CommentDao extends AbstractDao
{
    /**
     * Récupère de la base de données tous les commentaires
     *
     * @return Comment[] Tableau d'objet Comment
     */
    public function getAll(): array
    {
        $sth = $this->dbh->prepare("SELECT * FROM `comment`");
        $sth->execute();
        $result = $sth->fetchAll(PDO::FETCH_ASSOC);

        for ($i = 0; $i < count($result); $i++) {
            $a = new Comment();
            $result[$i] = $a->setIdComment($result[$i]['id_comment'])
                ->setArticleId($result[$i]['article_id'])
                ->setUser_id($result[$i]['user_id'])
                ->setContent($result[$i]['content'])
                ->setCreated_at($result[$i]['created_at']);
        }

        return $result;
    }

    /**
     * Récupère de la base de données un commentaire en fonction de son id ou null si le commentaire n'existe pas
     *
     * @param int $id Identifiant du commentaire qu'on doit récupérer de la bdd
     * @return Comment|null Objet du commentaire récupéré en bdd ou null
     */
    public function getById(int $id): ?Comment
    {
        $sth = $this->dbh->prepare(
            "SELECT comment.id_comment,
                            comment.title,
                            comment.content,
                            comment.created_at,
                            u.id_user,
                            u.pseudo,
                            u.email,
                            u.created_at AS user_created_at
                        FROM `comment`
                        LEFT OUTER JOIN `user` AS u
                            ON article.user_id = u.id_user
                        WHERE id_article = :id_article"
        );
        $sth->execute([":id_comment" => $id]);
        $result = $sth->fetch(PDO::FETCH_ASSOC);

        if (empty($result)) {
            return null;
        }

        $user = null;

        if (isset($result['id_user'])) {
            $user = new User();
            $user->setIdUser($result['id_user'])
                ->setPseudo($result['pseudo'])
                ->setEmail($result['email'])
                ->setCreatedAt($result['user_created_at']);
        }

        $a = new Comment();
        return $a->setIdComment($result['id_comment'])
            ->setArticleId($result['article_id'])
            ->setContent($result['content'])
            ->setCreated_at($result['created_at']);
    }

    /**
     * Ajoute un commentaire à la base de données et assigne l'id du commentaire créé
     *
     * @param Comment $comment Objet du commentaire à ajouter à la bdd
     */
    public function new(Comment $comment): void
    {
        $sth = $this->dbh->prepare(
            "INSERT INTO `comment` (article_id, content)
                                        VALUES (:article_id, :content)"
        );
        $sth->execute([
            ':article_id' => $comment->getArticleId(),
            ':content' => $comment->getContent()
        ]);
        $comment->setIdComment($this->dbh->lastInsertId());
    }

    /**
     * Edite un commentaire de la base de données
     *
     * @param Comment $comment Objet du commentaire à éditer
     */
    public function edit(Comment $comment): void
    {
        $sth = $this->dbh->prepare(
            "UPDATE `comment` SET content = :content WHERE id_comment = :id_comment"
        );
        $sth->execute([
            ':content' => $comment->getContent(),
            ':id_comment' => $comment->getIdComment()
        ]);
    }

    /**
     * Supprime un commentaire de la base de données
     *
     * @param int $id Identifiant du commentaire à supprimer
     */
    public function delete(int $id): void
    {
        $sth = $this->dbh->prepare("DELETE FROM `comment` WHERE id_comment = :id_comment");
        $sth->execute([":id_comment" => $id]);
    }
}
