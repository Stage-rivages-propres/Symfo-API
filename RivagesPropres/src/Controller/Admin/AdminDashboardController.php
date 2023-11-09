<?php

namespace App\Controller\Admin;

use App\Entity\Accompagnement;
use App\Entity\Chiffres;
use App\Entity\DerniersChantiers;
use App\Entity\Historique;
use App\Entity\Insertion;
use App\Entity\Membres;
use App\Entity\PartieContact;
use App\Entity\SupportsAct;
use App\Entity\Témoignages;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AdminDashboardController extends AbstractDashboardController
{
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        // return parent::index();

        // Option 1. You can make your dashboard redirect to some common page of your backend
        //
        // $adminUrlGenerator = $this->container->get(AdminUrlGenerator::class);
        // return $this->redirect($adminUrlGenerator->setController(OneOfYourCrudController::class)->generateUrl());

        // Option 2. You can make your dashboard redirect to different pages depending on the user
        //
        // if ('jane' === $this->getUser()->getUsername()) {
        //     return $this->redirect('...');
        // }

        // Option 3. You can render some custom template to display a proper dashboard with widgets, etc.
        // (tip: it's easier if your template extends from @EasyAdmin/page/content.html.twig)
        //
        return $this->render('admin/dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Www');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Accompagnement', 'fas fa-list', Accompagnement::class);
        yield MenuItem::linkToCrud('Insertion', 'fas fa-list', Insertion::class);
        yield MenuItem::linkToCrud('Partie contact', 'fas fa-list', PartieContact::class);
        yield MenuItem::linkToCrud('Historique', 'fas fa-list', Historique::class);
        yield MenuItem::linkToCrud('Chiffres', 'fas fa-list', Chiffres::class);
        yield MenuItem::linkToCrud('Membres', 'fas fa-list', Membres::class);
        yield MenuItem::linkToCrud('Derniers chantiers', 'fas fa-list', DerniersChantiers::class);
        yield MenuItem::linkToCrud('Témoignages', 'fas fa-list', Témoignages::class);
        yield MenuItem::linkToCrud("Supports d'activité", 'fas fa-list', SupportsAct::class);
        // yield MenuItem::linkToCrud('Membres', 'fas fa-list', Membres::class);
        // yield MenuItem::linkToCrud('Membres', 'fas fa-list', Membres::class);


    }
}
