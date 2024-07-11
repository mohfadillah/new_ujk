@extends('layouts.app')
@section('cardTitle', 'Tambah Kategori Barang')
@section('content')
<form action="{{route('kategori.store')}}" method="POST">
    @csrf
    <div class="form-group mb-3">
        <label for="">Name Category</label>
        <input type="text" class="form-control" name="nama_kategori" placeholder="Input Category">
    </div>
    <div class="form-group mb-3">
        <input type="submit" class="btn btn-primary" value="Save">
        <input type="reset" class="btn btn-danger" value="Cancel">
        <a href="{{url()->previous()}}" class="btn btn-info">Back</a>
    </div>
</form>
@endsection
