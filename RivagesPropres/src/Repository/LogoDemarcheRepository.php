<?php

namespace App\Repository;

use App\Entity\LogoDemarche;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<LogoDemarche>
 *
 * @method LogoDemarche|null find($id, $lockMode = null, $lockVersion = null)
 * @method LogoDemarche|null findOneBy(array $criteria, array $orderBy = null)
 * @method LogoDemarche[]    findAll()
 * @method LogoDemarche[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LogoDemarcheRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, LogoDemarche::class);
    }

//    /**
//     * @return LogoDemarche[] Returns an array of LogoDemarche objects
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

//    public function findOneBySomeField($value): ?LogoDemarche
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
