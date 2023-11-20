<?php

namespace App\Repository;

use App\Entity\DemarcheBase;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<DemarcheBase>
 *
 * @method DemarcheBase|null find($id, $lockMode = null, $lockVersion = null)
 * @method DemarcheBase|null findOneBy(array $criteria, array $orderBy = null)
 * @method DemarcheBase[]    findAll()
 * @method DemarcheBase[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DemarcheBaseRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, DemarcheBase::class);
    }

//    /**
//     * @return DemarcheBase[] Returns an array of DemarcheBase objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('d')
//            ->andWhere('d.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('d.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?DemarcheBase
//    {
//        return $this->createQueryBuilder('d')
//            ->andWhere('d.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
