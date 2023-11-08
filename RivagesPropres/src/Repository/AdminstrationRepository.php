<?php

namespace App\Repository;

use App\Entity\Adminstration;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Adminstration>
 *
 * @method Adminstration|null find($id, $lockMode = null, $lockVersion = null)
 * @method Adminstration|null findOneBy(array $criteria, array $orderBy = null)
 * @method Adminstration[]    findAll()
 * @method Adminstration[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AdminstrationRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Adminstration::class);
    }

//    /**
//     * @return Adminstration[] Returns an array of Adminstration objects
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

//    public function findOneBySomeField($value): ?Adminstration
//    {
//        return $this->createQueryBuilder('a')
//            ->andWhere('a.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
