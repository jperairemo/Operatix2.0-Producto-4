<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Zona extends Model{


    use HasFactory;

    protected $table = 'transfer_zona';

    protected $primaryKey = 'id_zona';

    public $timestamps = false;

    protected $fillable = ['descripcion', 'nombre_zona'];


}