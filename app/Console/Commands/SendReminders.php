<?php
namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\ScheduledReminder;
use Carbon\Carbon;
use App\Events\ExerciseReminder;
use App\Models\Reminder;
use Illuminate\Support\Facades\Log as FacadesLog;
use Log; // أضف هذا للتصحيح

class SendScheduledReminders extends Command
{
    protected $signature = 'reminders:send';
    protected $description = 'Send scheduled reminders';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $now = Carbon::now();
        FacadesLog::info("Checking for reminders at: " . $now); // رسالة للتصحيح
        $reminders = Reminder::where('time', '<=', $now)->get();

        foreach ($reminders as $reminder) {
            FacadesLog::info("Sending reminder: " . $reminder->message); // رسالة للتصحيح
            event(new ExerciseReminder($reminder->message));
            $reminder->delete();
        }
    }
}
