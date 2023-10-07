<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;

class CarsController extends Controller
{
    public function getPoints($budget, $handling, $speed, $comfort, $looks)
    {
        $cars = Car::select('Make', 'model', 'Year', 'price', 'Handling', 'Speed', 'Comfort', 'Looks')->get();
        foreach ($cars as $car) {
            $car->points = 0;

            $car->points += $car->handling - $handling;
            $car->points += $car->speed - $speed;
            $car->points += $car->comfort - $comfort;
            $car->points += $car->looks - $looks;

            $car->points = $car->price > $budget ? 0 : $car->points;

            $cars->requirements_met = 0;
            if ($car->handling >= $handling) {
                $cars->requirements_met++;
            }
            if ($car->speed >= $speed) {
                $cars->requirements_met++;
            }
            if ($car->comfort >= $comfort) {
                $cars->requirements_met++;
            }
            if ($car->looks >= $looks) {
                $cars->requirements_met++;
            }
        }

        $topCars = array_orderby($cars, 'requirements_met', SORT_DESC, 'points', SORT_DESC)->take(3);

        return response()->json($topCars, 200, [], JSON_UNESCAPED_UNICODE);
    }
}
