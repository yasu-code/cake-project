<!DOCTYPE html>
<html>
<head>

</head>
<body>
  <header class="head row">
    {$this->element('header',['subtitle'=>'cakephp sample header'])}
  </header>

  {$this->Form->create($entity,
    ['type' => 'post',
    'url' => ['controller' => 'People',
              'action' => 'create']
  ])}

  <div>name</div>
  <div>{$this->Form->text('People.name')}</div>
  <div>mail</div>
  <div>{$this->Form->text('People.mail')}</div>
  <div>age</div>
  <div>{$this->Form->text('People.age')}</div>
  <div>{$this->Form->submit('送信')}</div>

  <footer class="foot row">
    {$this->element('footer',['subtitle'=>'cakephp footer'])}
  </footer>
</body>
</html>
