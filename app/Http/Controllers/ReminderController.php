<?php
 namespace App\Http\Controllers;

use App\Events\ExerciseReminder;
use Illuminate\Http\Request;
use Carbon\Carbon;

class ReminderController extends Controller
{
    public function scheduleReminder(Request $request)
    {
        // التحقق من صحة المدخلات
        $request->validate([
            'time' => 'required|date_format:H:i',

        ]);

        // تحويل الوقت وإيجاد الفارق الزمني
        $userTime = Carbon::createFromFormat('H:i', $request->input('time'));
        $message = $request->input('message');

        $now = Carbon::now();
        $delayInSeconds = $now->diffInSeconds($userTime, false);

        // إذا كان الوقت المحدد في الماضي، أضف 24 ساعة (يوم واحد)
        if ($delayInSeconds < 0) {
            $delayInSeconds += 24 * 60 * 60;
        }

        // استخدام sleep لتأخير التنفيذ بدلاً من الطابور
        sleep($delayInSeconds);

        // تنفيذ الحدث مباشرة
        event(new ExerciseReminder('Its time to practice your exercise'));

        return response()->json(['status' => 'Reminder scheduled successfully!']);
    }
}
