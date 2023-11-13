<?php

namespace App\Controller;

use App\Repository\LogoRivagesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(LogoRivagesRepository $logoRivagesRepository): Response
    {
        $logo = $logoRivagesRepository -> findAll();

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'logo' => $logo,
        ]);
    }
}
