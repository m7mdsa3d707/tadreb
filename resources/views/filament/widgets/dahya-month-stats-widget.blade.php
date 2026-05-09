<x-filament-widgets::widget>
    @livewire('dahya-month-stats')
</x-filament-widgets::widget>

<script>
(function() {
    function drawCharts(overviewData, distData) {
        const oc = document.querySelector('.dahya-overview-chart');
        const dc = document.querySelector('.dahya-dist-chart');

        if (oc && typeof Chart !== 'undefined') {
            if (oc._chart) oc._chart.destroy();
            oc._chart = new Chart(oc, {
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

        if (dc && typeof Chart !== 'undefined') {
            if (dc._chart) dc._chart.destroy();
            dc._chart = new Chart(dc, {
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

    // Store latest data
    let latestOverview = { labels: [], avgSeconds: [], participants: [], minY: 0, maxY: 3600 };
    let latestDist     = { labels: [], counts: [] };

    document.addEventListener('livewire:init', () => {
        Livewire.on('overviewChartUpdated', (data) => {
            latestOverview = data;
            setTimeout(() => drawCharts(latestOverview, latestDist), 100);
        });

        Livewire.on('distChartUpdated', (data) => {
            latestDist = data;
            setTimeout(() => drawCharts(latestOverview, latestDist), 100);
        });
    });

    // Also try drawing after page load in case events already fired
    window.addEventListener('load', () => {
        setTimeout(() => drawCharts(latestOverview, latestDist), 500);
    });
})();
</script>
