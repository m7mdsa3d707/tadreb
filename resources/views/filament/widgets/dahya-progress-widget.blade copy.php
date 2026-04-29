@php
    // Pull the chart data
    $chartData    = $this->getData();
    $chartOptions = $this->getOptions();
@endphp

<x-filament-widgets::chart
    :widget="$this"
    :chart-data="$chartData"
    :chart-options="$chartOptions"
/>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Wait for Chart.js to register then patch the tick formatter
        const interval = setInterval(function () {
            if (!window.Chart) return;
            clearInterval(interval);

            Chart.defaults.scales.linear.ticks = Chart.defaults.scales.linear.ticks || {};

            // Override afterBuildTicks for all charts on page
            Chart.register({
                id: 'dahyaTickFormatter',
                afterInit: function(chart) {
                    const yAxis = chart.options?.scales?.y;
                    if (!yAxis) return;

                    yAxis.ticks = yAxis.ticks || {};
                    yAxis.ticks.callback = function(value) {
                        var m = Math.floor(value / 60);
                        var s = value % 60;
                        return m + ':' + (s < 10 ? '0' + s : s);
                    };

                    chart.update();
                }
            });
        }, 100);
    });
</script>