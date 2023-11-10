<?php

namespace App\Repository;

use App\Entity\Lettreinfo;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Lettreinfo>
 *
 * @method Lettreinfo|null find($id, $lockMode = null, $lockVersion = null)
 * @method Lettreinfo|null findOneBy(array $criteria, array $orderBy = null)
 * @method Lettreinfo[]    findAll()
 * @method Lettreinfo[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LettreinfoRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Lettreinfo::class);
    }

//    /**
//     * @return Lettreinfo[] Returns an array of Lettreinfo objects
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

//    public function findOneBySomeField($value): ?Lettreinfo
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
