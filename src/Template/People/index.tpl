<!DOCTYPE html>
<html>
<head>
    {$this->Html->charset()}
    {$this->Html->css('hello')}
    <title>{$title}</title>
</head>
<body>
  <header class="head row">
    {$this->element('header',['subtitle'=>'cakephp sample header'])}
  </header>

  <p>これはレコードです。</p>
  <table>
    <thead><tr>
      <th>id</th><th>name</th><th>mail</th><th>age</th>
    </tr></thead>
    {foreach $data as $obj}
    <tr>
      <td>{h($obj->id)}</td>
      <td><a href="{$this->Url->build(['controller' => 'People',
                                      'action' => 'edit'])}
                                      ?id={$obj->id}">
                                      {h($obj->name)} </a></td>
      <td>{h($obj->name)}</td>
      <td>{h($obj->mail)}</td>
      <td>{h($obj->age)}</td>
      <td><a href="{$this->Url->build(['controller' => 'People',
                                      'action' => 'delete'])}
                                      ?id={$obj->id}">
                                      delete </a></td>
    </tr>
    {/foreach}
  </table>

  <footer class="foot row">
    {$this->element('footer',['subtitle'=>'cakephp footer'])}
  </footer>
</body>
</html>
