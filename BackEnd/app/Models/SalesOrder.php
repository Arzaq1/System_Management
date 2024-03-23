<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SalesOrder extends Model
{
    use HasFactory;
    protected $fillable = ['user_id', 'customer_id', 'total_amount'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function salesOrderItems()
    {
        return $this->hasMany(SalesOrderItem::class);
    }
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}
