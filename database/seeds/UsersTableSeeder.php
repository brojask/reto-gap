<?php

use Illuminate\Database\Seeder;
use App\User;

// composer require laracasts/testdummy
use Laracasts\TestDummy\Factory as TestDummy;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        User::create([                
            'name' => 'my_user',
            'email' =>  'my_user@email.com',
            'password' =>bcrypt('my_password')
        ]);
    }
}
