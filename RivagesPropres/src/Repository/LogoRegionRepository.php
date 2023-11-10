<?php

namespace App\Repository;

use App\Entity\LogoRegion;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<LogoRegion>
 *
 * @method LogoRegion|null find($id, $lockMode = null, $lockVersion = null)
 * @method LogoRegion|null findOneBy(array $criteria, array $orderBy = null)
 * @method LogoRegion[]    findAll()
 * @method LogoRegion[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LogoRegionRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, LogoRegion::class);
    }

//    /**
//     * @return LogoRegion[] Returns an array of LogoRegion objects
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

//    public function findOneBySomeField($value): ?LogoRegion
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
