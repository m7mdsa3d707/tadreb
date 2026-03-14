{{-- <x-filament::page>

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

</x-filament::page> --}}<x-filament::page>

<div class="fi-section-content overflow-x-auto">

<table class="w-full text-sm text-left border border-gray-300 dark:border-gray-700">

    <thead class="bg-gray-100 dark:bg-gray-800">
        <tr>
            <th class="border px-4 py-3" rowspan="2">Role</th>
            <th class="border px-4 py-3" rowspan="2">Name</th>

            <th class="border px-4 py-3 text-center" colspan="2">Pushup</th>
            <th class="border px-4 py-3 text-center" colspan="2">Pullup</th>
            <th class="border px-4 py-3 text-center" colspan="2">Situp</th>
            <th class="border px-4 py-3 text-center" colspan="2">Run</th>

            <th class="border px-4 py-3 text-center" rowspan="2">Total</th>
        </tr>

        <tr class="text-xs text-center bg-gray-50 dark:bg-gray-900">
            @foreach (['Pushup', 'Pullup', 'Situp', 'Run'] as $_)
                <th class="border px-3 py-2">Score</th>
                <th class="border px-3 py-2">Result</th>
            @endforeach
        </tr>
    </thead>

    <tbody>
        @foreach ($results as $row)
        <tr class="hover:bg-gray-50 dark:hover:bg-gray-800">

            <td class="border px-4 py-3">{{ $row['role'] }}</td>
            <td class="border px-4 py-3 font-medium">{{ $row['name'] }}</td>

            @foreach (['pushup', 'pullup', 'situp', 'run'] as $exercise)

                <td class="border px-4 py-3 text-center">
                    {{ $row[$exercise]['score'] }}
                </td>

                <td class="border px-4 py-3 text-center">
                    {{ $row[$exercise]['result'] }}
                </td>

            @endforeach

            <td class="border px-4 py-3 text-center font-bold">
                {{ $row['total'] }}
            </td>

        </tr>
        @endforeach
    </tbody>

</table>

</div>

</x-filament::page>
