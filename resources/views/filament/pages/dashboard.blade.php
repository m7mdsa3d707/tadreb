<x-filament-panels::page>

    {{-- Your existing widgets --}}
    <x-filament-widgets::widgets
        :widgets="$this->getWidgets()"
        :columns="$this->getColumns()"
    />

    {{-- Dahya Stats with script --}}
    <div style="margin-top: 24px;">
        @livewire('dahya-month-stats')
    </div>

    <script>
    (function() {
        function buildOverview(canvas, d) {
            return new Chart(canvas, {
                data: {
                    labels: d.labels || [],
                    datasets: [
                        {
                            type: 'bar', label: 'Participants',
                            data: d.participants || [],
                            backgroundColor: 'rgba(16,185,129,0.5)',
                            borderColor: '#10b981', borderWidth: 1, yAxisID: 'y1',
                        },
                        {
                            type: 'line', label: 'Avg Duration',
                            data: d.avgSeconds || [],
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
                            min: d.minY ?? 0, max: d.maxY ?? 3600,
                            title: { display: true, text: 'Avg Duration', color: '#9ca3af' },
                            ticks: { color: '#9ca3af', stepSize: 60,
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

        function buildDist(canvas, d) {
            return new Chart(canvas, {
                type: 'bar',
                data: {
                    labels: d.labels || [],
                    datasets: [{
                        label: 'Users', data: d.counts || [],
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

        function drawAll() {
            const oc = document.querySelector('.dahya-overview-chart');
            const dc = document.querySelector('.dahya-dist-chart');
            if (!oc || !dc || typeof Chart === 'undefined') return;
            if (oc.dataset.chart) {
                if (oc._chart) oc._chart.destroy();
                oc._chart = buildOverview(oc, JSON.parse(oc.dataset.chart));
            }
            if (dc.dataset.chart) {
                if (dc._chart) dc._chart.destroy();
                dc._chart = buildDist(dc, JSON.parse(dc.dataset.chart));
            }
        }

        function pollAndDraw() {
            const oc = document.querySelector('.dahya-overview-chart');
            const dc = document.querySelector('.dahya-dist-chart');
            if (oc && dc && oc.dataset.chart && typeof Chart !== 'undefined') {
                drawAll();
            } else {
                setTimeout(pollAndDraw, 200);
            }
        }

        pollAndDraw();

        document.addEventListener('livewire:init', () => {
            Livewire.on('overviewChartUpdated', (data) => {
                const oc = document.querySelector('.dahya-overview-chart');
                if (oc) {
                    oc.dataset.chart = JSON.stringify(data);
                    if (oc._chart) oc._chart.destroy();
                    oc._chart = buildOverview(oc, data);
                }
            });

            Livewire.on('distChartUpdated', (data) => {
                const dc = document.querySelector('.dahya-dist-chart');
                if (dc) {
                    dc.dataset.chart = JSON.stringify(data);
                    if (dc._chart) dc._chart.destroy();
                    dc._chart = buildDist(dc, data);
                }
            });
        });
    })();
    </script>

</x-filament-panels::page>