<?php

namespace App\Repository;

use App\Entity\InsertionEquipe;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<InsertionEquipe>
 *
 * @method InsertionEquipe|null find($id, $lockMode = null, $lockVersion = null)
 * @method InsertionEquipe|null findOneBy(array $criteria, array $orderBy = null)
 * @method InsertionEquipe[]    findAll()
 * @method InsertionEquipe[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class InsertionEquipeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, InsertionEquipe::class);
    }

//    /**
//     * @return InsertionEquipe[] Returns an array of InsertionEquipe objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('i')
//            ->andWhere('i.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('i.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?InsertionEquipe
//    {
//        return $this->createQueryBuilder('i')
//            ->andWhere('i.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
