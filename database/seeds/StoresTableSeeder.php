<?php

use Illuminate\Database\Seeder;
use App\Store;

// composer require laracasts/testdummy
use Laracasts\TestDummy\Factory as TestDummy;

class StoresTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,20) as $index)
        {
            Store::create([                
                'name' => $faker->paragraph($nbSentences = 3),
                'address' =>$faker->paragraph($nbSentences = 3)
            ]);
        }
    }
}
