<x-filament::page>

    {{-- Header --}}
    <div style="margin-bottom: 24px; padding: 10px 16px;
                background:#1f2937; border-radius:8px;
                border-left: 4px solid #f59e0b;">
        <span style="font-size:1rem; font-weight:700; color:#f9fafb;">
            Week {{ $weekNumber }} — {{ $month }}
        </span>
        <span style="margin-left: 16px; color:#6b7280; font-size:0.85rem;">
            {{ $date }}
        </span>
    </div>

    {{-- Results Table --}}
    <div style="overflow-x:auto; border-radius:8px; border:1px solid #374151;">
        <table style="width:100%; border-collapse:collapse; font-size:0.875rem;">
            <thead>
                <tr style="background:#1f2937;">
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:center;
                               color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Rank</th>
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:left;
                               color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Role</th>
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:left;
                               color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Name</th>
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:center;
                               color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Duration (MM:SS)</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($results as $i => $row)
                <tr style="background:{{ $i % 2 === 0 ? '#1f2937' : '#111827' }};">

                    {{-- Rank badge --}}
                    <td style="border:1px solid #374151; padding:10px 16px; text-align:center;">
                        @if ($row['rank'] === 1)
                            <span style="display:inline-block; padding:2px 10px; border-radius:9999px;
                                         font-size:0.75rem; font-weight:700;
                                         background:#78350f; color:#fde68a;">
                                🥇 1st
                            </span>
                        @elseif ($row['rank'] === 2)
                            <span style="display:inline-block; padding:2px 10px; border-radius:9999px;
                                         font-size:0.75rem; font-weight:700;
                                         background:#374151; color:#d1d5db;">
                                🥈 2nd
                            </span>
                        @elseif ($row['rank'] === 3)
                            <span style="display:inline-block; padding:2px 10px; border-radius:9999px;
                                         font-size:0.75rem; font-weight:700;
                                         background:#7c2d12; color:#fdba74;">
                                🥉 3rd
                            </span>
                        @else
                            <span style="color:#6b7280; font-weight:600;">{{ $row['rank'] }}</span>
                        @endif
                    </td>

                    <td style="border:1px solid #374151; padding:10px 16px; color:#d1d5db;">
                        {{ $row['role'] }}
                    </td>
                    <td style="border:1px solid #374151; padding:10px 16px;
                               font-weight:600; color:#f9fafb;">
                        {{ $row['name'] }}
                    </td>
                    <td style="border:1px solid #374151; padding:10px 16px;
                               text-align:center; font-weight:700; color:#f9fafb;
                               font-size:1rem; letter-spacing:0.05em;">
                        {{ $row['duration'] }}
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="4" style="border:1px solid #374151; padding:20px;
                                           text-align:center; color:#6b7280;">
                        No results yet —
                        <a href="{{ \App\Filament\Resources\Dahyas\DahyaResource::getUrl('run', ['record' => $weekId]) }}"
                           style="color:#60a5fa; text-decoration:underline;">
                            Run the week now
                        </a>
                    </td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>

</x-filament::page>