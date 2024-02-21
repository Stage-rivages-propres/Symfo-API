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

class ContactController extends AbstractController
{
    private $mailer;

    public function __construct(MailerInterface $mailer)
    {
        $this->mailer = $mailer;
    }

    #[Route('/contact', methods: ['POST'])]
    public function sendEmail(Request $request): Response
    {
        $data = json_decode($request->getContent());
        // dd($data);
        // Récup données
        $objet = $data->objet;
        $mail = $data->mail;
        $message = $data->message;
        $prenom = $data->prenom;
        $nom = $data->nom;
        // dd($nom);
        
        $email = (new TemplatedEmail())
            ->from('gavoiskarl@gmail.com')
            ->to('gavois.karl@gavois-k.fr')
            ->htmlTemplate('emails/contact.html.twig')
            ->subject("Nouvelle demande de contact !")
            ->text('Je suis un texte')
            ->context([
                'nom' => $nom,
                'prenom' => $prenom,
                'objet' => $objet,
                'mail' => $mail,
                'message' => $message
            ]);

        $this->mailer->send($email);

        return new JsonResponse(['status' => 'success']);
    }
}