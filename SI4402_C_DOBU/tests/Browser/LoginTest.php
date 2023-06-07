<?php

namespace Tests\Browser;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;

class LoginTest extends DuskTestCase
{
    /**
     * A Dusk test example.
     * @group login
     */
    public function testExample(): void
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->assertSee('Berbagi buku, berbagi jendela dunia');
                    // ->click('a', 'Log in')
                    // ->assertSee('Login');
                    // ->type('email', 'admin@email.com')
                    // ->type('password', '12345')
                    // ->press('Login')
                    // ->assertPathIs('/home');
        });
    }
}