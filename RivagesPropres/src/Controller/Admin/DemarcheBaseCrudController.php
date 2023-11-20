<?php

namespace App\Controller\Admin;

use App\Entity\DemarcheBase;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use Vich\UploaderBundle\Form\Type\VichFileType;

class DemarcheBaseCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return DemarcheBase::class;
    }
    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('texte'),
            TextField::new('texte2'),
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenCreating(),
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenUpdating(),
            ImageField::new('ImageName') ->setBasePath('/uploads/images')->onlyonindex(),
        ];
    }
}
