<?php

namespace App\Repository;

use App\Entity\Témoignages;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Témoignages>
 *
 * @method Témoignages|null find($id, $lockMode = null, $lockVersion = null)
 * @method Témoignages|null findOneBy(array $criteria, array $orderBy = null)
 * @method Témoignages[]    findAll()
 * @method Témoignages[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TémoignagesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Témoignages::class);
    }

//    /**
//     * @return Témoignages[] Returns an array of Témoignages objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('t')
//            ->andWhere('t.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('t.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Témoignages
//    {
//        return $this->createQueryBuilder('t')
//            ->andWhere('t.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
