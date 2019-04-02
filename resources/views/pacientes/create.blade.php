@extends('layouts.default')
@section('titulo_pagina','Nutriólogo | Pacientes')
@section('titulo','Nutriólogo')
@section('subtitulo','Agregar Pacientes')
@section('contenido')
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Agregar Pacientes</h3>
            </div>
            <div class="box-body">
                <form method="POST" action="{{ route('pacientes.store') }}">
                    @csrf
                    <div class="form-group">
                        <label>Nombre</label>
                        <input class="form-control" type="text" name="nombre">
                    </div>


                    <div class="form-group">
                        <label>Apellidos</label>
                        <input class="form-control" type="text" name="apellidos">
                    </div>


                    <div class="form-group">
                        <label>Fecha de nacimiento</label>
                        <input class="form-control" type="date" name="nacimiento">
                    </div>


                    <div class="form-group">
                        <label>Correo electrónico</label>
                        <input class="form-control" type="email" name="email">
                    </div>


                    <div class="form-group">
                        <label>Contraseña</label>
                        <input class="form-control" type="password" name="passowrd">
                    </div>


                    <div class="form-group">
                        <label>Confirmar contraseña</label>
                        <input class="form-control" type="password">
                    </div>


                    <div class="form-group">
                        <label>Fotografía</label>
                        <input class="form-control" type="file" name="fotografia">
                    </div>

                    <button class="btn btn-primary" type="submit">Guardar nuevo paciente</button>
            </form>
        </div>
    </div>
</div>
</div>
@endsection