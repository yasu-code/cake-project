<!DOCTYPE html>
<html>
<head>

</head>
<body>
  <header class="head row">
    {$this->element('header',['subtitle'=>'cakephp sample header'])}
  </header>


  <p>データを削除します。</p>
  <div>id:{$entity['id']}</div>
  <div>id:{$entity['name']}</div>
  <div>id:{$entity['mail']}</div>
  <div>id:{$entity['age']}</div>

  {$this->Form->create($entity,
    ['type' => 'post',
    'url' => ['controller' => 'People',
              'action' => 'destroy']
  ])}
  {$this->Form->hidden('People.id')}
  <div>{$this->Form->text('People.name')}</div>
  <div>{$this->Form->submit('削除する')}</div>

  <footer class="foot row">
    {$this->element('footer',['subtitle'=>'cakephp footer'])}
  </footer>
</body>
</html>
