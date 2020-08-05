<?php
namespace App\Controller;
use App\Controller\AppController;

Class PeopleController extends AppController {
  public function initialize(){
    //$this->viewBuilder()->setLayout('hello');
  }

  public function index(){
    $data = $this->People->find('list')->toArray();
    $this->set('data', $data);
  }
}
