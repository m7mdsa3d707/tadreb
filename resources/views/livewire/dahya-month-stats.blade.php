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
    <div style="display:grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
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

    {{-- Chart --}}
    <div style="background:#1f2937; border-radius:8px; padding:24px;
                border:1px solid #374151;">
        <div wire:ignore>
            <canvas id="dahya-month-chart" height="100"></canvas>
        </div>
    </div>

    @endif
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    document.addEventListener('livewire:navigated', initChart);
    document.addEventListener('DOMContentLoaded', initChart);

    function initChart() {
        const ctx = document.getElementById('dahya-month-chart');
        if (!ctx) return;

        // Destroy existing chart if any
        if (ctx._chartInstance) {
            ctx._chartInstance.destroy();
        }

        const labels       = @json($chart['labels'] ?? []);
        const avgSeconds   = @json($chart['avgSeconds'] ?? []);
        const participants = @json($chart['participants'] ?? []);

        ctx._chartInstance = new Chart(ctx, {
            data: {
                labels: labels,
                datasets: [
                    {
                        type: 'bar',
                        label: 'Participants',
                        data: participants,
                        backgroundColor: 'rgba(16,185,129,0.5)',
                        borderColor: '#10b981',
                        borderWidth: 1,
                        yAxisID: 'y1',
                    },
                    {
                        type: 'line',
                        label: 'Avg Duration',
                        data: avgSeconds,
                        borderColor: '#3b82f6',
                        backgroundColor: 'rgba(59,130,246,0.1)',
                        tension: 0.4,
                        pointRadius: 5,
                        spanGaps: false,
                        yAxisID: 'y',
                    },
                ],
            },
            options: {
                responsive: true,
                interaction: { mode: 'index', intersect: false },
                scales: {
                    x: {
                        ticks: { color: '#9ca3af' },
                        grid:  { color: '#374151' },
                    },
                    y: {
                        position: 'left',
                        reverse: true,
                        title: { display: true, text: 'Avg Duration', color: '#9ca3af' },
                        ticks: {
                            color: '#9ca3af',
                            stepSize: 60,
                            callback: function(value) {
                                var m = Math.floor(value / 60);
                                var s = value % 60;
                                return m + ':' + (s < 10 ? '0' + s : s);
                            }
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
                plugins: {
                    legend: { labels: { color: '#9ca3af' } },
                    tooltip: {
                        callbacks: {
                            label: function(context) {
                                if (context.dataset.yAxisID === 'y') {
                                    var val = context.parsed.y;
                                    if (val === null) return 'No data';
                                    var m = Math.floor(val / 60);
                                    var s = val % 60;
                                    return 'Avg: ' + m + ':' + (s < 10 ? '0' + s : s);
                                }
                                return 'Participants: ' + context.parsed.y;
                            }
                        }
                    }
                },
            },
        });
    }

    // Re-init chart when Livewire updates the month
    Livewire.on('$refresh', () => setTimeout(initChart, 100));
</script>