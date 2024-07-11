<?php

namespace App\Http\Controllers;

use App\Models\Level;
use Illuminate\Http\Request;

class LevelController extends Controller
{
    public function index()
    {
        $dataLevel = Level::all();
        return view('level.index', compact('dataLevel'));
    }
    public function create()
    {
        return view('level.create');
    }
    public function store(Request $request)
    {
        Level::create($request->all());
        return redirect()->to('level');
    }
    public function edit(string $id)
    {
        $edit = Level::find($id);
        return view('level.edit', compact('edit'));
    }
    public function update(Request $request, string $id)
    {
        Level::where('id', $id)->update([
            'nama_level' => $request->nama_level
        ]);
        return redirect()->to('level');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Level::where('id', $id)->delete();
        return redirect()->to('level');
    }
}
