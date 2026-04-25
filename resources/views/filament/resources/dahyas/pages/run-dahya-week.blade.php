<x-filament::page>

    <div style="margin-bottom: 12px;">
        <span style="font-size:1rem; font-weight:700; color:#f9fafb;">
            Week {{ $weekNumber }} — {{ $month }}
        </span>
    </div>

    {{ $this->form }}

    <div style="margin-top: 20px;">
        <x-filament::button wire:click="save" color="success">
            Save Week
        </x-filament::button>
    </div>

</x-filament::page>