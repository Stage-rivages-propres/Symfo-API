<?php

namespace App\Repository;

use App\Entity\Lienvideo;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Lienvideo>
 *
 * @method Lienvideo|null find($id, $lockMode = null, $lockVersion = null)
 * @method Lienvideo|null findOneBy(array $criteria, array $orderBy = null)
 * @method Lienvideo[]    findAll()
 * @method Lienvideo[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LienvideoRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Lienvideo::class);
    }

//    /**
//     * @return Lienvideo[] Returns an array of Lienvideo objects
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

//    public function findOneBySomeField($value): ?Lienvideo
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
