<x-filament::page>

<div style="overflow-x: auto; border-radius: 8px; border: 1px solid #374151;">
    <table style="width: 100%; border-collapse: collapse; font-size: 0.875rem;">
        <thead>
            <tr style="background-color: #1f2937;">
                <th rowspan="2" style="border: 1px solid #374151; padding: 10px 16px; text-align: left; font-size: 0.7rem; text-transform: uppercase; color: #9ca3af;">Role</th>
                <th rowspan="2" style="border: 1px solid #374151; padding: 10px 16px; text-align: left; font-size: 0.7rem; text-transform: uppercase; color: #9ca3af;">Name</th>
                @foreach (['Pushup', 'Pullup', 'Situp', 'Run'] as $label)
                    <th colspan="2" style="border: 1px solid #374151; padding: 10px 16px; text-align: center; font-size: 0.7rem; text-transform: uppercase; color: #9ca3af;">{{ $label }}</th>
                @endforeach
                <th rowspan="2" style="border: 1px solid #374151; padding: 10px 16px; text-align: center; font-size: 0.7rem; text-transform: uppercase; color: #9ca3af;">Total</th>
            </tr>
            <tr style="background-color: #111827;">
                @foreach (['Pushup', 'Pullup', 'Situp', 'Run'] as $_)
                    <th style="border: 1px solid #374151; padding: 6px 12px; text-align: center; font-size: 0.7rem; color: #6b7280;">Count</th>
                    <th style="border: 1px solid #374151; padding: 6px 12px; text-align: center; font-size: 0.7rem; color: #6b7280;">Score %</th>
                @endforeach
            </tr>
        </thead>
        <tbody>
            @forelse ($results as $i => $row)
            <tr style="background-color: {{ $i % 2 === 0 ? '#1f2937' : '#111827' }};">
                <td style="border: 1px solid #374151; padding: 10px 16px; color: #d1d5db;">{{ $row['role'] }}</td>
                <td style="border: 1px solid #374151; padding: 10px 16px; font-weight: 600; color: #f9fafb;">{{ $row['name'] }}</td>

                @foreach (['pushup', 'pullup', 'situp', 'run'] as $exercise)
                    <td style="border: 1px solid #374151; padding: 10px 12px; text-align: center; color: #d1d5db;">
                        {{ $row[$exercise]['score'] }}
                    </td>
                    <td style="border: 1px solid #374151; padding: 10px 12px; text-align: center;">
                        @php $pct = $row[$exercise]['result']; @endphp
                        <span style="display:inline-block; padding: 2px 10px; border-radius: 9999px; font-size: 0.75rem; font-weight: 600;
                            background-color: {{ $pct >= 60 ? '#14532d' : '#7f1d1d' }};
                            color: {{ $pct >= 60 ? '#86efac' : '#fca5a5' }};">
                            {{ $pct }}%
                        </span>
                    </td>
                @endforeach

                <td style="border: 1px solid #374151; padding: 10px 16px; text-align: center; font-weight: 700; color: #f9fafb;">
                    {{ $row['total'] }}%
                </td>
            </tr>
            @empty
            <tr>
                <td colspan="11" style="border: 1px solid #374151; padding: 20px; text-align: center; color: #6b7280;">
                    No results found.
                </td>
            </tr>
            @endforelse
        </tbody>
    </table>
</div>

</x-filament::page>
