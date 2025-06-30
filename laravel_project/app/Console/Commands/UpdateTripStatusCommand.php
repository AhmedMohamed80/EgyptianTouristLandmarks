<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Trip;

class UpdateTripStatusCommand extends Command
{
    protected $signature = 'trip:update-status';
    protected $description = 'Update trip status based on trip date';

    public function handle()
    {
        Trip::all()->each->updateTripStatus();
        $this->info('Trip statuses updated successfully!');
    }
}