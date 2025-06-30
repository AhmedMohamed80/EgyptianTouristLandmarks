<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;
use App\Console\Commands\UpdateTripStatusCommand;
use Illuminate\Foundation\Bus\PendingChain;
use Illuminate\Support\Facades\Schedule;

Schedule::command(UpdateTripStatusCommand::class)->daily();

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');
