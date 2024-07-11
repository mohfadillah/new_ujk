@extends('layouts.app')
@section('title', 'Change Category')
@section('titlecate', 'Category')
@section('content')
    <form action="{{ route('kategori.update', $edit->id) }}" method="POST">
        @csrf
        @method("PUT")
        <div class="form-group mb-3">
            <label for="">Change Category</label>
            <input value="{{$edit->nama_kategori}}" type="text" class="form-control" name="nama_kategori" placeholder="Input Category">
        </div>
        <div class="form-group mb-3">
            <input type="submit" class="btn btn-primary" value="Save">
            <input type="reset" class="btn btn-danger" value="Cancel">
            <a href="{{ url()->previous() }}" class="btn btn-info">Back</a>
        </div>
    </form>
@endsection
