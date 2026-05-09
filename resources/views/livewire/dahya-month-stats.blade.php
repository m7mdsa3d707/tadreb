<div>
    {{-- Month Selector --}}
    <div style="margin-bottom: 24px;">
        <select wire:model.live="selectedMonth"
                style="padding:8px 12px; background:#111827; border:1px solid #374151;
                       border-radius:6px; color:#f9fafb; font-size:0.875rem;">
            @foreach(['January','February','March','April','May','June',
                      'July','August','September','October','November','December'] as $m)
                <option value="{{ $m }}" @selected($selectedMonth === $m)>{{ $m }}</option>
            @endforeach
        </select>
    </div>

    {{-- Show empty state message if no data --}}
    @if (empty($stats))
        <div style="text-align:center; padding:40px; color:#6b7280;">
            No dahya data for {{ $selectedMonth }}.
        </div>
    @else
        {{-- Stats Cards (only when data exists) --}}
        <div style="display:grid; grid-template-columns:repeat(auto-fit, minmax(200px, 1fr));
                    gap:16px; margin-bottom:32px;">
            @foreach ($stats as $stat)
            <div style="background:#1f2937; border-radius:8px; padding:16px;
                        border-left:4px solid #f59e0b;">
                <div style="font-size:0.75rem; color:#9ca3af; text-transform:uppercase;
                            font-weight:600; margin-bottom:8px;">
                    {{ $stat['week'] }}
                    <span style="color:#6b7280; font-weight:400; margin-left:6px;">
                        {{ $stat['date'] }}
                    </span>
                </div>
                <div style="display:flex; gap:24px; margin-top:4px;">
                    <div>
                        <div style="font-size:1.5rem; font-weight:700; color:#f9fafb;">
                            {{ $stat['participants'] }}
                        </div>
                        <div style="font-size:0.75rem; color:#6b7280;">Participants</div>
                    </div>
                    <div>
                        <div style="font-size:1.5rem; font-weight:700; color:#3b82f6;">
                            {{ $stat['avg'] }}
                        </div>
                        <div style="font-size:0.75rem; color:#6b7280;">Avg Time</div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    @endif

    {{-- ** ALWAYS RENDER CANVAS ELEMENTS ** --}}
    <div style="background:#1f2937; border-radius:8px; padding:24px;
                border:1px solid #374151; margin-bottom:32px;">
        <h3 style="color:#9ca3af; font-size:0.875rem; font-weight:600;
                   text-transform:uppercase; margin-bottom:16px;">
            Weekly Overview
        </h3>
        {{-- <canvas id="dahya-overview-chart" height="100"></canvas> --}}
        {{-- Overview canvas --}}
        <canvas class="dahya-overview-chart" data-uid="{{ md5(uniqid()) }}" height="100"></canvas>
        {{-- <p style="color:red;">Component ID: {{ $this->getId() }}</p> --}}
    </div>

    <div style="background:#1f2937; border-radius:8px; padding:24px; border:1px solid #374151;">
        <div style="display:flex; align-items:center; justify-content:space-between;
                    margin-bottom:16px; flex-wrap:wrap; gap:8px;">
            <h3 style="color:#9ca3af; font-size:0.875rem; font-weight:600;
                       text-transform:uppercase; margin:0;">Duration Distribution</h3>
            <div style="display:flex; gap:8px; flex-wrap:wrap;">
                <button wire:click="$set('distributionScope', 'month')"
                    style="padding:5px 12px; border-radius:6px; font-size:0.75rem; font-weight:600;
                           cursor:pointer; border:none;
                           background:{{ $distributionScope === 'month' ? '#3b82f6' : '#374151' }};
                           color:{{ $distributionScope === 'month' ? '#fff' : '#9ca3af' }};">
                    Whole Month
                </button>
                @foreach ($weeks as $week)
                <button wire:click="$set('distributionScope', '{{ $week['id'] }}')"
                    style="padding:5px 12px; border-radius:6px; font-size:0.75rem; font-weight:600;
                           cursor:pointer; border:none;
                           background:{{ $distributionScope == $week['id'] ? '#f59e0b' : '#374151' }};
                           color:{{ $distributionScope == $week['id'] ? '#111827' : '#9ca3af' }};">
                    {{ $week['label'] }}
                </button>
                @endforeach
            </div>
        </div>
        {{-- <canvas id="dahya-dist-chart" height="100"></canvas> --}}
        {{-- Dist canvas --}}  
        <canvas class="dahya-dist-chart" data-uid="{{ md5(uniqid()) }}" height="100"></canvas>
        
{{-- <p style="color:red;">Overview canvas ID: overview-{{ $this->getId() }}</p> --}}
    </div>

   {{-- Replace @once block with this --}}
{{-- <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> --}}

</div>
