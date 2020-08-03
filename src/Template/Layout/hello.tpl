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
    {$this->element('header',['subtitle'=>'cakephp sample header'])}
  </header>
  <div class="content row">
    {$content}
  </div>
  <footer class="foot row">
    {$this->element('footer',['subtitle'=>'cakephp footer'])}
  </footer>
</body>
</html>
