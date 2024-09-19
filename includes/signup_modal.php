<div class="modal fade" id="signup-modal" tabindex="-1" role="dialog" aria-labelledby="signup-heading" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="signup-heading">Signup with Farmacy</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <!-- Name -->
            <div class="modal-body mt-3">
                <form id="signup-form" class="form" role="form" method="post" action="api/signup_submit.php">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text h-100">
                                <i class="fas fa-user"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control ms-2 rounded" name="full_name" placeholder="Full Name" maxlength="30" required>
                    </div>

                    <!-- Phone Number -->
                    <div class="input-group form-group mt-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text h-100">
                                <i class="fas fa-phone-alt"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control ms-2 rounded" name="phone" placeholder="Phone Number" maxlength="10" minlength="10" required>
                    </div>

                    <!-- Email Address -->
                    <div class="input-group form-group mt-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text h-100">
                                <i class="fas fa-envelope"></i>
                            </span>
                        </div>
                        <input type="email" class="form-control ms-2 rounded" name="email" placeholder="Email" required>
                    </div>

                    <!-- Password -->
                    <div class="input-group form-group mt-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text h-100">
                                <i class="fas fa-lock"></i>
                            </span>
                        </div>
                        <input type="password" class="form-control ms-2 rounded" name="password" placeholder="Password" minlength="6" required>
                    </div>

                    <!-- Address -->
                    <div class="input-group form-group mt-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text h-100">
                                <i class="fas fa-house"></i>
                            </span>
                        </div>
                        <input type="text" class="form-control ms-2 rounded" name="address" placeholder="Addess" maxlength="150" required>
                    </div>

                    <!-- Gender -->
                    <div class="form-group mt-3">
                        <span>I'm a</span>
                        <input type="radio" class="ms-3" id="gender-male" name="gender" value="male" /> Male
                        <label for="gender-male">
                        </label>
                        <input type="radio" class="ms-3" id="gender-female" name="gender" value="female" />
                        <label for="gender-female">
                            Female
                        </label>
                    </div>

                    <div class="form-group text-center mt-4">
                        <button type="submit" class="btn btn-sm btn-block btn-primary">Create Account</button>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <span>Already have an account?
                    <a href="#" class="ms-1" data-dismiss="modal" data-bs-toggle="modal" data-bs-target="#login-modal">Login</a>
                </span>
            </div>
        </div>
    </div>
</div>