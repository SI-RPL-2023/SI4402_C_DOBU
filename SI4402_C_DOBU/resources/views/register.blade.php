<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>DOBU</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link rel="icon" href="{{ url('/images/icon/ic_drop.svg') }}">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-12 d-flex">
                <div class=" flex-column mx-auto" style="padding-top: 200px">
                    <p class="text-left text-blue text-title1 pb-2"
                    style="font-size: 50px;line-height: 30px;font-family: 'Montserrat', sans-serif;">Welcome to Dobu</p>
                    <p class="text-left text-body1 pb-2 my-2" style="max-width: 500px">“A book is a gift you can open again and again. - Garrison Keillor”</p>
                    <img class="img-fluid mt-3" src="assets\images\istockphoto-179958092-612x612.jpg" alt="nurse">
                </div>
            </div>
            <div class="col-md-6 col-sm-12 d-flex flex-column m-auto pt-5">
                <h3 class="text-blue font-bolder font-weight-bold mb-5">Daftar</h3>
                <form action="{{ url('/register') }}" method="POST">
                    @csrf
                    <div class="form-group mb-3 w-75">
                        <label for="name_donators" class="text-title1 text-blue">Nama Lengkap</label>
                        <input type="text"
                            class="form-control mt-1 text-title1 text-blue @error('name_donators') is-invalid @enderror"
                            id="name_donators" name="name_donators"
                            placeholder="Masukkan Nama Lengkap" required value="{{ old('name_donators') }}">
                        @error('name_donators')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="form-group mb-3 w-75">
                        <label for="email_donators" class="text-title1 text-blue">Email</label>
                        <input type="email"
                            class="form-control mt-1 text-title1 text-blue @error('email_donators') is-invalid @enderror"
                            id="email_donators" name="email_donators"
                            placeholder="Masukkan alamat" required value="{{ old('email_donators') }}">
                        @error('email_donators')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group mb-3 w-75">
                        <label for="blood_type_donators" class="text-title1 text-blue">Status</label>
                        <select
                            class="custom-select text-title1 text-blue mt-1 @error('blood_type_donators') is-invalid @enderror"
                            id="blood_type_donators" name="blood_type_donators" required>
                            <option value="" disabled selected>----</option>
                            <option value="Pelajar ">Pelajar </option>
                            <option value="Pekerja">Pekerja</option>
                            <option value="Umum">Umum</option>
                
                        </select>
                        @error('blood_type_donators')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group mb-3 w-75">
                        <label for="rhesus_type_donators" class="text-title1 text-blue">Jenis Kelamin</label>
                        <select
                            class="custom-select text-title1 text-blue mt-1 @error('rhesus_type_donators') is-invalid @enderror"
                            id="rhesus_type_donators" name="rhesus_type_donators" required>
                            <option value="" disabled selected>Jenis Kelamin</option>
                            <option value="Pria">Pria</option>
                            <option value="Wanita">Wanita</option>
                        </select>
                        @error('rhesus_type_donators')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group mb-3 w-75">
                        <label for="address_donators" class="text-title1 text-blue">Alamat</label>
                        <textarea class="form-control text-title1 text-blue @error('address_donators') is-invalid @enderror"
                                id="address_donators" name="address_donators"
                                rows="3">{{ old('address_donators') }}</textarea>
                        @error('address_donators')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group mb-3 w-75">
                        <label for="contact_donators" class="text-title1 text-blue">No. Telp / WA</label>
                        <input type="text"
                            class="form-control mt-1 text-title1 text-blue @error('contact_donators') is-invalid @enderror"
                            id="contact_donators" name="contact_donators"
                            placeholder="Masukkan No. Telp / WA" required value="{{ old('contact_donators') }}">
                        @error('contact_donators')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <label for="password" class="text-title1 text-blue">Password Baru</label>
                    <div class="input-group mb-3 w-75" id="show_hide_password">
                        <input class="form-control text-title1 text-blue @error('password_donators') is-invalid @enderror"
                            type="password" name="password_donators" id="password"
                            placeholder="*****" minlength="5" required value="{{ old('password_donators') }}">
                        <div class="input-group-append">
                            <a href="" class="input-group-text text-decoration-none"><i class="fa fa-eye-slash"
                                                                                        aria-hidden="true"></i></a>
                        </div>
                        @error('password_donators')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <label for="recheck-password" class="text-title1 text-blue">Konfirmasi Password Baru</label>
                    <div class="input-group mb-3 w-75" id="show_hide_password">
                        <input class="form-control text-title1 text-blue" type="password" id="recheck-password"
                            placeholder="*****" minlength="5" required>
                        <div class="input-group-append">
                            <a href="" class="input-group-text text-decoration-none"><i class="fa fa-eye-slash"
                                                                                        aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <button class="btn btn-primary  text-white mt-4 w-75 text-title2" type="submit">Daftar</button>
                   
                </form>
                <p class="text-title2 text-blue mb-5"> Sudah punya akun ? <a href=" {{ url('/login') }}"
                                                                            class="text-decoration-none">
                        <span class="text-red">Masuk</span>
                    </a></p>
            </div>
        </div>
    </div>
    <script src="{{ url('/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ url('/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ url('/js/sb-admin-2.min.js') }}"></script>
</body>
</html>
