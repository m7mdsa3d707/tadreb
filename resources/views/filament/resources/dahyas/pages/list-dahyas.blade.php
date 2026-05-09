<x-filament::page>

@livewire('dahya-month-stats')
<script>
(function() {
    // ✅ Unique ID per component instance to avoid conflicts
    // const uid = '{{ md5(uniqid()) }}';
    // const overviewId = 'dahya-overview-' + uid;
    // const distId     = 'dahya-dist-' + uid;
    const wrapper  = document.currentScript?.parentElement;
    const oc = document.querySelector('.dahya-overview-chart');
    const dc = document.querySelector('.dahya-dist-chart');

    let overviewData = { labels: [], avgSeconds: [], participants: [], minY: 0, maxY: 3600 };
    let distData     = { labels: [], counts: [] };

    let overviewInstance = null;
    let distInstance     = null;

    function drawCharts() {
        console.log('drawCharts called');
        console.log('oc:', document.querySelector('.dahya-overview-chart'));
        console.log('dc:', document.querySelector('.dahya-dist-chart'));
        console.log('Chart available:', typeof Chart);
        // const oc = document.getElementById(overviewId);
        if (oc && typeof Chart !== 'undefined') {
            if (overviewInstance) overviewInstance.destroy();
            overviewInstance = new Chart(oc, {
                data: {
                    labels: overviewData.labels || [],
                    datasets: [
                        {
                            type: 'bar', label: 'Participants',
                            data: overviewData.participants || [],
                            backgroundColor: 'rgba(16,185,129,0.5)',
                            borderColor: '#10b981', borderWidth: 1, yAxisID: 'y1',
                        },
                        {
                            type: 'line', label: 'Avg Duration',
                            data: overviewData.avgSeconds || [],
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
                            min: overviewData.minY ?? 0,
                            max: overviewData.maxY ?? 3600,
                            title: { display: true, text: 'Avg Duration', color: '#9ca3af' },
                            ticks: {
                                color: '#9ca3af', stepSize: 60,
                                callback: v => { let m=Math.floor(v/60),s=v%60; return m+':'+(s<10?'0'+s:s); }
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

        // const dc = document.getElementById(distId);
        if (dc && typeof Chart !== 'undefined') {
            if (distInstance) distInstance.destroy();
            distInstance = new Chart(dc, {
                type: 'bar',
                data: {
                    labels: distData.labels || [],
                    datasets: [{
                        label: 'Users', data: distData.counts || [],
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

    function waitForChartJs(cb) {
        if (typeof Chart !== 'undefined') { cb(); }
        else { setTimeout(() => waitForChartJs(cb), 100); }
    }

    waitForChartJs(drawCharts);

    document.addEventListener('livewire:init', () => {
        Livewire.on('overviewChartUpdated', (data) => {
            overviewData = data;
            waitForChartJs(drawCharts);
        });
        Livewire.on('distChartUpdated', (data) => {
            distData = data;
            waitForChartJs(drawCharts);
        });
    });
})();
</script>
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