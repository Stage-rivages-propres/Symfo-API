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
        $data = json_decode($request->getContent());
        // dd($data);
        $prenom = $data->prenom;
        $nom = $data->nom;
        $mail = $data->mail;
        $cvFile = $data->cv;
        $cafFile = $data->caf;
        $dob = $data->dob;
        
        $email = (new TemplatedEmail())
        ->from('gavoiskarl@gmail.com')
        ->to('gavois.karl@gavois-k.fr')
        ->subject("Nouvel envoi de candidature !")
        ->htmlTemplate('emails/postuler.html.twig')
        ->context([
            'nom' => $nom,
            'prenom' => $prenom,
            'cv' => $cvFile,
            'mail' => $mail,
            'caf' => $cafFile,
            'dob' => $dob
        ])
        ->attach($cvFile)
        ->attach($cafFile);

        $this->mailer->send($email);

        return new JsonResponse(['status' => 'success']);

    }
}
