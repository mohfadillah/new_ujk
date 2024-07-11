@extends('layouts.app')
@section('content')
    <form action="{{route('user.store')}}" method="POST">
        @csrf
        <div class="col-xxl">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    {{-- <h5 class="mb-0">Basic Layout</h5> --}}
                    <small class="text-muted float-end">Inpus Data User</small>
                </div>
                <div class="card-body">
                    <form>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Name</label>
                            <div class="col-sm-10">
                                <input type="text" name="nama_lengkap" class="form-control" id="basic-default-name"
                                    placeholder="Input Full Name" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-email">Email</label>
                            <div class="col-sm-10">
                                <div class="input-group input-group-merge">
                                    <input type="text" name="email" id="basic-default-email" class="form-control"
                                        placeholder="fadil@gmail.com" aria-label="john.doe"
                                        aria-describedby="basic-default-email2" />
                                    <span class="input-group-text" id="basic-default-email2">@example.com</span>
                                </div>
                                <div class="form-text">You can use letters, numbers & periods</div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Password</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" id="basic-default-phone"
                                    class="form-control phone-mask" placeholder="***" aria-label="658 799 8941"
                                    aria-describedby="basic-default-phone" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-message">Level</label>
                            <div class="col-sm-10">
                                <select id="inputLevel" name="id_level" class="form-control">
                                    <option disabled selected hidden>--Pilih Level--</option>
                                    @foreach ($dataLevel as $level)
                                        <option value="{{ $level->id }}">
                                            {{ $level->nama_level }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Send</button>
                                <a href="{{ url()->previous() }}" type="" class="btn btn-danger">Kembali</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </form>
@endsection
