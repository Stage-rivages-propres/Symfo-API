<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Mime\Email;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Routing\Annotation\Route;

class PostulerController extends AbstractController
{
    private $mailer;

    public function __construct(MailerInterface $mailer)
    {
        $this->mailer = $mailer;
    }

    #[Route('/postuler')]
    public function sendEmail(Request $request): Response
    {
        // Récup données
        $objet = $request->request->get('objet');
        $mail = $request->request->get('mail');
        $message = $request->request->get('message');
        $prenom = $request->request->get('prenom');
        $nom = $request->request->get('nom');

        $email = (new TemplatedEmail())
            ->from('gavoiskarl@gmail.com')
            ->to('gavois.karl@gavois-k.fr')
            ->htmlTemplate('emails/postuler.html.twig')
            // ->cc('cc@example.com')
            // ->bcc('bcc@example.com')
            // ->replyTo('fabien@example.com')
            // ->priority(Email::PRIORITY_HIGH)
            ->subject("Nouveau message de la part de : $prenom $nom")
            ->text('Je suis un texte')
            ->html('<p>See Twig integration for better HTML integration!</p>'); 

        $this->mailer->send($email);

        return new JsonResponse(['status' => 'success']);
    }
}
