<x-filament::widget>
    <x-filament::card>
        <div wire:ignore>
            <canvas id="dahya-chart-{{ $this->getId() }}" height="100"></canvas>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const ctx = document.getElementById('dahya-chart-{{ $this->getId() }}');
                if (!ctx) return;

                const data    = @json($this->getData());
                const options = @json($this->getOptions());

                // Patch MM:SS formatter back in (lost during JSON serialization)
                if (options.scales?.y?.ticks) {
                    options.scales.y.ticks.callback = function(value) {
                        var m = Math.floor(value / 60);
                        var s = value % 60;
                        return m + ':' + (s < 10 ? '0' + s : s);
                    };
                }

                if (options.plugins?.tooltip) {
                    options.plugins.tooltip = {
                        callbacks: {
                            label: function(context) {
                                var val = context.parsed.y;
                                if (val === null) return 'Did not participate';
                                var m = Math.floor(val / 60);
                                var s = val % 60;
                                return 'Duration: ' + m + ':' + (s < 10 ? '0' + s : s);
                            }
                        }
                    };
                }

                new Chart(ctx, {
                    type: 'line',
                    data: data,
                    options: options,
                });
            });
        </script>
    </x-filament::card>
</x-filament::widget>