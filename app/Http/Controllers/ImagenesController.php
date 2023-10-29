<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Imagenes;
use Illuminate\Support\Facades\Response;

class ImagenesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $imagenes = Imagenes::all();
        $response = Response::json($imagenes,200);
        return $response;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if(empty(trim($request->miniatura))) {
            $mensaje = "El campo 'miniatura' está vacío";
        } elseif(empty(trim($request->enlace))) {
            $mensaje = "El campo 'enlace' está vacío";
        } elseif(empty(trim($request->nombre))) {
            $mensaje = "El campo 'nombre' está vacío";
        } elseif(empty(trim($request->descripcion))) {
            $mensaje = "El campo 'descripcion' está vacío";
        } elseif(empty(trim($request->autor))) {
            $mensaje = "El campo 'autor' está vacío";
        } elseif(empty(trim($request->genero))) {
            $mensaje = "El campo 'genero' está vacío";
        } else {
            $imagen = new Imagenes(array(
                'enlace_miniatura' => trim($request->miniatura),
                'enlace_grande' => trim($request->enlace),
                'nombre' => trim($request->nombre),
                'descripcion' => trim($request->descripcion),
                'autor' => trim ($request->autor),
                'genero' => trim($request->genero),
                'user_id' => 1
            ));
            $imagen->save();
            $mensaje = "La imagen ha sido agregada correctamente";
            return Response::json([
                'message' => $mensaje,
                'data' => $imagen,
            ], 201);
        }
        return Response::json([
            'message' => $mensaje,
        ], 400);
    }
    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $imagen = Imagenes::find($id);

    if (!$imagen) {
        return response()->json(['error' => 'Album no encontrado'], 404);
    }

    return response()->json($imagen);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request,string $id)
    {
        $imagen = Imagenes::find($id);

        if (!$imagen) {
            return response()->json(['error' => 'Imagen no encontrada'], 404);
        }
    
        return response()->json($imagen);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $imagen = Imagenes::find($id);

        if (!$imagen) {
            return response()->json(['error' => 'Imagen no encontrada'], 404);
        }
    
        $imagen->update($request->all());
    
        return response()->json(['message' => 'Imagen actualizada con éxito']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $imagen = Imagenes::find($id);
        if (!$imagen) {
            return response()->json(['error' => 'Imagen no encontrada'], 404);
        }
        $imagen->delete();
    
        return response()->json(['message' => 'Imagen eliminada con éxito']);
    }
}
