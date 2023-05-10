<?php

namespace App\Http\Controllers;

use App\Models\Articel;
use Carbon\Carbon;
use Exception;
use File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Ramsey\Uuid\Uuid;
use Yajra\DataTables\DataTables;

class ArticleEmployeeController extends Controller
{

    public function index()
    {
        return view('pages.Articel.admin', [
            'title' => 'Artikel',
            'active' => 'Articel',
        ]);
    }

    public function data()
    {
        // $model = Donorarticels::where("id_institutions", "=", Auth::user()->id_institutions)->get();

        return DataTables::of($model)
            ->addIndexColumn()
            ->addColumn('thumbnail_articel', function ($model) {
                return '<img src="' . $model->thumbnail_articel . '" height="100px">';
            })
            // ->addColumn('date_articel', function ($model) {
            //     $start = Carbon::parse($model->start_date_articel)->translatedFormat("d/m/Y");
            //     $end = Carbon::parse($model->end_date_articel)->translatedFormat("d/m/Y");
            //     return "$start - $end";
            // })
            // ->addColumn('time_articel', function ($model) {
            //     $start = Carbon::parse($model->start_time_articel)->translatedFormat("h:i");
            //     $end = Carbon::parse($model->end_time_articel)->translatedFormat("h:i");
            //     return "$start - $end";
            // })
            ->addColumn('modified_by', function ($model) {
                if ($model->modified_by == null) {
                    return "-";
                }
                return $model->modified_by;
            })
            ->addColumn('action', function ($model) {
                return (string)view('pages.articel.admin_action', ['model' => $model]);
            })
            ->rawColumns(['thumbnail_articel', 'action'])
            ->toJson();
    }

    public function create()
    {
        return view('pages.articel.admin_create', [
            'title' => 'Artikel',
            'active' => 'articel',
        ]);
    }


    public function store(Request $request)
    {
        $validateData = $request->validate([
            'name_articel' => 'required|max:255',
            'start_date_articel' => 'required|max:255|before:end_date_articel',
            'end_date_articel' => 'required|max:255|after:start_date_articel',
            'start_time_articel' => 'required|max:255',
            'end_time_articel' => 'required|max:255',
            'desc_articel' => 'required',
            'thumbnail_articel' => 'mimes:jpeg,png,jpg,gif,svg',
            'point_articel' => 'required|max:255',
        ]);

        if ($request->thumbnail_articel != null) {
            $thumbnailFile = $request->file('thumbnail_articel');

            $uuidShorten = str_replace('-', '', Auth::user()->id_institutions);
            $thumbnailName = time() . "_" . $uuidShorten . "_" . $thumbnailFile->getClientOriginalName();

            $thumbnailPath = "upload/$uuidShorten/thumbnail";
            $thumbnailFile->move($thumbnailPath, $thumbnailName);
            $validateData['thumbnail_articel'] = "/$thumbnailPath/$thumbnailName";
        }

        $validateData['id_articel'] = Uuid::uuid4()->toString() . "\n";
        $validateData['id_institutions'] = Auth::user()->id_institutions;

        Donorarticels::create($validateData);

        return redirect('/_articel')->with('info', 'Artikel berhasil ditambahkan');
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $data = Donorarticels::find($id);
        return view('pages.articel.admin_edit', [
            'title' => 'Artikel',
            'active' => 'articel',
            'data' => $data
        ]);
    }


    public function update(Request $request, $id)
    {
        $validateData = $request->validate([
            'name_articel' => 'required|max:255',
            'desc_articel' => 'required',
            'thumbnail_articel' => 'mimes:jpeg,png,jpg,gif,svg',
            'modified_by' => 'required',
        ]);

        if ($request->thumbnail_articel != null) {

            $data = Donorarticels::findOrFail($id);
            if (File::exists(public_path($data->thumbnail_articel))) {
                File::delete(public_path($data->thumbnail_articel));
            }

            $thumbnailFile = $request->file('thumbnail_articel');

            $uuidShorten = str_replace('-', '', Auth::user()->id_institutions);
            $thumbnailName = time() . "_" . $uuidShorten . "_" . $thumbnailFile->getClientOriginalName();

            $thumbnailPath = "upload/$uuidShorten/thumbnail";
            $thumbnailFile->move($thumbnailPath, $thumbnailName);
            $validateData['thumbnail_articel'] = "/$thumbnailPath/$thumbnailName";
        }

        Donorarticels::where('id_articel', '=', $id)->update($validateData);

        return redirect('/_articel')->with('info', "Artikel berhasil diupdate");
    }

    public function destroy($id)
    {
        try {
            $data = Donorarticels::findOrFail($id);
            $data->delete();
            if (File::exists(public_path($data->thumbnail_articel))) {
                File::delete(public_path($data->thumbnail_articel));
            }
            return redirect('/_articel')->with('info', "Artikel berhasil dihapus");
        } catch (Exception $e) {
            return redirect('/_articel')->with('info', "Artikel gagal dihapus");
        }
    }
}
