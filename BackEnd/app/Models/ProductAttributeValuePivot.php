<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductAttributeValuePivot extends Model
{
    use HasFactory;
    protected $fillable = ['product_id', 'attribute_value_id'];
}
