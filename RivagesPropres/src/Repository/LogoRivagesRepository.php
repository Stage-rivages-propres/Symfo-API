<?php

namespace App\Repository;

use App\Entity\LogoRivages;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<LogoRivages>
 *
 * @method LogoRivages|null find($id, $lockMode = null, $lockVersion = null)
 * @method LogoRivages|null findOneBy(array $criteria, array $orderBy = null)
 * @method LogoRivages[]    findAll()
 * @method LogoRivages[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LogoRivagesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, LogoRivages::class);
    }

//    /**
//     * @return LogoRivages[] Returns an array of LogoRivages objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('l.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?LogoRivages
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
