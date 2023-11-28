<?php

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use App\Repository\ParademarcheRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ParademarcheRepository::class)]
#[ApiResource]
class Parademarche
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;
    
    #[ORM\Column(length: 150)]
    private ?string $titre = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $descriptionformes = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $descriptionmenu = null;


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDescriptionformes(): ?string
    {
        return $this->descriptionformes;
    }

    public function setDescriptionformes(string $descriptionformes): static
    {
        $this->descriptionformes = $descriptionformes;

        return $this;
    }

    public function getDescriptionmenu(): ?string
    {
        return $this->descriptionmenu;
    }

    public function setDescriptionmenu(string $descriptionmenu): static
    {
        $this->descriptionmenu = $descriptionmenu;

        return $this;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): static
    {
        $this->titre = $titre;

        return $this;
    }
}
