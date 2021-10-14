;=========================================
; Config Mode - Screen Creation
;=========================================

;	Make message layer 0 invisible 
	[layopt layer="message0" visible="false"]

;	Fix button off
	[clearfix]

;	Disable key config
	[stop_keyconfig]

;	Free layer mode
	[free_layermode time="100" wait="true"]

;	Reset camera
	[reset_camera time="100" wait="true"]
	
;	Clear contents of foreground layer
	[iscript]
	$(".layer_camera").empty();
	[endscript]

;	Hide menu button
	[hidemenubutton]

	[iscript]

	TG.config.autoRecordLabel = "true"; // Enable recording of passing labels

	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume); // BGM volume
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume); // SE volume
	
	tf.current_ch_speed = parseInt(TG.config.chSpeed); // Text display speed
	tf.current_auto_speed = parseInt(TG.config.autoSpeed); // Text display speed on auto
	
	tf.text_skip ="ON"; // Skip unread
	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	tf.user_setting = TG.config.alreadyReadTextColor;
	if(tf.user_setting != 'default'){
		TG.config.alreadyReadTextColor = 'default'; // Try to avoid color changes in already-read text
	}

	[endscript]

	[iscript]

	/* Image path */
	tf.img_path = '../image/config/';

	/* Image path (button) */
	tf.btn_path_off = tf.img_path + 'c_btn.gif';
	tf.btn_path_on  = tf.img_path + 'c_set.png';

	// Width and height of button image
	tf.btn_w  = 46; // width
	tf.btn_h = 46; // height

	// Button display coordinates ("tf.config_y_ch[0]" and "tf.config_y_auto[0]" not used)
	tf.config_x       = [1040, 400,　454, 508, 562, 616, 670, 724, 778, 832, 886]; // X coordinates (common)

	tf.config_y_bgm   = 190; // BGM Y coord
	tf.config_y_se    = 250; // SE Y coord
	tf.config_y_ch    = 325; // Text velocity Y coord
	tf.config_y_auto  = 385; // Auto-speed Y coord

	// Variables storing subscripts of the above array variables. Corresponds to the selected volume and speed.
	tf.config_num_bgm;  // BGM
	tf.config_num_se;   // SE
	tf.config_num_ch;   // Text speed
	tf.config_num_auto; // Text auto speed

	// Character string to be displayed as sample text of text speed (change to your liking)
	tf.text_sample = 'Here is some text. This is how fast the text will move.';

	// Time to keep sample text visible (it is erased 700 milliseconds after the final character is shown)
	tf.text_sample_speed;

	// Variable storing the read skip image filename
	tf.img_unread_skip;

	[endscript]

[cm]

;	Load background for config and transition
	[bg storage="&tf.img_path +'bg_config.png'" time="100"]

;	"Back" button at top-right of the screen
	[button fix="true" graphic="&tf.img_path + 'c_btn_back.png'" enterimg="&tf.img_path + 'c_btn_back2.png'" target="*backtitle" x="1160" y="20"]

[jump target="*config_page"]


