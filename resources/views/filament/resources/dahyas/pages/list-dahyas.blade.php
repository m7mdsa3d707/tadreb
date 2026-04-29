<x-filament::page>

@livewire('dahya-month-stats')
    {{-- Month Selector --}}
    <div style="margin-bottom: 24px;">
        {{ $this->form }}
    </div>

    {{-- Create button --}}
    {{-- <div style="margin-bottom: 20px;">
        <a href="{{ \App\Filament\Resources\Dahyas\DahyaResource::getUrl('create') }}"
           style="padding: 8px 18px; background:#14532d; color:#86efac;
                  border-radius:6px; font-size:0.875rem; font-weight:600; text-decoration:none;">
            + Create 4 Weeks for Month
        </a>
    </div> --}}

    @if (empty($weeks))
        <div style="text-align:center; padding:40px; color:#6b7280;">
            No dahya weeks found for {{ $selectedMonth ?? 'selected month' }}.
        </div>
    @endif

    @foreach ($weeks as $week)
    <div style="margin-bottom:16px; padding:16px;
                background:#1f2937; border-radius:8px;
                border-left:4px solid #f59e0b;
                display:flex; align-items:center; justify-content:space-between;">

        <div>
            <span style="font-weight:700; color:#f9fafb;">
                Week {{ $week['week_number'] }} — {{ $selectedMonth }}
            </span>
            <span style="margin-left:16px; color:#6b7280; font-size:0.8rem;">
                {{ $week['date'] }}
            </span>
        </div>

        <div style="display:flex; gap:8px;">
            @if ($week['has_entries'])
                <a href="{{ \App\Filament\Resources\Dahyas\DahyaResource::getUrl('results', ['record' => $week['id']]) }}"
                   style="padding:6px 14px; border-radius:6px; font-size:0.75rem; font-weight:600;
                          background:#1d4ed8; color:#fff; text-decoration:none;">
                    View Results
                </a>
                <a href="{{ \App\Filament\Resources\Dahyas\DahyaResource::getUrl('run', ['record' => $week['id']]) }}"
                   style="padding:6px 14px; border-radius:6px; font-size:0.75rem; font-weight:600;
                          background:#92400e; color:#fde68a; text-decoration:none;">
                    Re-run
                </a>
            @else
                <a href="{{ \App\Filament\Resources\Dahyas\DahyaResource::getUrl('run', ['record' => $week['id']]) }}"
                   style="padding:6px 14px; border-radius:6px; font-size:0.75rem; font-weight:600;
                          background:#14532d; color:#86efac; text-decoration:none;">
                    Run Week
                </a>
            @endif
        </div>
    </div>
    @endforeach

</x-filament::page>