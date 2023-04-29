@extends('layouts.main')

@section('container')
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <h4 class="m-0 font-weight-bold text-blue my-5">Frequently Asked Questions (FAQ)</h4>
            <div id="accordion">
                <div class="card">
                    <div class="card-header" id="faqOne">
                        <h5 class="mb-0">
                            <button class="btn btn-link text-grey text-title1 text-decoration-none"
                                    data-toggle="collapse" data-target="#collapseFaqOne" aria-expanded="true"
                                    aria-controls="collapseFaqOne">
                                <span><i class="fas fa-question-circle text-red"></i></span>
                                Apa itu Dobu ?
                            </button>
                        </h5>
                    </div>

                    <div id="collapseFaqOne" class="collapse show" aria-labelledby="faqOne" data-parent="#accordion">
                        <div class="card-body text-decoration-none">
                            <span><i class="fas fa-quote-right text-red"></i></span>
                            <p class="text-title1" style="color: #0B090A">Dobu adalah sebuah platform berbasis web &
                                mobile yang memudahkan seseorang untuk melakukan donor buku konvalesen yang langsung
                                terhubung dengan setiap kota di Indonesia.</p>

                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="faqTwo">
                        <h5 class="mb-0">
                            <button class="btn btn-link text-grey text-title1 text-decoration-none"
                                    data-toggle="collapse" data-target="#collapseFaqTwo" aria-expanded="false"
                                    aria-controls="collapseFaqTwo">
                                <span><i class="fas fa-question-circle text-red"></i></span>
                                Kemana Buku Buku yang didonasikan dobu?
                            </button>
                        </h5>
                    </div>

                    <div id="collapseFaqTwo" class="collapse" aria-labelledby="faqTwo" data-parent="#accordion">
                        <div class="card-body text-decoration-none">
                            <span><i class="fas fa-quote-right text-red"></i></span>
                            <p class="text-title1" style="color: #0B090A">Dobu akan melakukan donasi kepada
                            daerah daerah yang masih sulit untuk mendapat akses kepada buku buku ataupun toko Buku
                            seperti "gramedia" dobu akan mementingkan wilayah tersebut.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="faqThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link text-grey text-title1 text-decoration-none"
                                    data-toggle="collapse" data-target="#collapseFaqThree" aria-expanded="false"
                                    aria-controls="collapseFaqThree">
                                <span><i class="fas fa-question-circle text-red"></i></span>
                                Apakah donor buku di dobu sulit?
                            </button>
                        </h5>
                    </div>

                    <div id="collapseFaqThree" class="collapse" aria-labelledby="faqThree" data-parent="#accordion">
                        <div class="card-body text-decoration-none">
                            <span><i class="fas fa-quote-right text-red"></i></span>
                            <p class="text-title1" style="color: #0B090A">Tentu tidak donor buku di
                            dobu tidak sulit, tujuan awal dari pembuatan dobu adalah agar semua masyarakat
                            dapat melakukan donasi dengan mudah dan untuk mendorong masyarakat untuk melestarikan budaya 
                            membaca.</p>

                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="faqFour">
                        <h5 class="mb-0">
                            <button class="btn btn-link text-grey text-title1 text-decoration-none"
                                    data-toggle="collapse" data-target="#collapseFaqFour" aria-expanded="false"
                                    aria-controls="collapseFaqFour">
                                <span><i class="fas fa-question-circle text-red"></i></span>
                                Kenapa donor buku itu penting?
                            </button>
                        </h5>
                    </div>

                    <div id="collapseFaqFour" class="collapse" aria-labelledby="faqFour" data-parent="#accordion">
                        <div class="card-body text-decoration-none">
                            <span><i class="fas fa-quote-right text-red"></i></span>
                            <p class="text-title1" style="color: #0B090A">Meningkatkan aksesibilitas pendidikan: 
                            Dengan mendonasikan buku, kita dapat membantu meningkatkan aksesibilitas pendidikan bagi masyarakat yang mungkin 
                            tidak mampu membeli buku baru. Buku-buku yang didonasikan bisa digunakan untuk meningkatkan kualitas pendidikan 
                            di daerah-daerah terpencil atau di sekolah-sekolah yang kekurangan buku-buku.</p>

                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="faqFive">
                        <h5 class="mb-0">
                            <button class="btn btn-link text-grey text-title1 text-decoration-none"
                                    data-toggle="collapse" data-target="#collapseFaqFive" aria-expanded="false"
                                    aria-controls="collapseFaqFive">
                                <span><i class="fas fa-question-circle text-red"></i></span>
                                Siapa dibalik Dobu ?
                            </button>
                        </h5>
                    </div>

                    <div id="collapseFaqFive" class="collapse" aria-labelledby="faqFive" data-parent="#accordion">
                        <div class="card-body text-decoration-none">
                            <span><i class="fas fa-quote-right text-red"></i></span>
                            <p class="text-title1 text-grey">
                                - Muhammad Fatih Raffiesya <br>
                                - Diyas Yakluna Baihaqi <br>
                                - Muhammad Haikal Adriansyah <br>
                                - Arthur <br>
                                - Fandi Ahmad Setyoso <br>
                                - Firas AL-Ghaffar Nugraha <br>
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
