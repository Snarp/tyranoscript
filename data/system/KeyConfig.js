/*
Valid in Ver4.50 or later
This file is used to set the device input / output of Tyrannoscript.


<Settable Actions> 
    save:Open save screen
    load:Open loading screen
    next:Move on to next sentence. Left-click operation
    menu:Display menu screen
    title:Return to title
    skip:Start skipping
    backlog:Show backlog
    fullscreen:Toggle full-screen view
    qsave:Execute quick-save
    qload:Execute quick-load
    auto:Turn on auto mode
    hidemessage:Hide message box
    You can also specify a function.
    For example, to display the config screen, specify the scenario file of the config screen with "sleepgame" in the function:
    function(){
            // call config
            TYRANO.kag.ftag.startTag("sleepgame", {storage:"config.ks"});
    }
    
<Keyboard Specification Method> 
    
    Place the key code and the action when that key is pressed.
    To find a key code:
    http://shanabrian.com/web/javascript/keycode.php
    Pressing the key on the above site will give you the corresponding number.
    
    Below are some key codes that are commonly used in visual novels.
    32:space 13:Enter 17:Ctrl 
    
<Mouse Operations>
    
    right:right-click
    center:center-click
    wheel_up:mouse wheel up
    wheel_down:mouse wheel down
    

<Gestures>

    Limited to smartphones and tablets. You can call the system in response to flick operations.
    For example, "swipe_up_1" can be used to specify what happens when you flick up the screen.
    This "1" number can be used to indicated the number of fingers used.
    
    So, if you want to differentiate between a swipe operation with one finger and a swipe operation with two fingers, 
    you can define "swipe_up_1" and "swipe_up_2" separately.
    
    "hold" is activated when you hold down on a point on the screen for a certain period of time.
    
*/

var __tyrano_key_config = {

    // Keyboard Operations
    "key" : {
    
        "32" : "hidemessage", //Space
        "13" : "next", // Enter
        "91" : "skip", //Command(Mac)  
        "17" : "skip", //Ctrl (Windows)
        "67":function(){ // c ボタン
            // "config" call example commented out
            /*
            if (TYRANO.kag.tmp.sleep_game != null) {
                return false;
            }
            TYRANO.kag.ftag.startTag("sleepgame", {storage:"config.ks"});
            */
        }
        
    },

    // Mouse Operations
    "mouse" : {
        "right" : "hidemessage", // Right-click behavior
        "center": "menu", // Center-click behavior
        "wheel_up" : "backlog", // Wheel-up behavior
        "wheel_down" : "next" // Wheel-down behavior
    },
    
    // Gestures
    "gesture" : {
        "swipe_up_1" : {
            "action" : "backlog"
        },
        "swipe_left_1" : {
            "action" : "auto"
        },
        "swipe_right_1" : {
            "action" : "menu"
        },
        "swipe_down_1" : {
            "action" : "load"
        },
        
        "hold" : {
            "action" : "skip",
        }
    }

}; 