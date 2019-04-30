<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DietaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dietas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $nuevaDieta = new Dieta();
        $nuevaDieta->id_paciente = $request->input('paciente');
        $nuevaDieta->inicio_semana = $request->input('semana');
        if($nuevaDieta->save()) {
            // ºº Domingo ºº
            // - Desayuno
            $desayunoDomingo = new ComidaDieta();
            $desayunoDomingo->id_dieta = $nuevaDieta->id;
            $desayunoDomingo->id_dia_semana = 1;
            $desayunoDomingo->id_tiempo_alimentacion = 1;
            $desayunoDomingo->titulo = $request->input('desayuno_domingo');
            $desayunoDomingo->descripcion = $request->input('descripcion_desayuno_domingo');
            $desayunoDomingo->save();
            // - Comida
            $comidaDomingo = new ComidaDieta();
            $comidaDomingo->id_dieta = $nuevaDieta->id;
            $comidaDomingo->id_dia_semana = 1;
            $comidaDomingo->id_tiempo_alimentacion = 1;
            $comidaDomingo->titulo = $request->input('comida_domingo');
            $comidaDomingo->descripcion = $request->input('descripcion_comida_domingo');
            $comidaDomingo->save();
            // - Cena
            $cenaDomingo = new ComidaDieta();
            $cenaDomingo->id_dieta = $nuevaDieta->id;
            $cenaDomingo->id_dia_semana = 1;
            $cenaDomingo->id_tiempo_alimentacion = 1;
            $cenaDomingo->titulo = $request->input('cena_domingo');
            $cenaDomingo->descripcion = $request->input('descripcion_cena_domingo');
            $cenaDomingo->save();

            // ºº Lunes ºº
            // - Desayuno
            $desayunoLunes = new ComidaDieta();
            $desayunoLunes->id_dieta = $nuevaDieta->id;
            $desayunoLunes->id_dia_semana = 2;
            $desayunoLunes->id_tiempo_alimentacion = 1;
            $desayunoLunes->titulo = $request->input('desayuno_lunes');
            $desayunoLunes->descripcion = $request->input('descripcion_desayuno_lunes');
            $desayunoLunes->save();
            // - Comida
            $comidaLunes = new ComidaDieta();
            $comidaLunes->id_dieta = $nuevaDieta->id;
            $comidaLunes->id_dia_semana = 2;
            $comidaLunes->id_tiempo_alimentacion = 1;
            $comidaLunes->titulo = $request->input('comida_lunes');
            $comidaLunes->descripcion = $request->input('descripcion_comida_lunes');
            $comidaLunes->save();
            // - Cena
            $cenaLunes = new ComidaDieta();
            $cenaLunes->id_dieta = $nuevaDieta->id;
            $cenaLunes->id_dia_semana = 2;
            $cenaLunes->id_tiempo_alimentacion = 1;
            $cenaLunes->titulo = $request->input('cena_lunes');
            $cenaLunes->descripcion = $request->input('descripcion_cena_lunes');
            $cenaLunes->save();

            // ºº Martes ºº
            // - Desayuno
            $desayunoMartes = new ComidaDieta();
            $desayunoMartes->id_dieta = $nuevaDieta->id;
            $desayunoMartes->id_dia_semana = 3;
            $desayunoMartes->id_tiempo_alimentacion = 1;
            $desayunoMartes->titulo = $request->input('desayuno_martes');
            $desayunoMartes->descripcion = $request->input('descripcion_desayuno_martes');
            $desayunoMartes->save();
            // - Comida
            $comidaMartes = new ComidaDieta();
            $comidaMartes->id_dieta = $nuevaDieta->id;
            $comidaMartes->id_dia_semana = 3;
            $comidaMartes->id_tiempo_alimentacion = 1;
            $comidaMartes->titulo = $request->input('comida_martes');
            $comidaMartes->descripcion = $request->input('descripcion_comida_martes');
            $comidaMartes->save();
            // - Cena
            $cenaMartes = new ComidaDieta();
            $cenaMartes->id_dieta = $nuevaDieta->id;
            $cenaMartes->id_dia_semana = 3;
            $cenaMartes->id_tiempo_alimentacion = 1;
            $cenaMartes->titulo = $request->input('cena_martes');
            $cenaMartes->descripcion = $request->input('descripcion_cena_martes');
            $cenaMartes->save();

            // ºº Miercoles ºº
            // - Desayuno
            $desayunoMiercoles = new ComidaDieta();
            $desayunoMiercoles->id_dieta = $nuevaDieta->id;
            $desayunoMiercoles->id_dia_semana = 4;
            $desayunoMiercoles->id_tiempo_alimentacion = 1;
            $desayunoMiercoles->titulo = $request->input('desayuno_miercoles');
            $desayunoMiercoles->descripcion = $request->input('descripcion_desayuno_miercoles');
            $desayunoMiercoles->save();
            // - Comida
            $comidaMiercoles = new ComidaDieta();
            $comidaMiercoles->id_dieta = $nuevaDieta->id;
            $comidaMiercoles->id_dia_semana = 4;
            $comidaMiercoles->id_tiempo_alimentacion = 1;
            $comidaMiercoles->titulo = $request->input('comida_miercoles');
            $comidaMiercoles->descripcion = $request->input('descripcion_comida_miercoles');
            $comidaMiercoles->save();
            // - Cena
            $cenaMiercoles = new ComidaDieta();
            $cenaMiercoles->id_dieta = $nuevaDieta->id;
            $cenaMiercoles->id_dia_semana = 4;
            $cenaMiercoles->id_tiempo_alimentacion = 1;
            $cenaMiercoles->titulo = $request->input('cena_miercoles');
            $cenaMiercoles->descripcion = $request->input('descripcion_cena_miercoles');
            $cenaMiercoles->save();

            // ºº Jueves ºº
            // - Desayuno
            $desayunoJueves = new ComidaDieta();
            $desayunoJueves->id_dieta = $nuevaDieta->id;
            $desayunoJueves->id_dia_semana = 5;
            $desayunoJueves->id_tiempo_alimentacion = 1;
            $desayunoJueves->titulo = $request->input('desayuno_jueves');
            $desayunoJueves->descripcion = $request->input('descripcion_desayuno_jueves');
            $desayunoJueves->save();
            // - Comida
            $comidaJueves = new ComidaDieta();
            $comidaJueves->id_dieta = $nuevaDieta->id;
            $comidaJueves->id_dia_semana = 5;
            $comidaJueves->id_tiempo_alimentacion = 1;
            $comidaJueves->titulo = $request->input('comida_jueves');
            $comidaJueves->descripcion = $request->input('descripcion_comida_jueves');
            $comidaJueves->save();
            // - Cena
            $cenaJueves = new ComidaDieta();
            $cenaJueves->id_dieta = $nuevaDieta->id;
            $cenaJueves->id_dia_semana = 5;
            $cenaJueves->id_tiempo_alimentacion = 1;
            $cenaJueves->titulo = $request->input('cena_jueves');
            $cenaJueves->descripcion = $request->input('descripcion_cena_jueves');
            $cenaJueves->save();

            // ºº Viernes ºº
            // - Desayuno
            $desayunoViernes = new ComidaDieta();
            $desayunoViernes->id_dieta = $nuevaDieta->id;
            $desayunoViernes->id_dia_semana = 6;
            $desayunoViernes->id_tiempo_alimentacion = 1;
            $desayunoViernes->titulo = $request->input('desayuno_viernes');
            $desayunoViernes->descripcion = $request->input('descripcion_desayuno_viernes');
            $desayunoViernes->save();
            // - Comida
            $comidaViernes = new ComidaDieta();
            $comidaViernes->id_dieta = $nuevaDieta->id;
            $comidaViernes->id_dia_semana = 6;
            $comidaViernes->id_tiempo_alimentacion = 1;
            $comidaViernes->titulo = $request->input('comida_viernes');
            $comidaViernes->descripcion = $request->input('descripcion_comida_viernes');
            $comidaViernes->save();
            // - Cena
            $cenaViernes = new ComidaDieta();
            $cenaViernes->id_dieta = $nuevaDieta->id;
            $cenaViernes->id_dia_semana = 6;
            $cenaViernes->id_tiempo_alimentacion = 1;
            $cenaViernes->titulo = $request->input('cena_viernes');
            $cenaViernes->descripcion = $request->input('descripcion_cena_viernes');
            $cenaViernes->save();

            // ºº Sabado ºº
            // - Desayuno
            $desayunoSabado = new ComidaDieta();
            $desayunoSabado->id_dieta = $nuevaDieta->id;
            $desayunoSabado->id_dia_semana = 7;
            $desayunoSabado->id_tiempo_alimentacion = 1;
            $desayunoSabado->titulo = $request->input('desayuno_sabado');
            $desayunoSabado->descripcion = $request->input('descripcion_desayuno_sabado');
            $desayunoSabado->save();
            // - Comida
            $comidaSabado = new ComidaDieta();
            $comidaSabado->id_dieta = $nuevaDieta->id;
            $comidaSabado->id_dia_semana = 7;
            $comidaSabado->id_tiempo_alimentacion = 1;
            $comidaSabado->titulo = $request->input('comida_sabado');
            $comidaSabado->descripcion = $request->input('descripcion_comida_sabado');
            $comidaSabado->save();
            // - Cena
            $cenaSabado = new ComidaDieta();
            $cenaSabado->id_dieta = $nuevaDieta->id;
            $cenaSabado->id_dia_semana = 7;
            $cenaSabado->id_tiempo_alimentacion = 1;
            $cenaSabado->titulo = $request->input('cena_sabado');
            $cenaSabado->descripcion = $request->input('descripcion_cena_sabado');
            $cenaSabado->save();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
