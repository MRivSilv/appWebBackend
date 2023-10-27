<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class imagenes extends Model
{
    protected $fillable = [
        'nombre','descripcion', 'genero', 'autor','enlace_miniatura','enlace_grande','user_id'
    ];
}
