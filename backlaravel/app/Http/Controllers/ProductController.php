<?php

namespace App\Http\Controllers;

use App\Product;
use App\Bodega;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$total = DB::table('products')->groupBy('id_bodega')->having('id_bodega', '>', 100)->get();
        
        
        return ['prod'=>Product::all(),'bod'=>Bodega::all(), 'tot'=>Product::all()->groupBy('id_bodega')->values()];
    }


    public function bodegas()
    {
        return Bodega::all();
    }

    public function search($text, $type)
    {
       $select = [];
        if ( $type != 0) {
            $select['estado']=$type;
        }
        if ($text == 'null') {
            return Product::where($select)->get();
        }else{
            return Product::where($select)
            ->where('nombre', 'like', '%'.$text.'%')
            ->orWhere('codigo', 'like', '%'.$text.'%')
            ->orWhere('descripcion', 'like', '%'.$text.'%')
            ->get();
        }
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $prod = new Product;
        $prod->nombre = $request->nombre;
        $prod->id_bodega = $request->id_bodega;
        $prod->codigo = $request->codigo;
        $prod->descripcion = $request->descripcion;
        $prod->estado = $request->estado;
        $prod->existencia = $request->existencia;
        $prod->save();
        return 'true';
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        unset($request['bodega']);
        return  Product::where('id', $request->id)->update($request->toArray());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        return Product::destroy($product->id);
    }
}
