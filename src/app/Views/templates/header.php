<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title></title>

  </head>
  <body>
    <?php
      $uri = service('uri');
     ?>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
      <a class="navbar-brand" href="/">NI &#9835;</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <?php if ( isset($_SESSION['logged_in']) and $_SESSION['logged_in'] ): ?>
        <ul class="navbar-nav my-2 my-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="/logout">Logout</a>
          </li>
          <li class="nav-item <?= ( ($uri->getSegment(1) == 'user' && $uri->getSegment(2) == '') || $uri->getSegment(1) == 'auth' ? 'active' : null) ?>">
            <a class="nav-link" href="/user">My Info</a>
          </li>
          <li class="nav-item <?= ($uri->getSegment(1) == 'user' && $uri->getSegment(2) == 'products' ? 'active' : null) ?>">
            <a class="nav-link" href="/user/products">My Products</a>
          </li>
        </ul>
      <?php else: ?>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item <?= ($uri->getSegment(1) == 'login' || $uri->getSegment(1) == '' ? 'active' : null) ?>">
            <a class="nav-link" href="/">Login</a>
          </li>
          <li class="nav-item <?= ($uri->getSegment(1) == 'products' ? 'active' : null) ?>">
            <a class="nav-link" href="/products">Available Products</a>
          </li>
        </ul>
        <?php endif; ?>
      </div>
      </div>
    </nav>