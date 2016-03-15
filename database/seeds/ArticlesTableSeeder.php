<?php

use Illuminate\Database\Seeder;
use App\Article;

// composer require laracasts/testdummy
use Laracasts\TestDummy\Factory as TestDummy;

class ArticlesTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,50) as $index)
        {

            Article::create([                
                'name' => $faker->paragraph($nbSentences = 2),                
                'description' =>$faker->paragraph($nbSentences = 3),
                'price' =>$faker->randomFloat($nbMaxDecimals = NULL, $min = 0, $max = NULL),
                'total_in_shelf' =>$faker->numberBetween($min = 0, $max = 400),
                'total_in_vault' =>$faker->numberBetween($min = 0, $max = 9000),
                'store_id' =>$faker->numberBetween($min = 1, $max = 20)
            ]);
        }
    }
}
