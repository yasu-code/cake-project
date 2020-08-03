<?php
namespace App\Controller;
use App\Controller\AppController;

Class HelloController extends AppController {
  public function initialize(){
    $this->viewBuilder()->setLayout('hello');
  }

  public function index(){
    //$this->viewBuilder()->autoLayout(false);
    // $values = [
    //   'title'=>'Hello!',
    //   'content'=>'This is message!'
    // ];
    // $this->set($values);
  }

  public function hello(){
    echo "<html><body><h1>こんにちは!</h1>";
    echo "<p>こちらはサンプルページです。</p></body></html>";
  }

  public function form(){
    $this->viewBuilder()->autoLayout(false);
    $name = $this->request->data['name'];
    $mail = $this->request->data['mail'];
    $age = $this->request->data['age'];

    $sex = '男';
    if($this->request->data['sex'] == 'women'){
      $sex = '女';
    }

    $flag = 0;
    if(isset($this->request->data['flag'])){
      $flag = $this->request->data['flag'];
    }

    $res = 'こんにちは' . $name . '(' . $age . ')' . 'メールアドレス:' . $mail . '。性別は' . $sex . ',flagは' . $flag . 'です。';
    $values = [
      'title' => 'Hello!',
      'message' => $res
    ];
    $this->set($values);
  }
}
