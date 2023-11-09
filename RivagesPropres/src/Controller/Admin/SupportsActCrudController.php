<?php

namespace App\Controller\Admin;

use App\Entity\SupportsAct;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Vich\UploaderBundle\Form\Type\VichFileType;

class SupportsActCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return SupportsAct::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('nom'),
            TextEditorField::new('description'),
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenCreating(),
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenUpdating(),
            ImageField::new('ImageName') ->setBasePath('/uploads/images')->onlyonindex(),
        ];
    }
}
