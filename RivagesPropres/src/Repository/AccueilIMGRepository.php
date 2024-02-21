<?php

namespace App\Repository;

use App\Entity\AccueilIMG;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<AccueilIMG>
 *
 * @method AccueilIMG|null find($id, $lockMode = null, $lockVersion = null)
 * @method AccueilIMG|null findOneBy(array $criteria, array $orderBy = null)
 * @method AccueilIMG[]    findAll()
 * @method AccueilIMG[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AccueilIMGRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, AccueilIMG::class);
    }

//    /**
//     * @return AccueilIMG[] Returns an array of AccueilIMG objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('a')
//            ->andWhere('a.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('a.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?AccueilIMG
//    {
//        return $this->createQueryBuilder('a')
//            ->andWhere('a.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
