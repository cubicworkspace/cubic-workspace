<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],

    // 'facebook' => [
    //     'client_id' => '667129853491146',
    //     'client_secret' => '30a56448accfaa78aabe614af2c577c7',
    //     'redirect' => 'http://workshare.id/auth/facebook/callback',
    // ],

    'facebook' => [
        'client_id' => '150976162161190',
        'client_secret' => '90f5b039f4f2964d095c44ac4dd3109f',
        'redirect' => 'http://localhost:8000/auth/facebook/callback',
    ],

    'google' => [
        'client_id' => '133621152015-iml9f46eriqp0oci8i04fij4icr52hre.apps.googleusercontent.com',
        'client_secret' => 'XUy1fC2YNhxjLoLx7wBuqbRI',
        'redirect' => 'http://localhost:8000/auth/google/callback',
    ],

    // 'google' => [
    //     'client_id' => '133621152015-bf3mqvqgmddq781k0puldbbcku0k6554.apps.googleusercontent.com',
    //     'client_secret' => 'm7Gs2VzhJT78yJVzvLDZYWGs',
    //     'redirect' => 'http://workshare.id/auth/google/callback',
    // ],

];
