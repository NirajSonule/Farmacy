<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-heading" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="login-heading">Login with Farmacy</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body">
                <form id="login-form" class="form" role="form" method="post" action="api/login_submit.php">
                    <div class="input-group form-group mt-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text h-100">
                                <i class="fas fa-user"></i>
                            </span>
                        </div>
                        <input type="email" class="form-control ms-2 rounded" name="email" placeholder="Email" required>
                    </div>

                    <div class="input-group form-group mt-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text h-100">
                                <i class="fas fa-lock"></i>
                            </span>
                        </div>
                        <input type="password" class="form-control ms-2 rounded" name="password" placeholder="Password" minlength="6" required>
                    </div>

                    <div class="form-group text-center mt-4">
                        <button type="submit" class="btn btn-sm btn-block btn-primary">Login</button>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <span>
                    <a href="#" class="me-1" data-dismiss="modal" data-bs-toggle="modal" data-bs-target="#signup-modal">Click here</a>
                    to register a new account
                </span>
            </div>
        </div>
    </div>
</div>