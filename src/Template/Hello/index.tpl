<!DOCTYPE html>
<html>
<head>
    {$this->Html->charset()}
    <title>{$title}</title>
    {$this->Html->css('hello')}
    {$this->Html->script('hello')}
</head>
<body>
  <div class='row'>
    <p>This is content.</p>
    <table>
      {$this->Form->create(null,
        ['type' => 'post',
        'url' => ['controller' => 'hello',
                  'action' => 'form']])
      }
      <tr>
        <th>name</th>
        <td><input type="text" name="name"></td>
      </tr>
      <tr>
        <th>mail</th>
        <td><input type="text" name="mail"></td>
      </tr>
      <tr>
        <th>age</th>
        <td><input type="number" name="age"></td>
      </tr>
      <tr>
        <th>sex</th>
        <td><input type="radio" name="sex" value="men" checked="checked">男</td>
        <td><input type="radio" name="sex" value="women">女</td>
      </tr>
      <tr>
        <th>flag</th>
        <td><input type="checkbox" name="flag"></td>
      </tr>
      <tr><th></th><td>
      <button>Click</button></td></tr>
    </table>
  </div>
  <footer class="foot row">
    <h5>copyright</h5>
  </footer>
</body>
</html>
