<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use App\Entity\Events;
use App\Form\CrudType;
use Symfony\Component\HttpFoundation\Request;

class CrudController extends AbstractController
/**
* @Route("/crud")
*/
{
    /**
     * @Route("/", name="app_crud")
     */
    public function crudAction(): Response
    {
        return $this->render('crud/index.html.twig', [
            'controller_name' => 'CrudController',
        ]);
    }

    /**
     * @Route("/create", name="app_create")
     */
    public function createAction(ManagerRegistry $doctrine, Request $request): Response
    {
        $event = new Events();
        $form = $this->createForm(CrudType::class, $event);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash('notice', 'Event successfully added');
        
            return $this->redirectToRoute('app_home');
        }

        return $this->render('crud/create.html.twig', ['form' => $form->createView()]);
    }

    /**
     * @Route("/edit/{id}", name="app_edit")
     */
    public function editAction($id, ManagerRegistry $doctrine, Request $request): Response
    {
        $event = $doctrine->getRepository(Events::class)->find($id);
        $form = $this->createForm(CrudType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();
            $this->addFlash('notice', 'Edit successful');

            return $this->redirectToRoute('app_home');
        }

        return $this->render('crud/edit.html.twig', ['form' => $form->createView()]);
    }

    /**
     * @Route("/delete/{id}", name="app_delete")
     */
    public function deleteAction($id, ManagerRegistry $doctrine): Response
    {
        $em = $doctrine->getManager();
        $event = $em->getRepository(Events::class)->find($id);
        $em->remove($event);
        
        $em->flush();
        $this->addFlash('notice', 'Event removed');
        
        return $this->redirectToRoute('app_home');
    }
}
