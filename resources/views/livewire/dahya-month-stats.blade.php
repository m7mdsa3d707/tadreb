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

    @if (empty($stats))
        <div style="text-align:center; padding:40px; color:#6b7280;">
            No dahya data for {{ $selectedMonth }}.
        </div>
    @else

    {{-- Stats Cards --}}
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

   {{-- Overview Chart --}}
    <div style="background:#1f2937; border-radius:8px; padding:24px;
                border:1px solid #374151; margin-bottom:32px;">
        <h3 style="color:#9ca3af; font-size:0.875rem; font-weight:600;
                   text-transform:uppercase; margin-bottom:16px;">
            Weekly Overview
        </h3>
        <canvas id="dahya-overview-chart" height="100"></canvas>
    </div>

    {{-- Distribution Chart --}}
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
        <canvas id="dahya-dist-chart" height="100"></canvas>
    </div>

    @push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        (function() {
            const overviewData = {
                labels:       {{ Js::from($overviewChart['labels']       ?? []) }},
                avgSeconds:   {{ Js::from($overviewChart['avgSeconds']   ?? []) }},
                participants: {{ Js::from($overviewChart['participants'] ?? []) }},
                minY:         {{ Js::from($overviewChart['minY']         ?? 0) }},
                maxY:         {{ Js::from($overviewChart['maxY']         ?? 3600) }},
            };

            const distData = {
                labels: {{ Js::from($distChart['labels'] ?? []) }},
                counts: {{ Js::from($distChart['counts'] ?? []) }},
            };

            function drawCharts() {
                // Overview
                const oc = document.getElementById('dahya-overview-chart');
                if (oc && typeof Chart !== 'undefined') {
                    if (oc._chart) oc._chart.destroy();
                    oc._chart = new Chart(oc, {
                        data: {
                            labels: overviewData.labels,
                            datasets: [
                                {
                                    type: 'bar', label: 'Participants',
                                    data: overviewData.participants,
                                    backgroundColor: 'rgba(16,185,129,0.5)',
                                    borderColor: '#10b981', borderWidth: 1, yAxisID: 'y1',
                                },
                                {
                                    type: 'line', label: 'Avg Duration',
                                    data: overviewData.avgSeconds,
                                    borderColor: '#3b82f6',
                                    backgroundColor: 'rgba(59,130,246,0.1)',
                                    tension: 0.4, pointRadius: 5, spanGaps: false, yAxisID: 'y',
                                },
                            ],
                        },
                        options: {
                            responsive: true,
                            scales: {
                                x: { ticks: { color: '#9ca3af' }, grid: { color: '#374151' } },
                                y: {
                                    position: 'left', reverse: true,
                                    min: overviewData.minY, max: overviewData.maxY,
                                    title: { display: true, text: 'Avg Duration', color: '#9ca3af' },
                                    ticks: { color: '#9ca3af', stepSize: 60,
                                        callback: v => { var m=Math.floor(v/60),s=v%60; return m+':'+(s<10?'0'+s:s); }
                                    },
                                    grid: { color: '#374151' },
                                },
                                y1: {
                                    position: 'right',
                                    title: { display: true, text: 'Participants', color: '#9ca3af' },
                                    ticks: { color: '#9ca3af', stepSize: 1 },
                                    grid: { drawOnChartArea: false },
                                },
                            },
                            plugins: { legend: { labels: { color: '#9ca3af' } } },
                        },
                    });
                }

                // Distribution
                const dc = document.getElementById('dahya-dist-chart');
                if (dc && typeof Chart !== 'undefined') {
                    if (dc._chart) dc._chart.destroy();
                    dc._chart = new Chart(dc, {
                        type: 'bar',
                        data: {
                            labels: distData.labels,
                            datasets: [{
                                label: 'Users', data: distData.counts,
                                backgroundColor: 'rgba(245,158,11,0.6)',
                                borderColor: '#f59e0b', borderWidth: 1, borderRadius: 4,
                            }],
                        },
                        options: {
                            responsive: true,
                            scales: {
                                x: { title: { display: true, text: 'Duration (MM:00)', color: '#9ca3af' },
                                     ticks: { color: '#9ca3af' }, grid: { color: '#374151' } },
                                y: { title: { display: true, text: 'Number of Users', color: '#9ca3af' },
                                     ticks: { color: '#9ca3af', stepSize: 1 },
                                     grid: { color: '#374151' }, beginAtZero: true },
                            },
                            plugins: { legend: { display: false } },
                        },
                    });
                }
            }

            // ✅ Wait for Chart.js to load then draw
            function waitForChartJs(callback) {
                if (typeof Chart !== 'undefined') {
                    callback();
                } else {
                    setTimeout(() => waitForChartJs(callback), 100);
                }
            }

            waitForChartJs(drawCharts);

            // ✅ Redraw when Livewire updates
            document.addEventListener('livewire:init', () => {
                Livewire.on('overviewChartUpdated', ({ labels, avgSeconds, participants, minY, maxY }) => {
                    overviewData.labels       = labels;
                    overviewData.avgSeconds   = avgSeconds;
                    overviewData.participants = participants;
                    overviewData.minY         = minY;
                    overviewData.maxY         = maxY;
                    waitForChartJs(drawCharts);
                });

                Livewire.on('distChartUpdated', ({ labels, counts }) => {
                    distData.labels = labels;
                    distData.counts = counts;
                    waitForChartJs(drawCharts);
                });
            });
        })();
    </script>
    @endpush

    @endif
</div>

