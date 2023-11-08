<?php

namespace App\Entity;

use App\Repository\DirectionRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: DirectionRepository::class)]
class Direction
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\OneToMany(mappedBy: 'Direction', targetEntity: Membres::class)]
    private Collection $Relation;

    public function __construct()
    {
        $this->Relation = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, Membres>
     */
    public function getRelation(): Collection
    {
        return $this->Relation;
    }

    public function addRelation(Membres $relation): static
    {
        if (!$this->Relation->contains($relation)) {
            $this->Relation->add($relation);
            $relation->setDirection($this);
        }

        return $this;
    }

    public function removeRelation(Membres $relation): static
    {
        if ($this->Relation->removeElement($relation)) {
            // set the owning side to null (unless already changed)
            if ($relation->getDirection() === $this) {
                $relation->setDirection(null);
            }
        }

        return $this;
    }
}
