<?php

namespace App\Controller\Admin;

use App\Entity\Membres;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Vich\UploaderBundle\Form\Type\VichFileType;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;  

class MembresCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Membres::class;
    }

    
    public function configureFields(string $pageName): iterable
    {

        $choices = [
            1 => '1',
            2 => '2',
            3 => '3',
            4 => '4',
            5 => '5',
        ];

        $choices2 = [
            1 => '1',
            2 => '2',
            3 => '3',
            4 => '4',
            5 => '5',
            6 => '6',
            7 => '7',
        ];
        return [
            TextField::new('nom'),
            TextField::new('prenom'),
            TextField::new('poste'),
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenCreating(),
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenUpdating(),
            ImageField::new('ImageName') ->setBasePath('/uploads/images')->onlyonindex(),
            ChoiceField::new('categorie_equipe', 'string')
                ->setLabel('Catégorie d\'équipe') // Set a clear label for user understanding
                ->setChoices($choices) // Use the defined array of choices
                ->renderAsBadges([ // Optional custom styling for choices
                    1 => 'primary',
                    2 => 'success',
                    3 => 'warning',
                    4 => 'danger',
                    5 => 'info',
                ])
                ->renderExpanded(false), // Display choices as a compact dropdown (optional)
                ChoiceField::new('categorie_demarche', 'string')
                ->setLabel('Catégorie demarche') // Set a clear label for user understanding
                ->setChoices($choices2) // Use the defined array of choices
                ->renderAsBadges([ // Optional custom styling for choices
                    1 => 'primary',
                    2 => 'success',
                    3 => 'warning',
                    4 => 'danger',
                    5 => 'info',
                    6 => 'light',
                    7 => 'dark',
                ])
                ->renderExpanded(false), // Display choices as a compact dropdown (optional)
                ChoiceField::new('categorie_demarche2', 'string')
                ->setLabel('Catégorie demarche') // Set a clear label for user understanding
                ->setChoices($choices2) // Use the defined array of choices
                ->renderAsBadges([ // Optional custom styling for choices
                    1 => 'primary',
                    2 => 'success',
                    3 => 'warning',
                    4 => 'danger',
                    5 => 'info',
                    6 => 'light',
                    7 => 'dark',
                ])
                ->renderExpanded(false), // Display choices as a compact dropdown (optional)
        ];
    }
    
}
