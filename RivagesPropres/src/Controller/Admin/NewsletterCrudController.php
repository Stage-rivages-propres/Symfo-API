<?php

namespace App\Controller\Admin;

use App\Entity\Newsletter;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use Vich\UploaderBundle\Form\Type\VichFileType;

class NewsletterCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Newsletter::class;
    }
    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenCreating(),
            TextField::new('imageFile') ->setFormType(VichFileType::class)->onlyWhenUpdating(),
            ImageField::new('ImageName') ->setBasePath('/uploads/images')->onlyonindex(),
        ];
    }
}
