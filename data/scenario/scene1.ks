;Tyrannoscript Sample Game

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="room.jpg" time="100"]

;Show menu button
@showmenubutton

;Message window settings
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;Adjust charater display area
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;Display message (dialog) window
@layopt layer=message0 visible=true

;Area where character names are displayed
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;Declares the area defined above as the character name display region (without this, the "#" fields below won't work)
[chara_config ptext="chara_name_area"]

;Declare the characters that appear in the game
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="Akane"  ]
;Define character facial expressions
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="Yamato" ]

#
Well, I came because I heard it was easy to make a game...[p]

...but there's no one around?[p]
......[p]
Should I just go...?[p]

[font  size="30"   ]
#?
No, wait ----[p]
[resetfont  ]

#
Who's there!?[p]

;Character appearance
[chara_show  name="akane"  ]
#?
Hello.[p]
My name is Akane.[p]
#Akane
Could it be that you're interested in developing a visual novel?[p]
;FIXME: In English, all the whitespace is stripped out of the "glink" button text, giving you "Yes,Iam." and "Iguess..."
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="Yes, I am."  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="Absolutely!"  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"  text="I guess..."  target="*selectinterest"  ]
[s  ]
*selectinterest

[chara_mod  name="akane" face="happy"  ]
#Akane
Oh! I'm happy to hear that![p]
#
・・・・・[p]
Well, I'd like to, but it's hard, isn't it?[p]
And I've never done any programming...[p]

[chara_mod name="akane" face="default"]

#Akane
I can tell you all about it,[p]
if you want to listen? You do want to listen, right?[p]
#
No, not really -
#Akane
[cm]
[font size=40]
[delay speed=160]
TYRANOSCRIPT [p]
[delay speed=30]
[resetfont]

#
・・・・[p]
#Akane
With Tyrannoscript, it's easy to create a full-fledged novel game.[p]
#
Huh. That's cool, I guess.[p]

[chara_mod  name="akane" face="happy"  ]
#Akane
R-really!?[p]
You can learn TyranoScript's functions just by playing this game -[p]
- So, please, stay with me until the end![p]

First, TyranoScript works with [font color="red"]「HTML5」[resetfont].[p]


#
O-okay?[p]
#Akane
That means that a game made with Tyrannoscript can be run in many different environments![p]
#
Oh. That's cool.[p]
If I make a game, I'd like a lot of people to be able to play it.[p]

#Akane
Naturally, TyranoScript games can run on Windows PCs.[p]
It supports MacOS, too![p]
And since it's HTML5, you can deploy your games in the browser.[p]
Just paste the code into a website, and anyone can play your game![p]
And don't worry - all major browsers are supported.[p]
#
Maybe I can do this...[p]

But lately, smartphones have gotten big - a lot of people are using those to get online.[p]
Will they run on phones, too?[p]

#Akane
You can even play games made with Tyrannoscript on your smartphone![p]
iPhone, Android, and even tablets like iPads.[p]
#
Oh.[p]

#Akane
It can also be made into an app and sold via the iOS App Store and Google Play.[p]
#
Oh, maybe I can finally escape from poverty![p]
#Akane
But remember - if you don't make an interesting game, it won't sell![p]
#
Ugh...[p]

#Akane
Now, let's try changing the scene.[p]
We'll move into the corridor.[p]
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]

#
Oh, we moved into the corridor.[p]

#Akane
It's cold! Let's go back into the classroom.[p]

[bg  time="1000" method="slide"  storage="room.jpg" ]
#
Oh, the scene transition animation was a little different this time.[p]
#Akane
Yeah, I was in a hurry.[p]
TyranoScript lets you use all kinds of visual effects -[p]
- More than 10 kinds of screen transition effects.[p]
#
Hm. That's convenient.[p]

#Akane
Next, let's change the message display method.[p]
In addition to adventure games, like you're playing now,[r]
TyranoScript can also be used to make full-screen games like visual novels.[p]

#

;Hide character
[chara_hide name="akane"]


;Switch message box to cover full screen
[position layer="message0" left=20 top=40 width=1200 height=660 page=fore visible=true ]

What do you think? This method is good if you want to read carefully. [l][r]
TyranoScript is extremely powerful and flexible.[l][cm]

[font size=40]Change the font size
[l][r]
[resetfont]
[font color="pink"]Change the color
[resetfont][l][r]

[ruby text=Ru]ル[ruby text=bi]ビ can be sprinkled in [ruby text=eas]簡[ruby text=ily]単, like this![l]
[cm]

;Write vertically
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]

Text can also be displayed vertically like this.[r][l]
You can use the same functions for vertical text as for horizontal.[r][l]

;Return to horizontal text
[position vertical=false]

You can use horizontal and vertical text to vary the mood of the scene.[r][l]
Now, let's go back to the adventure format.[p]

;Undo the message box expansion
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]

@chara_show name="akane"

#Akane
You can also display an image in the message box.[p]



[font color="0x454D51"]
[deffont color="0x454D51"]


;Remove character name message layer
[free name="chara_name_area" layer="message0"]

