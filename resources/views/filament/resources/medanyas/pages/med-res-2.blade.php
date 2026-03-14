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

<div style="overflow-x: auto; border-radius: 8px; border: 1px solid #374151;">
    <table style="width: 100%; border-collapse: collapse; font-size: 0.875rem;">
        <thead>
            <tr style="background-color: #1f2937;">
                <th rowspan="2" style="border: 1px solid #374151; padding: 12px 16px; text-align: left; font-size: 0.75rem; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.05em;">Role</th>
                <th rowspan="2" style="border: 1px solid #374151; padding: 12px 16px; text-align: left; font-size: 0.75rem; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.05em;">Name</th>
                @foreach (['Pushup', 'Pullup', 'Situp', 'Run'] as $label)
                    <th colspan="2" style="border: 1px solid #374151; padding: 12px 16px; text-align: center; font-size: 0.75rem; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.05em;">{{ $label }}</th>
                @endforeach
                <th rowspan="2" style="border: 1px solid #374151; padding: 12px 16px; text-align: center; font-size: 0.75rem; text-transform: uppercase; color: #9ca3af; letter-spacing: 0.05em;">Total</th>
            </tr>
            <tr style="background-color: #111827;">
                @foreach (['Pushup', 'Pullup', 'Situp', 'Run'] as $_)
                    <th style="border: 1px solid #374151; padding: 8px 12px; text-align: center; font-size: 0.7rem; color: #6b7280;">Score</th>
                    <th style="border: 1px solid #374151; padding: 8px 12px; text-align: center; font-size: 0.7rem; color: #6b7280;">Result</th>
                @endforeach
            </tr>
        </thead>

        <tbody>
            @foreach ($results as $i => $row)
            <tr style="background-color: {{ $i % 2 === 0 ? '#1f2937' : '#111827' }};">
                <td style="border: 1px solid #374151; padding: 10px 16px; color: #d1d5db;">{{ $row['role'] }}</td>
                <td style="border: 1px solid #374151; padding: 10px 16px; font-weight: 600; color: #f9fafb;">{{ $row['name'] }}</td>

                @foreach (['pushup', 'pullup', 'situp', 'run'] as $exercise)
                    <td style="border: 1px solid #374151; padding: 10px 12px; text-align: center; color: #d1d5db;">
                        {{ $row[$exercise]['score'] }}
                    </td>
                    <td style="border: 1px solid #374151; padding: 10px 12px; text-align: center;">
                        @if ($row[$exercise]['result'] === 'Pass')
                            <span style="display: inline-block; padding: 2px 10px; border-radius: 9999px; font-size: 0.75rem; font-weight: 600; background-color: #14532d; color: #86efac;">Pass</span>
                        @elseif ($row[$exercise]['result'] === 'Fail')
                            <span style="display: inline-block; padding: 2px 10px; border-radius: 9999px; font-size: 0.75rem; font-weight: 600; background-color: #7f1d1d; color: #fca5a5;">Fail</span>
                        @else
                            <span style="color: #4b5563;">—</span>
                        @endif
                    </td>
                @endforeach

                <td style="border: 1px solid #374151; padding: 10px 16px; text-align: center; font-weight: 700; color: #f9fafb;">
                    {{ $row['total'] }}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

</x-filament::page>
