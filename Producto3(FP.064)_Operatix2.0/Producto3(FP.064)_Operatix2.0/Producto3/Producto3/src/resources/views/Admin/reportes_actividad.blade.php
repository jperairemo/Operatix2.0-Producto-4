<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Reportes de Actividad</title>
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>
<body>

<div class="reportes-container">
    <h1 class="titulo-reporte">📊 Reportes de Actividad</h1>

    <h2>Resumen</h2>
    <ul>
        <li><strong>Total de reservas:</strong> {{ $totalReservas ?? 0 }}</li>
        <li><strong>Total de hoteles registrados:</strong> {{ $totalHoteles ?? 0 }}</li>
        <li>
            <strong>Zona más reservada:</strong>
            @if(isset($zonaMasReservada->nombre_zona))
                {{ $zonaMasReservada->nombre_zona }} ({{ $zonaMasReservada->total }} reservas)
            @else
                N/D (0 reservas)
            @endif
        </li>
    </ul>

    <h2>Últimas Reservas</h2>
    <table class="tabla-estilizada">
        <thead>
            <tr>
                <th>ID</th>
                <th>Email Cliente</th>
                <th>Origen</th>
                <th>Destino</th>
                <th>Fecha Reserva</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($ultimasReservas as $reserva)
                <tr>
                    <td>{{ $reserva->id_reserva }}</td>
                    <td>{{ $reserva->email_cliente }}</td>
                    <td>{{ $reserva->origen_vuelo_entrada ?? 'N/D' }}</td>
                    <td>{{ $reserva->nombre_zona ?? 'N/D' }}</td>
                    <td>{{ $reserva->fecha_reserva }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h2>Últimos Hoteles Registrados</h2>
    <table class="tabla-estilizada">
        <thead>
            <tr>
                <th>ID</th>
                <th>Zona</th>
                <th>Comisión</th>
                <th>Usuario</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($ultimosHoteles as $hotel)
                <tr>
                    <td>{{ $hotel->id_hotel }}</td>
                    <td>{{ $hotel->nombre_zona ?? $hotel->id_zona }}</td>
                    <td>{{ $hotel->Comision }}</td>
                    <td>{{ $hotel->usuario }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h2>Reservas por Día (7 últimos días)</h2>
    <table class="tabla-estilizada">
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Total de Reservas</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($reservasPorDia as $fila)
                <tr>
                    <td>{{ $fila->fecha }}</td>
                    <td>{{ $fila->total }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="volver-menu">
        <a href="{{ url('/admin/home') }}">← Volver al Panel de Administración</a>
    </div>
</div>

</body>
</html>
