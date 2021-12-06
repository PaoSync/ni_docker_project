<div class="container">
    <div class="row">
        <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 mt-5 pt-3 pb-3 bg-white from-wrapper">
            <div class="container">
                <h3>Welcome back!</h3>
                <hr><br>
                <?php $user_name = $_SESSION['user_name']; $email = $_SESSION['email']; ?>
                Name: <?= $user_name ?><br>
                Email: <?= $email ?><br>
            </div>
        </div>
    </div>
</div>