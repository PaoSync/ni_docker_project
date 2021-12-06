<div class="container">
  <div class="row">
    <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 mt-5 pt-3 pb-3 bg-white from-wrapper">
      <div class="container">
        <h3>Login</h3>
        <hr>
        <form class="" action="/auth" method="post">

        <div class="form-group">
           <label for="email">Email address</label>
           <input type="text" class="form-control" name="email" id="email" value="" placeholder="Enter your email">
          </div>
          <div class="form-group">
           <label for="password">Password</label>
           <input type="password" class="form-control" name="password" id="password" value="" placeholder="Enter your password">
          </div>
          <div class="row">
            <div class="col-12 col-sm-4">
              <button type="submit" class="btn btn-primary">Login</button>
            </div>
          </div>
          <div class="row">
            <div class="text-danger">
              <?= isset($_SESSION['login_error_message']) ? $_SESSION['login_error_message'] : ""; ?>
            </div>
          </div>
          
        </form>
      </div>
    </div>
  </div>
</div>