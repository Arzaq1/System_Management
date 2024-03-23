<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    use HasFactory;
    protected $fillable = ['name'];

    public function attributevalue()
    {
        return $this->hasMany(AttributeValue::class);
    }
}
