<x-filament::page>

<table class="w-full border">
    <thead>
        <tr class="border-b font-bold">
            <th>Role</th>
            <th>Name</th>
            <th>Pushup</th>
            <th>Pullup</th>
            <th>Situp</th>
            <th>Run</th>
            <th>Total</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($results as $row)
        <tr class="border-b">
            <td>{{ $row['role'] }}</td>
            <td>{{ $row['name'] }}</td>
            <td>{{ $row['pushup'] }}</td>
            <td>{{ $row['pullup'] }}</td>
            <td>{{ $row['situp'] }}</td>
            <td>{{ $row['run'] }}</td>
            <td>{{ $row['total'] }}</td>
        </tr>
        @endforeach
    </tbody>

</table>

</x-filament::page>