;Set up message window
[position layer="message0" width="1280" height="210" top="510" left="0"]
[position layer="message0" frame="frame.png" margint="50" marginl="100" marginr="100" opacity="230" page="fore"]

;Set up character name frame
[ptext name="chara_name_area" layer="message0" color="0xFAFAFA" size="28" bold="true" x="100" y="514"]
[chara_config ptext="chara_name_area"]



How about this?[p]
Make your own design to suit your game.[p]

Also, by default, you can save and load from a button at the bottom right of the screen, but --[p]
-- Suppose that you wanted to customize the window...[p]

; Hide menu button
@hidemenubutton

; Role Buttons Appendix;;;;;;;;;;;;;;


; Role Buttons Layout

; Quick-Save Button
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="40" y="690"]

; Quick-Load Button
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="140" y="690"]

; Save Button
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

; Load Button
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

; Auto Button
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="440" y="690"]

; Skip Button
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="540" y="690"]

; Backlog Button
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="640" y="690"]

; Fullscreen Toggle Button
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

; Config Button (* Calls "config.ks" using "sleepgame")
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

; Menu Button (* Not required if you use role buttons)
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

; Hide Message Window BUtton
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

; Return To Title Button
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;; End Role Button Appendix


-- You can lay the game functions out across the screen like this.[p]
This is called a "role button", and it allows for special functions,[p]
as well as standard ones: [l]
Save, [l]
Load, [l][cm]
Return To Title, 
Show Menu, 
Hide Message, 
Skip, 
Backlog, 
Toggle Fullscreen, 
Quick-Save, 
Quick-Load, 
Auto Mode!
[p]

...gasp, gasp...[p]

#
Are you okay?[p]
You know, with just these options, you won't have much of a game.[p]

#Akane
Well, of course, you can also play music... [l][cm]
Shall I play something?[l][cm]

[link target=*playmusic]【１】Yes, please do.[endlink][r]
[link target=*noplay]【２】No, don't![endlink]
[s]

*playmusic

[cm]
All right, then I'll start. [l]
@playbgm time="3000" storage=music.ogg loop=true
You can also use a gradual fade-in effect.[l][cm]

@jump target="*common_bgm"

*noplay
[cm]
Okay, I won't, then.[l][cm]
But let's give it a try sometime![l][cm]

*common_bgm

Oh, right.[l][cm]
You've just learned how to create story branches.[l][cm]

#Akane
Now, let's introduce another character --[l][cm]
- Yamato.[p]
[chara_show name="yamato"]

-- Just like that. Simple, right?[l][r]
You can add as many characters as you want -- give it a try![p]

#Yamato
Hey, can I go home now?[l][cm]

#Akane
Oh, I'm sorry -- you're excused. Thank you![l][cm]

[chara_hide name="yamato"]

#akane
This concludes my explanation of the basics of TyranoScript.[p]
What do you think?[p]

#
Yeah, I feel like I can make a game like this.[p]

#Akane
That's great![p]
To get started, you should try the official TyranoScript tutorial![p]
Since this game also runs on TyranoScript, its code should be helpful.[p]
Good luck making your game![p]
And thanks for playing.[p]

To wrap things up, I'll link you to some useful information on TyranoScript.[p]
Please check it out. (If you speak Japanese.)[p]

[cm]

*button_link

@layopt layer=message0 visible=false
@layopt layer=fix visible=false
[anim name="akane" left=600 time=1000]

;Show link buttons
[glink text="Introduction to Tyranobuilder" size=20 width=500 x=30 y=100 color=blue target=tyranobuilder ]
[glink text="Production Example" size=20 width=500 x=30 y=160 color=blue target=example ]
[glink text="Applied Techniques" size=20 width=500 x=30 y=220 color=blue target=tech ]
[glink text="Useful Resources" size=20 width=500 x=30 y=280 color=blue target=info ]
[glink text="Tag Reference" size=20 width=500 x=30 y=340 color=blue target=tagref ]

[s]

*tyranobuilder

[cm]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true;
[font color-"red"]
"Tyranobuilder"
[resetfont]
is a free TyranoScript development tool.[p]

[image layer=1 page=fore visible=true top=10 left=50 width=560 height=400  storage = builder.png]

This tool allows you to create visual novels using a GUI.[p]
Even those who don't know scripting can use it -- give it a try![p]
[freeimage layer=1]

@jump target=button_link

[s]
*example
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
Many games have been created using TyranoScript.[p]
Please check out the official website for some examples.[p]

[iscript]
window.open("http://tyrano.jp/home/example");
[endscript]

@jump target=button_link

[cm]
[s]

*tech
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
This demo game teaches only a small sample of TyranoScript's features.[p]
To learn more, try downloading more examples.[p]
Be sure to look at the demo code![p]

[iscript]
window.open("http://tyrano.jp/home/demo");
[endscript]

@jump target=button_link


*info
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
If you have questions about TyranoScript, check out the forums.[p]
There is also a Wiki that you can refer to.[p]
@jump target=button_link

*tagref
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
There is a detailed tag reference page.[p]
Go here to learn how to use all of them.[p]

[iscript]
window.open("http://tyrano.jp/home/tag");
[endscript]

@jump target="*button_link"

[s]