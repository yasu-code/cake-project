<!DOCTYPE html>
<html>
<head>
    {$this->Html->charset()}
    <title>{$title}</title>
    {$this->Html->css('hello')}
    {$this->Html->script('hello')}
</head>
<body>
  <header class="head row">
    <h1>{$title}</h1>
  </header>
  <div class="content row">
    {$content}
  </div>
  <footer class="foot row">
    <h5>copyright!</h5>
  </footer>
</body>
</html>
