<?php

namespace App\Repository;

use App\Entity\Parademarche;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Parademarche>
 *
 * @method Parademarche|null find($id, $lockMode = null, $lockVersion = null)
 * @method Parademarche|null findOneBy(array $criteria, array $orderBy = null)
 * @method Parademarche[]    findAll()
 * @method Parademarche[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ParademarcheRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Parademarche::class);
    }

//    /**
//     * @return Parademarche[] Returns an array of Parademarche objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('p.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Parademarche
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
