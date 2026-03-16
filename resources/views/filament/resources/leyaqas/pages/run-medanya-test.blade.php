<x-filament::page>
     {{-- Add user from another medanya --}}
    <div style="margin-bottom: 16px; display: flex; align-items: flex-end; gap: 12px;">
        <div style="flex: 1;">
            {{ $this->addUserForm }}
        </div>
        <button
            wire:click="addUser"
            style="padding: 8px 18px; background: #1d4ed8; color: #fff;
                   border: none; border-radius: 6px; font-size: 0.875rem;
                   font-weight: 600; cursor: pointer; white-space: nowrap;">
            + Add User
        </button>
    </div>

    {{-- Main test form --}}
    {{ $this->form }}
</x-filament::page>
