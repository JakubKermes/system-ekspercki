<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;

class CarsController extends Controller
{
    public function getPoints($budget, $handling, $speed, $comfort, $looks)
    {
        $cars = Car::select('Make', 'model', 'Year', 'price', 'Handling', 'Speed', 'Comfort', 'Looks')->get()->toArray();

        // Create an array of objects
        $carObjects = [];

        foreach ($cars as $car) {
            // Convert each car to an object
            $carObject = (object) $car;

            $carObject->points = 0;

            if ($carObject->Handling - $handling > 0) {
                $carObject->points += $carObject->Handling - $handling;
            } else {
                $carObject->points += 0; // Avoid subtracting if it would be negative
            }

            if ($carObject->Speed - $speed > 0) {
                $carObject->points += $carObject->Speed - $speed;
            } else {
                $carObject->points += 0; // Avoid subtracting if it would be negative
            }

            if ($carObject->Comfort - $comfort > 0) {
                $carObject->points += $carObject->Comfort - $comfort;
            } else {
                $carObject->points += 0; // Avoid subtracting if it would be negative
            }

            if ($carObject->Looks - $looks > 0) {
                $carObject->points += $carObject->Looks - $looks;
            } else {
                $carObject->points += 0; // Avoid subtracting if it would be negative
            }


            $carObject->points = $carObject->price > $budget ? 0 : $carObject->points;

            $carObject->requirements_met = 0;
            if ($carObject->Handling >= $handling) {
                $carObject->requirements_met++;
            }
            if ($carObject->Speed >= $speed) {
                $carObject->requirements_met++;
            }
            if ($carObject->Comfort >= $comfort) {
                $carObject->requirements_met++;
            }
            if ($carObject->Looks >= $looks) {
                $carObject->requirements_met++;
            }
            if($carObject->price >= $budget) {
                $carObject->requirements_met = 0;
            }

            // Add the car object to the array of car objects
            $carObjects[] = $carObject;
        }

        usort($carObjects, function ($a, $b) {
            // First, compare based on the number of requirements met (descending order).
            $requirementsComparison = $b->requirements_met - $a->requirements_met;

            // If the number of requirements met is the same, compare based on points (descending order).
            if ($requirementsComparison === 0) {
                return $b->points - $a->points;
            }

            return $requirementsComparison;
        });

        // Take the top 3 cars from the sorted array.
        $topCars = array_slice($carObjects, 0, 3);

        return response()->json($topCars, 200, [], JSON_UNESCAPED_UNICODE);
    }

}
