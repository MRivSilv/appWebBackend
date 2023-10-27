<?php

public function search(Request $request) {
    $searchTerm = $request->query('q');
    
    // Realiza la búsqueda en tu base de datos utilizando Eloquent o Query Builder
    $results = imagenes::where('autor', 'LIKE', "%$searchTerm%")->get()
    ->orWhere('genero','LIKE', "%$searchTerm")->get()
    ->orWhere('nombre', 'LIKE', "%$searchTerm")->get()
    ->orWhere('descripcion', 'LIKE', "%$searchTerm")->get();

    return response()->json(['results' => $results]);
}