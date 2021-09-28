/*: #Wait Time Playground
 
 **Projet 1 Part 2*
 *
 ** This function will take in 2 times as two integers each (one representing the hours and one representing the minutes).
 ** The function will then calculate the time in from the start time to the end time
 ** To test this function, two examples were passed through: one with the start time before the end time, and one with the end time before the start (meaning that it stretches over a second day)
 ** PrintTime() is a helper function to make printing times easier
 */

import UIKit

func CalcWaitTime(startHour: Int, startMinutes: Int, endHour: Int, endMinutes: Int) -> (hour: Int, minutes: Int)
{
    var endHour = endHour
    var endMinutes = endMinutes
    
    //if start time is after end time/between two days
    if(startHour>endHour)
    {
        endHour += 24
    }
    
    
    //Adjusting minutes
    if(startMinutes > endMinutes)
    {
        endHour -= 1
        endMinutes += 60
    }
    
    //Subtracting
    let waitHour: Int = endHour-startHour
    let waitMinutes: Int = endMinutes-startMinutes
    
    return (waitHour, waitMinutes)
}

func PrintTime(hour: Int, minutes: Int)
{
    print("Your wait time will be \(hour):\(minutes)")
}

//MAIN PROGRAM
let waitTime1 = CalcWaitTime(startHour: 11, startMinutes: 30, endHour: 13, endMinutes: 15)
PrintTime(hour: waitTime1.hour, minutes: waitTime1.minutes)

let waitTime2 = CalcWaitTime(startHour: 20, startMinutes: 30, endHour: 2, endMinutes: 15)
PrintTime(hour: waitTime2.hour, minutes: waitTime2.minutes)


