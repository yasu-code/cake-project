<?php
namespace App\Controller;
use App\Controller\AppController;

Class HelloController extends AppController {
  public function index(){
    $this->viewBuilder()->autoLayout(false);
    $values = [
      'title'=>'Hello!',
      'message'=>'This is message!'
    ];
    //$this->set('title', 'Hello!');
    //$this->set('message', 'This is message!');
    $this->set($values);
  }

  public function hello(){
    echo "<html><body><h1>こんにちは!</h1>";
    echo "<p>こちらはサンプルページです。</p></body></html>";
  }
}
