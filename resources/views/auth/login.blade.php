@extends('layouts.auth')

@section('login')
<div class="login-box">

    <!-- /.login-logo -->
    <div class="login-box-body">
        <h1 class="text-center">Login</h1>
        <form action="{{ route('login') }}" method="post" class="form-login">
            @csrf
            <div class="form-group has-feedbac p-5 k @error('email') has-error @enderror" style="margin-top: 5rem; margin-bottom: 2rem">
                <input type="email" name="email" class="form-control" placeholder="Email" required value="{{ old('email') }}" autofocus>

            </div>
            <div class="form-group has-feedback @error('password') has-error @enderror">
                <input type="password" name="password" class="form-control" placeholder="Password" required>

                @error('password')
                    <span class="help-block">{{ $message }}</span>
                @else
                    <span class="help-block with-errors"></span>
                @enderror
            </div>
            <div class="row">

                <!-- /.col -->
                <div style="display: flex; justify-content: center; align-items: center;">
                    <div class="col-xs-4 my-5">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Login</button>
                    </div>
                </div>
                
            
            </div>
        </form>
    </div>
</div>
@endsection



