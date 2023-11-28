<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
  #[Route('/contact', name: 'app_contact')]
  public function index(Request $request, MailerInterface $mailer)
  {
    $name = $request->request->get('name');
    $mail = $request->request->get('mail');
    $message = $request->request->get('message');

    // Create an email message
    $email = new Email();
    $email->From('test@test.fr');
    $email->To('Gavois.k@hotmail.com');
    $email->Subject("Message from $name");
    $email->Text("
      Name: $name
      mail: $mail
      Message: $message
    ");

    // Send the email using Symfony Mailer
    $mailer->send($email);

    return new JsonResponse(['status' => 'success']);
  }
}