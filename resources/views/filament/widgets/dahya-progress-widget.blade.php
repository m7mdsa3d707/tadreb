<x-filament-widgets::widget>
    <x-filament::section>
        <x-slot name="heading">Dahya Progress</x-slot>

        <canvas
            id="dahya-progress-{{ $this->getId() }}"
            data-chart='@json($this->getData())'
            data-options='@json($this->getOptions())'
            height="120"
        ></canvas>
    </x-filament::section>

    <script>
    (function() {
        const id      = 'dahya-progress-{{ $this->getId() }}';
        const canvas  = document.getElementById(id);
        if (!canvas) return;

        const chartData    = JSON.parse(canvas.dataset.chart);
        const chartOptions = JSON.parse(canvas.dataset.options);

        // Patch MM:SS callback back in
        if (chartOptions.scales?.y?.ticks) {
            chartOptions.scales.y.ticks.callback = function(value) {
                var m = Math.floor(value / 60);
                var s = value % 60;
                return m + ':' + (s < 10 ? '0' + s : s);
            };
        }

        function draw() {
            if (typeof Chart === 'undefined') {
                setTimeout(draw, 100);
                return;
            }
            if (canvas._chart) canvas._chart.destroy();
            canvas._chart = new Chart(canvas, {
                type: 'line',
                data: chartData,
                options: chartOptions,
            });
        }

        draw();
    })();
    </script>
</x-filament-widgets::widget>