*config_page
;------------------------------------------------------------------------------------------------------
; BGM Volume
;------------------------------------------------------------------------------------------------------
	[button name="bgmvol,bgmvol_10"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[1]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  10; tf.config_num_bgm =  1"]
	[button name="bgmvol,bgmvol_20"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[2]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  20; tf.config_num_bgm =  2"]
	[button name="bgmvol,bgmvol_30"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[3]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  30; tf.config_num_bgm =  3"]
	[button name="bgmvol,bgmvol_40"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[4]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  40; tf.config_num_bgm =  4"]
	[button name="bgmvol,bgmvol_50"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[5]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  50; tf.config_num_bgm =  5"]
	[button name="bgmvol,bgmvol_60"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[6]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  60; tf.config_num_bgm =  6"]
	[button name="bgmvol,bgmvol_70"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[7]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  70; tf.config_num_bgm =  7"]
	[button name="bgmvol,bgmvol_80"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[8]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  80; tf.config_num_bgm =  8"]
	[button name="bgmvol,bgmvol_90"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[9]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  90; tf.config_num_bgm =  9"]
	[button name="bgmvol,bgmvol_100" fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[10]" y="&tf.config_y_bgm" exp="tf.current_bgm_vol = 100; tf.config_num_bgm = 10"]

;	BGM Mute
	[button name="bgmvol,bgmvol_0"   fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[0]" y="&tf.config_y_bgm" exp="tf.current_bgm_vol = 0; tf.config_num_bgm = 0"]

;------------------------------------------------------------------------------------------------------
; SE Volume
;------------------------------------------------------------------------------------------------------
	[button name="sevol,sevol_10"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[1]"  y="&tf.config_y_se" exp="tf.current_se_vol =  10; tf.config_num_se =  1"]
	[button name="sevol,sevol_20"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[2]"  y="&tf.config_y_se" exp="tf.current_se_vol =  20; tf.config_num_se =  2"]
	[button name="sevol,sevol_30"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[3]"  y="&tf.config_y_se" exp="tf.current_se_vol =  30; tf.config_num_se =  3"]
	[button name="sevol,sevol_40"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[4]"  y="&tf.config_y_se" exp="tf.current_se_vol =  40; tf.config_num_se =  4"]
	[button name="sevol,sevol_50"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[5]"  y="&tf.config_y_se" exp="tf.current_se_vol =  50; tf.config_num_se =  5"]
	[button name="sevol,sevol_60"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[6]"  y="&tf.config_y_se" exp="tf.current_se_vol =  60; tf.config_num_se =  6"]
	[button name="sevol,sevol_70"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[7]"  y="&tf.config_y_se" exp="tf.current_se_vol =  70; tf.config_num_se =  7"]
	[button name="sevol,sevol_80"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[8]"  y="&tf.config_y_se" exp="tf.current_se_vol =  80; tf.config_num_se =  8"]
	[button name="sevol,sevol_90"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[9]"  y="&tf.config_y_se" exp="tf.current_se_vol =  90; tf.config_num_se =  9"]
	[button name="sevol,sevol_100" fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[10]" y="&tf.config_y_se" exp="tf.current_se_vol = 100; tf.config_num_se = 10"]

;	SE Mute
	[button name="sevol,sevol_0"   fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[0]" y="&tf.config_y_se" exp="tf.current_se_vol = 0; tf.config_num_se = 0"]

;------------------------------------------------------------------------------------------------------
; Text Speed
;------------------------------------------------------------------------------------------------------
	[button name="ch,ch_100" fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[1]"  y="&tf.config_y_ch" exp="tf.set_ch_speed =100; tf.config_num_ch = 0"]
	[button name="ch,ch_80"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[2]"  y="&tf.config_y_ch" exp="tf.set_ch_speed = 80; tf.config_num_ch = 1"]
	[button name="ch,ch_50"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[3]"  y="&tf.config_y_ch" exp="tf.set_ch_speed = 50; tf.config_num_ch = 2"]
	[button name="ch,ch_40"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[4]"  y="&tf.config_y_ch" exp="tf.set_ch_speed = 40; tf.config_num_ch = 3"]
	[button name="ch,ch_30"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[5]"  y="&tf.config_y_ch" exp="tf.set_ch_speed = 30; tf.config_num_ch = 4"]
	[button name="ch,ch_25"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[6]"  y="&tf.config_y_ch" exp="tf.set_ch_speed = 25; tf.config_num_ch = 5"]
	[button name="ch,ch_20"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[7]"  y="&tf.config_y_ch" exp="tf.set_ch_speed = 20; tf.config_num_ch = 6"]
	[button name="ch,ch_11"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[8]"  y="&tf.config_y_ch" exp="tf.set_ch_speed = 11; tf.config_num_ch = 7"]
	[button name="ch,ch_8"   fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[9]"  y="&tf.config_y_ch" exp="tf.set_ch_speed =  8; tf.config_num_ch = 8"]
	[button name="ch,ch_5"   fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[10]" y="&tf.config_y_ch" exp="tf.set_ch_speed =  5; tf.config_num_ch = 9"]

;------------------------------------------------------------------------------------------------------
; Text Auto Speed
;------------------------------------------------------------------------------------------------------
	[button name="auto,auto_5000" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[1]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 5000; tf.config_num_auto = 0"]
	[button name="auto,auto_4500" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[2]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 4500; tf.config_num_auto = 1"]
	[button name="auto,auto_4000" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[3]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 4000; tf.config_num_auto = 2"]
	[button name="auto,auto_3500" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[4]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 3500; tf.config_num_auto = 3"]
	[button name="auto,auto_3000" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[5]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 3000; tf.config_num_auto = 4"]
	[button name="auto,auto_2500" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[6]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 2500; tf.config_num_auto = 5"]
	[button name="auto,auto_2000" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[7]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 2000; tf.config_num_auto = 6"]
	[button name="auto,auto_1300" fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[8]"  y="&tf.config_y_auto" exp="tf.set_auto_speed = 1300; tf.config_num_auto = 7"]
	[button name="auto,auto_800"  fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[9]"  y="&tf.config_y_auto" exp="tf.set_auto_speed =  800; tf.config_num_auto = 8"]
	[button name="auto,auto_500"  fix="true" target="*auto_speed_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[10]" y="&tf.config_y_auto" exp="tf.set_auto_speed =  500; tf.config_num_auto = 9"]

;------------------------------------------------------------------------------------------------------
; Skip Unread
;------------------------------------------------------------------------------------------------------

;	Skip Unread-OFF
	[button name="unread_off" fix="true" target="*skip_off" graphic="&tf.btn_path_off" width="170" height="45" x="400" y="470"]

;	Skip Unread-ON
	[button name="unread_on"  fix="true" target="*skip_on"  graphic="&tf.btn_path_off" width="170" height="45" x="580" y="470"]

;------------------------------------------------------------------------------------------------------
; Config Startup Screen Refresh
;------------------------------------------------------------------------------------------------------

	[iscript]

	$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");

	$(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");

	$(".ch_"+tf.current_ch_speed).attr("src","data/image/config/c_set.png");

	$(".auto_"+tf.current_auto_speed).attr("src","data/image/config/c_set.png");

	if(tf.text_skip == 'OFF'){
		$(".unread_off").attr("src","./data/image/config/c_skipoff.png");
		}else{
			$(".unread_on").attr("src","./data/image/config/c_skipon.png");
			}
	[endscript]

[s]

;--------------------------------------------------------------------------------
; Exit Config Mode
;--------------------------------------------------------------------------------
*backtitle
[cm]

	[iscript]
	TG.config.alreadyReadTextColor = tf.user_setting; // Restore the text color of read text
	[endscript]

;	Hide message layer used to display text-speed sample
	[layopt layer="message1" visible="false"]

;	Clear fix button
	[clearfix]

;	Enable key config
	[start_keyconfig]

;	Clear call stack
	[clearstack]

;	Return to game
	[awakegame]

;================================================================================

; Keypress Processing

;================================================================================
;--------------------------------------------------------------------------------
; BGM Volume
;--------------------------------------------------------------------------------
*vol_bgm_change

[iscript]
	$(".bgmvol").attr("src","data/image/config/c_btn.png");
	$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");
[endscript]

[bgmopt volume="&tf.current_bgm_vol"]

[return]

;--------------------------------------------------------------------------------
; SE Volume
;--------------------------------------------------------------------------------
*vol_se_change

[iscript]
	$(".sevol").attr("src","data/image/config/c_btn.png");
	$(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");
[endscript]

[seopt volume="&tf.current_se_vol"]

[return]

;---------------------------------------------------------------------------------
; Text Speed
;--------------------------------------------------------------------------------
*ch_speed_change

	[iscript]

	$(".ch").attr("src","data/image/config/c_btn.png");
	$(".ch_"+tf.set_ch_speed).attr("src","data/image/config/c_set.png");
	tf.current_ch_speed = tf.set_ch_speed;

	[endscript]

	[configdelay speed="&tf.set_ch_speed"]

;	Setting message layer used for text speed sample display
	[position layer="message1" left="90" top="580" width="1100" height="100" margint="2" marginl="30" page="fore" visible="true" opacity="0"]
	[layopt layer="message1" visible="true"]
	[current layer="message1"]

;	Display text-speed sample text
	[emb exp="tf.text_sample"]

		[iscript]
		$(".current_span").css("color","#66564C"); // Set sample text font color
		tf.system.backlog.pop(); // Delete sample text from history (same as "nolog~endnolog" tags)
		[endscript]

;	Supports waiting time for text speed and number of characters in sample (if it disappears too quickly, increase the number behind it as needed) 
	[eval exp="tf.text_sample_speed = tf.set_ch_speed * tf.text_sample.length + 700"]
	[wait time="&tf.text_sample_speed"]

	[er]
	[layopt layer="message1" visible="false"]

[return]

;--------------------------------------------------------------------------------
; Text Auto Speed
;--------------------------------------------------------------------------------
*auto_speed_change

	[iscript]

	$(".auto").attr("src","data/image/config/c_btn.png");
	$(".auto_"+tf.set_auto_speed).attr("src","data/image/config/c_set.png");

	[endscript]
	[autoconfig speed="&tf.set_auto_speed"]

[return]

;--------------------------------------------------------------------------------
; Skip Processing-OFF
;--------------------------------------------------------------------------------
*skip_off

	[iscript]
	$(".unread_off").attr("src","./data/image/config/c_skipoff.png");
	$(".unread_on").attr("src","./data/image/config/c_btn.gif");
	tf.text_skip = "OFF";
	[endscript]

	[config_record_label skip="false"]

[return]

;--------------------------------------------------------------------------------
; Skip Processing-ON
;--------------------------------------------------------------------------------
*skip_on

	[iscript]
	$(".unread_off").attr("src","./data/image/config/c_btn.gif");
	$(".unread_on").attr("src","./data/image/config/c_skipon.png");
	tf.text_skip = "ON";
	[endscript]

	[config_record_label skip="true"]

[return]

;================================================================================

; Subroutines

;================================================================================
;--------------------------------------------------------------------------------

; Update BGM

;--------------------------------------------------------------------------------
*icon_bgm

	[iscript]

	// Switch the display / non-display of the colored image according to the set volume

	$( ".bgm_img_0").css( "visibility", tf.config_num_bgm == 0 ? 'visible' : 'hidden' );
	$( ".bgm_img_1").css( "visibility", tf.config_num_bgm >  0 ? 'visible' : 'hidden' );
	$( ".bgm_img_2").css( "visibility", tf.config_num_bgm >  1 ? 'visible' : 'hidden' );
	$( ".bgm_img_3").css( "visibility", tf.config_num_bgm >  2 ? 'visible' : 'hidden' );
	$( ".bgm_img_4").css( "visibility", tf.config_num_bgm >  3 ? 'visible' : 'hidden' );
	$( ".bgm_img_5").css( "visibility", tf.config_num_bgm >  4 ? 'visible' : 'hidden' );
	$( ".bgm_img_6").css( "visibility", tf.config_num_bgm >  5 ? 'visible' : 'hidden' );
	$( ".bgm_img_7").css( "visibility", tf.config_num_bgm >  6 ? 'visible' : 'hidden' );
	$( ".bgm_img_8").css( "visibility", tf.config_num_bgm >  7 ? 'visible' : 'hidden' );
	$( ".bgm_img_9").css( "visibility", tf.config_num_bgm >  8 ? 'visible' : 'hidden' );
	$(".bgm_img_10").css( "visibility", tf.config_num_bgm >  9 ? 'visible' : 'hidden' );

	[endscript]

[return]

;--------------------------------------------------------------------------------

; Update SE

;--------------------------------------------------------------------------------
*icon_se

	[iscript]

	$(".se_img_0").css( "visibility", tf.config_num_se == 0 ? 'visible' : 'hidden');
	$(".se_img_1").css( "visibility", tf.config_num_se >  0 ? 'visible' : 'hidden');
	$(".se_img_2").css( "visibility", tf.config_num_se >  1 ? 'visible' : 'hidden');
	$(".se_img_3").css( "visibility", tf.config_num_se >  2 ? 'visible' : 'hidden');
	$(".se_img_4").css( "visibility", tf.config_num_se >  3 ? 'visible' : 'hidden');
	$(".se_img_5").css( "visibility", tf.config_num_se >  4 ? 'visible' : 'hidden');
	$(".se_img_6").css( "visibility", tf.config_num_se >  5 ? 'visible' : 'hidden');
	$(".se_img_7").css( "visibility", tf.config_num_se >  6 ? 'visible' : 'hidden');
	$(".se_img_8").css( "visibility", tf.config_num_se >  7 ? 'visible' : 'hidden');
	$(".se_img_9").css( "visibility", tf.config_num_se >  8 ? 'visible' : 'hidden');
	$(".se_img_10").css("visibility", tf.config_num_se >  9 ? 'visible' : 'hidden');

	[endscript]

[return]

;--------------------------------------------------------------------------------

; Update Text Speed

;--------------------------------------------------------------------------------
*icon_ch

	[iscript]

	$(".ch_img_1").css( "visibility", tf.config_num_ch >= 0 ? 'visible' : 'hidden');
	$(".ch_img_2").css( "visibility", tf.config_num_ch >  0 ? 'visible' : 'hidden');
	$(".ch_img_3").css( "visibility", tf.config_num_ch >  1 ? 'visible' : 'hidden');
	$(".ch_img_4").css( "visibility", tf.config_num_ch >  2 ? 'visible' : 'hidden');
	$(".ch_img_5").css( "visibility", tf.config_num_ch >  3 ? 'visible' : 'hidden');
	$(".ch_img_6").css( "visibility", tf.config_num_ch >  4 ? 'visible' : 'hidden');
	$(".ch_img_7").css( "visibility", tf.config_num_ch >  5 ? 'visible' : 'hidden');
	$(".ch_img_8").css( "visibility", tf.config_num_ch >  6 ? 'visible' : 'hidden');
	$(".ch_img_9").css( "visibility", tf.config_num_ch >  7 ? 'visible' : 'hidden');
	$(".ch_img_10").css("visibility", tf.config_num_ch >  8 ? 'visible' : 'hidden');

	[endscript]

[return]

;--------------------------------------------------------------------------------

; Update Auto Text Speed

;--------------------------------------------------------------------------------
*icon_auto

	[iscript]

	$(".auto_img_1").css( "visibility", tf.config_num_auto >= 0 ? 'visible' : 'hidden');
	$(".auto_img_2").css( "visibility", tf.config_num_auto >  0 ? 'visible' : 'hidden');
	$(".auto_img_3").css( "visibility", tf.config_num_auto >  1 ? 'visible' : 'hidden');
	$(".auto_img_4").css( "visibility", tf.config_num_auto >  2 ? 'visible' : 'hidden');
	$(".auto_img_5").css( "visibility", tf.config_num_auto >  3 ? 'visible' : 'hidden');
	$(".auto_img_6").css( "visibility", tf.config_num_auto >  4 ? 'visible' : 'hidden');
	$(".auto_img_7").css( "visibility", tf.config_num_auto >  5 ? 'visible' : 'hidden');
	$(".auto_img_8").css( "visibility", tf.config_num_auto >  6 ? 'visible' : 'hidden');
	$(".auto_img_9").css( "visibility", tf.config_num_auto >  7 ? 'visible' : 'hidden');
	$(".auto_img_10").css("visibility", tf.config_num_auto >  8 ? 'visible' : 'hidden');

	[endscript]

[return]

;================================================================================

; Image loading (call only when the config screen is started)

;================================================================================
*load_img

	[layopt layer="0" visible="true"]

;	BGM
	[image layer="0" name="bgm_img_0"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[0]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_1"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[1]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_2"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[2]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_3"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[3]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_4"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[4]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_5"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[5]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_6"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[6]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_7"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[7]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_8"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[8]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_9"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[9]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_10" storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[10]" y="&tf.config_y_bgm"]

;	SE
	[image layer="0" name="se_img_0"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[0]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_1"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[1]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_2"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[2]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_3"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[3]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_4"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[4]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_5"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[5]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_6"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[6]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_7"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[7]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_8"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[8]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_9"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[9]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_10" storage="&tf.img_path + 'set2.png'" x="&tf.config_x[10]" y="&tf.config_y_se"]

;	Text Speed
	[image layer="0" name="ch_img_1"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[1]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_2"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[2]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_3"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[3]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_4"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[4]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_5"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[5]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_6"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[6]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_7"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[7]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_8"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[8]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_9"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[9]"  y="&tf.config_y_ch"]
	[image layer="0" name="ch_img_10" storage="&tf.img_path + 'set1.png'" x="&tf.config_x[10]" y="&tf.config_y_ch"]

;	Auto Text SPeed
	[image layer="0" name="auto_img_1"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[1]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_2"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[2]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_3"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[3]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_4"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[4]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_5"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[5]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_6"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[6]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_7"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[7]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_8"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[8]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_9"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[9]"  y="&tf.config_y_auto"]
	[image layer="0" name="auto_img_10" storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[10]" y="&tf.config_y_auto"]

[return]
