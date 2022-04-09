<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\Events;


class HomeController extends AbstractController
{
    /**
     * @Route("/", name="app_home")
     */
    public function index(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getRepository(Events::class)->findAll();
        // dd($events);
        return $this->render('home/index.html.twig', ['events' => $events]);
    }

    /**
     * @Route("/search/", name="app_search", methods="get")
     */
    public function search(ManagerRegistry $doctrine, Request $request): Response
    {
        $category = $request->query->get('cat');
        //dd($category);
        $events = $doctrine->getRepository(Events::class)->findBy(['eventType' => $category]);
        //dd($events);
        if($events){
            return $this->render('home/index.html.twig', ['events' => $events]);
        }else{
            $this->addFlash('notice', 'Category empty or not found.');
            return $this->redirectToRoute('app_home');
        }
    }

    /**
     * @Route("/details/{id}", name="app_details")
     */
    public function details(ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(Events::class)->find($id);
        return $this->render('home/details.html.twig', ['event' => $event]);
    }
}
