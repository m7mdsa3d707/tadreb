<x-filament::page>

    <div style="margin-bottom: 12px;">
        <span style="font-size:1rem; font-weight:700; color:#f9fafb;">
            Week {{ $weekNumber }} — {{ $month }}
        </span>
    </div>

    {{-- Date picker --}}
    {{ $this->form }}

    {{-- Add user back --}}
    <div style="margin-top: 20px; margin-bottom: 16px;
                display:flex; align-items:flex-end; gap:12px;">
        <div style="flex:1;">
            {{ $this->addUserForm }}
        </div>
        <button
            wire:click="addUser"
            style="padding: 8px 18px; background:#1d4ed8; color:#fff;
                   border:none; border-radius:6px; font-size:0.875rem;
                   font-weight:600; cursor:pointer; white-space:nowrap;">
            + Add User
        </button>
    </div>

    {{-- Users table with checkboxes --}}
    <div style="overflow-x:auto; border-radius:8px; border:1px solid #374151;">
        <table style="width:100%; border-collapse:collapse; font-size:0.875rem;">
            <thead>
                <tr style="background:#1f2937;">
                    <th style="border:1px solid #374151; padding:10px 12px; text-align:center; width:40px;">
                        <input type="checkbox"
                            wire:click="$toggle('selectAll')"
                            @if(count($selectedUsers) === count($users ?? [])) checked @endif
                            style="cursor:pointer; width:16px; height:16px;">
                    </th>
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:left; color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Role</th>
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:left; color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Name</th>
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:center; color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Minutes</th>
                    <th style="border:1px solid #374151; padding:10px 16px; text-align:center; color:#9ca3af; font-size:0.7rem; text-transform:uppercase;">Seconds</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($users ?? [] as $i => $user)
                <tr style="background:{{ $i % 2 === 0 ? '#1f2937' : '#111827' }};">
                    <td style="border:1px solid #374151; padding:10px 12px; text-align:center;">
                        <input type="checkbox"
                            wire:model="selectedUsers"
                            value="{{ $user['fog_user_id'] }}"
                            style="cursor:pointer; width:16px; height:16px;">
                    </td>
                    <td style="border:1px solid #374151; padding:10px 16px; color:#d1d5db;">
                        {{ $user['role'] }}
                    </td>
                    <td style="border:1px solid #374151; padding:10px 16px; font-weight:600; color:#f9fafb;">
                        {{ $user['name'] }}
                    </td>
                    <td style="border:1px solid #374151; padding:6px 12px; text-align:center;">
                        <input type="number"
                            wire:model="users.{{ $i }}.duration_minutes"
                            min="0" max="99"
                            placeholder="00"
                            style="width:70px; padding:6px 8px; text-align:center;
                                   background:#111827; border:1px solid #374151;
                                   border-radius:6px; color:#f9fafb; font-size:0.875rem;">
                    </td>
                    <td style="border:1px solid #374151; padding:6px 12px; text-align:center;">
                        <input type="number"
                            wire:model="users.{{ $i }}.duration_seconds"
                            min="0" max="59"
                            placeholder="00"
                            style="width:70px; padding:6px 8px; text-align:center;
                                   background:#111827; border:1px solid #374151;
                                   border-radius:6px; color:#f9fafb; font-size:0.875rem;">
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="5" style="border:1px solid #374151; padding:20px;
                                           text-align:center; color:#6b7280;">
                        No users loaded.
                    </td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>

    <div style="margin-top: 20px;">
        <x-filament::button wire:click="save" color="success">
            Save Week
        </x-filament::button>
    </div>

</x-filament::page>