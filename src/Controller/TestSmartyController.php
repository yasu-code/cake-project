<?php
namespace App\Controller;

class TestSmartyController extends AppController{

  public function index(){
   $this->set('smarty', 'これがすまーてぃー');
  }
}
