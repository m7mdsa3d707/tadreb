<?php

namespace Database\Seeders;

use App\Models\FogUsers;
use Illuminate\Database\Seeder;

use function Symfony\Component\Clock\now;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $file = file_get_contents(database_path('data/fog-users.json'));
        
        $users = json_decode($file, true);

        foreach ($users as $user) {
            FogUsers::create([
            'name' => $user['name'],
            'role' => "جندى",
            'age' => $user['age'],
            'groub_id' => $user['groub_id'],
            'medanya_id' => $user['medanya_id'],
            'created_at' => now(),
            'updated_at' => now()
            ]);
        }

    }
}
