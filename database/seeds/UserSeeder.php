<?php

use App\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
            [
                'role_id' => 1,
                'name' => 'Admin',
                'username' => 'admin',
                'email' => 'admin@blog.com',
                'password' => bcrypt('123456789'),
            ],
            [
                'role_id' => 2,
                'name' => 'Author',
                'username' => 'author',
                'email' => 'author@blog.com',
                'password' => bcrypt('123456789'),
            ],
        ]);
    }
}
