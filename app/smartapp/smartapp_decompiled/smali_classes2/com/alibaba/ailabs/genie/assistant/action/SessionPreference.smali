.class public Lcom/alibaba/ailabs/genie/assistant/action/SessionPreference;
.super Ljava/lang/Object;
.source "SessionPreference.java"


# static fields
.field public static final ACT_BACK:Ljava/lang/String; = "back"

.field public static final ACT_BACK_TO_START:Ljava/lang/String; = "back_to_start"

.field public static final ACT_BUY:Ljava/lang/String; = "buy"

.field public static final ACT_CANCEL_FAVORITE:Ljava/lang/String; = "cancel_favorite"

.field public static final ACT_CANCEL_SLEEP:Ljava/lang/String; = "cancelsleep"

.field public static final ACT_CHANNEL:Ljava/lang/String; = "/Channel"

.field public static final ACT_CHANNEL_PROGRAM:Ljava/lang/String; = "Action://Live/Channel"

.field public static final ACT_CLEAR:Ljava/lang/String; = "clear"

.field public static final ACT_CLOSE:Ljava/lang/String; = "close"

.field public static final ACT_CLOSE_DAN:Ljava/lang/String; = "close_dan"

.field public static final ACT_CONFIRM:Ljava/lang/String; = "confirm"

.field public static final ACT_DESKTOP:Ljava/lang/String; = "desktop"

.field public static final ACT_ESCAPE:Ljava/lang/String; = "escape"

.field public static final ACT_EXIT:Ljava/lang/String; = "exit"

.field public static final ACT_EXIT_FULL_SCREEN:Ljava/lang/String; = "exit_full_screen"

.field public static final ACT_EXIT_VIDEO_FOLLOW:Ljava/lang/String; = "cancel_video_follow"

.field public static final ACT_EYE_OFF:Ljava/lang/String; = "protect_eye_off"

.field public static final ACT_EYE_ON:Ljava/lang/String; = "protect_eye_on"

.field public static final ACT_FASTB:Ljava/lang/String; = "fastb"

.field public static final ACT_FASTF:Ljava/lang/String; = "fastf"

.field public static final ACT_FAVORITE:Ljava/lang/String; = "favorite"

.field public static final ACT_FB:Ljava/lang/String; = "fb"

.field public static final ACT_FF:Ljava/lang/String; = "ff"

.field public static final ACT_FULL_SCREEN:Ljava/lang/String; = "full_screen"

.field public static final ACT_HOME:Ljava/lang/String; = "home"

.field public static final ACT_HOMEMODE:Ljava/lang/String; = "/Homemode"

.field public static final ACT_INDEX:Ljava/lang/String; = "index"

.field public static final ACT_LANGUAGE:Ljava/lang/String; = "Language"

.field public static final ACT_LIVE:Ljava/lang/String; = "Live"

.field public static final ACT_MOVEDOWN:Ljava/lang/String; = "movedown"

.field public static final ACT_MOVELEFT:Ljava/lang/String; = "moveleft"

.field public static final ACT_MOVERIGHT:Ljava/lang/String; = "moveright"

.field public static final ACT_MOVEUP:Ljava/lang/String; = "moveup"

.field public static final ACT_MUSIC_PLAY_PATTERN:Ljava/lang/String; = "music_play_pattern"

.field public static final ACT_MUTE:Ljava/lang/String; = "mute"

.field public static final ACT_NEXT:Ljava/lang/String; = "next"

.field public static final ACT_ONOFF:Ljava/lang/CharSequence;

.field public static final ACT_OPEN_DAN:Ljava/lang/String; = "open_dan"

.field public static final ACT_PAUSE:Ljava/lang/String; = "pause"

.field public static final ACT_PLAY:Ljava/lang/String; = "play"

.field public static final ACT_PLAY_BEFORE:Ljava/lang/String; = "play_before"

.field public static final ACT_PLAY_CANCEL:Ljava/lang/String; = "cancel"

.field public static final ACT_PLAY_NEXT:Ljava/lang/String; = "play_next"

.field public static final ACT_PLAY_NTH:Ljava/lang/String; = "play_nth"

.field public static final ACT_PREV:Ljava/lang/String; = "prev"

.field public static final ACT_REFRESH:Ljava/lang/String; = "refresh"

.field public static final ACT_REPLAY:Ljava/lang/String; = "replay"

.field public static final ACT_RESET:Ljava/lang/String; = "reset"

.field public static final ACT_RETURN:Ljava/lang/String; = "return"

.field public static final ACT_SCREEN:Ljava/lang/String; = "screen"

.field public static final ACT_SCREENOFF:Ljava/lang/String; = "screen_off"

.field public static final ACT_SELECT_PLAY:Ljava/lang/String; = "select_play"

.field public static final ACT_SETTING:Ljava/lang/String; = "setting"

.field public static final ACT_SHUTDOWN:Ljava/lang/String; = "shutdown"

.field public static final ACT_STOP:Ljava/lang/String; = "stop"

.field public static final ACT_SW:Ljava/lang/String; = "sw"

.field public static final ACT_SWITCH:Ljava/lang/String; = "Switch"

.field public static final ACT_SW_BLUE:Ljava/lang/String; = "sw_blue"

.field public static final ACT_SW_HIGH:Ljava/lang/String; = "sw_high"

.field public static final ACT_SW_LOW:Ljava/lang/String; = "sw_low"

.field public static final ACT_SW_MAX:Ljava/lang/String; = "sw_max"

.field public static final ACT_SW_MED:Ljava/lang/String; = "sw_med"

.field public static final ACT_TUNE_RESOLUTION:Ljava/lang/String; = "tune_resolution"

.field public static final ACT_TUNE_SCREEN_RATIO:Ljava/lang/String; = "tune_screen_ratio"

.field public static final ACT_UNMUTE:Ljava/lang/String; = "unmute"

.field public static final ACT_VIDEO_FOLLOW:Ljava/lang/String; = "video_follow"

.field public static final ACT_VOICE:Ljava/lang/String; = "Voice"

.field public static final ACT_VOLUMEDOWN:Ljava/lang/String; = "volumedown"

.field public static final ACT_VOLUMEUP:Ljava/lang/String; = "volumeup"

.field public static final ACT_VOLUMNDOWN:Ljava/lang/String; = "volumndown"

.field public static final ACT_VOLUMNOFF:Ljava/lang/String; = "volumnoff"

.field public static final ACT_VOLUMNON:Ljava/lang/String; = "volumnon"

.field public static final ACT_VOLUMNUP:Ljava/lang/String; = "volumnup"

.field public static final COMMAND_RETRACT:Ljava/lang/String; = "/retract"

.field public static final DOMAIN_ABOOK:Ljava/lang/String; = "abook"

.field public static final DOMAIN_ACROSTIC:Ljava/lang/String; = "acrostic"

.field public static final DOMAIN_AI_OTHERS:Ljava/lang/String; = "ai_others"

.field public static final DOMAIN_APP:Ljava/lang/String; = "app"

.field public static final DOMAIN_BIND:Ljava/lang/String; = "binddevice"

.field public static final DOMAIN_CALCULATION:Ljava/lang/String; = "calculation"

.field public static final DOMAIN_CHANNEL:Ljava/lang/String; = "tv_channel"

.field public static final DOMAIN_CHARACTER:Ljava/lang/String; = "character"

.field public static final DOMAIN_CHAT:Ljava/lang/String; = "chat"

.field public static final DOMAIN_DATETIME:Ljava/lang/String; = "datetime"

.field public static final DOMAIN_FLIGHT_TICKET:Ljava/lang/String; = "flight_ticket"

.field public static final DOMAIN_GENERAL_COMMAND:Ljava/lang/String; = "general_command"

.field public static final DOMAIN_ITEM:Ljava/lang/String; = "item"

.field public static final DOMAIN_KALAOK:Ljava/lang/String; = "kala_ok"

.field public static final DOMAIN_MEANINGLESS:Ljava/lang/String; = "meaningless"

.field public static final DOMAIN_MUSIC:Ljava/lang/String; = "music"

.field public static final DOMAIN_PHONE:Ljava/lang/String; = "PHONE"

.field public static final DOMAIN_PHONECALL:Ljava/lang/String; = "telephone"

.field public static final DOMAIN_POEM:Ljava/lang/String; = "poem"

.field public static final DOMAIN_SETTING:Ljava/lang/String; = "alitv_setting"

.field public static final DOMAIN_TAOBAO:Ljava/lang/String; = "taobao"

.field public static final DOMAIN_TV_COMMAND:Ljava/lang/String; = "tv_command"

.field public static final DOMAIN_TV_LIVE:Ljava/lang/String; = "TV_LIVE"

.field public static final DOMAIN_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final DOMAIN_VIDEO:Ljava/lang/String; = "video"

.field public static final DOMAIN_WEATHER:Ljava/lang/String; = "weather"

.field public static final DOMAIN_WHYS:Ljava/lang/String; = "whys"

.field public static final INTENT_CLOSE:Ljava/lang/String; = "Close"

.field public static final INTENT_DOWNLOAD:Ljava/lang/String; = "Download"

.field public static final INTENT_INSTALL:Ljava/lang/String; = "Install"

.field public static final INTENT_OPEN:Ljava/lang/String; = "Open"

.field public static final INTENT_SEARCH:Ljava/lang/String; = "Search"

.field public static final INTENT_UNINSTALL:Ljava/lang/String; = "Uninstall"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ACTION_PARAM:Ljava/lang/String; = "action_param"

.field public static final KEY_ANSWER:Ljava/lang/String; = "answer"

.field public static final KEY_ANSWER_TYPE:Ljava/lang/String; = "answerType"

.field public static final KEY_APP:Ljava/lang/String; = "app"

.field public static final KEY_APPCAT:Ljava/lang/String; = "cat"

.field public static final KEY_APPNAME:Ljava/lang/String; = "appname"

.field public static final KEY_APPS:Ljava/lang/String; = "apps"

.field public static final KEY_APP_ICON:Ljava/lang/String; = "appIcon"

.field public static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field public static final KEY_AREA:Ljava/lang/String; = "area"

.field public static final KEY_CANTONESE:Ljava/lang/String; = "cantonese"

.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEY_CHANNELNAME:Ljava/lang/String; = "channelName"

.field public static final KEY_CHILD:Ljava/lang/String; = "child"

.field public static final KEY_CITY:Ljava/lang/String; = "city"

.field public static final KEY_COMMAND_PARAM:Ljava/lang/String; = "command_param"

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_CUR_TEMP:Ljava/lang/String; = "curTemp"

.field public static final KEY_CUR_TEMPERATURE:Ljava/lang/String; = "curTemperature"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DATA_TYPE:Ljava/lang/String; = "dataType"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DA_INTENT:Ljava/lang/String; = "action"

.field public static final KEY_DA_SESSION_ID:Ljava/lang/String; = "daSessionId"

.field public static final KEY_DA_SLOT:Ljava/lang/String; = "parameters"

.field public static final KEY_DETAIL:Ljava/lang/String; = "detail"

.field public static final KEY_DIRECTOR:Ljava/lang/String; = "director"

.field public static final KEY_DM_RESULT:Ljava/lang/String; = "dm_result"

.field public static final KEY_DOMAIN:Ljava/lang/String; = "domain"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_FAST_POST_FEE:Ljava/lang/String; = "fastPostFee"

.field public static final KEY_HAS_NEXT:Ljava/lang/String; = "hasNext"

.field public static final KEY_HENAN_DIALECT:Ljava/lang/String; = "henan_dialect"

.field public static final KEY_HOME_MODE:Ljava/lang/String; = "home_mode"

.field public static final KEY_HOME_URL:Ljava/lang/String; = "homeUrl"

.field public static final KEY_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final KEY_KEYWORD:Ljava/lang/String; = "keyword"

.field public static final KEY_KEY_WORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_LABELNAME:Ljava/lang/String; = "labelName"

.field public static final KEY_LABELTYPE:Ljava/lang/String; = "labelType"

.field public static final KEY_LABEL_NAME:Ljava/lang/String; = "labelName"

.field public static final KEY_LABEL_TYPE:Ljava/lang/String; = "labelType"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_LIST:Ljava/lang/String; = "list"

.field public static final KEY_LISTENFILE:Ljava/lang/String; = "listenFile"

.field public static final KEY_MANDARIN:Ljava/lang/String; = "mandarin"

.field public static final KEY_MAX_TEMP:Ljava/lang/String; = "maxTemp"

.field public static final KEY_MAX_TEMPERATURE:Ljava/lang/String; = "maxTemperature"

.field public static final KEY_MAX_VERSION:Ljava/lang/String; = "maxVersion"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_MIN_TEMP:Ljava/lang/String; = "minTemp"

.field public static final KEY_MIN_TEMPERATURE:Ljava/lang/String; = "minTemperature"

.field public static final KEY_MIN_VERSION:Ljava/lang/String; = "minVersion"

.field public static final KEY_MORE_URI:Ljava/lang/String; = "moreUri"

.field public static final KEY_MSG_CODE:Ljava/lang/String; = "msgCode"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NLG_RESULT:Ljava/lang/String; = "nlg_result"

.field public static final KEY_NLU_RESULT:Ljava/lang/String; = "nlu_result"

.field public static final KEY_NORM:Ljava/lang/String; = "norm"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "QuickSettings"

.field public static final KEY_OPENFARMIC:Ljava/lang/String; = "openFarMic"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PARAMETERS:Ljava/lang/String; = "parameters"

.field public static final KEY_PARAMS:Ljava/lang/String; = "params"

.field public static final KEY_PERFORMER:Ljava/lang/String; = "performer"

.field public static final KEY_PHONE_NUM:Ljava/lang/String; = "number"

.field public static final KEY_PHONE_PERSION:Ljava/lang/String; = "name"

.field public static final KEY_PIC:Ljava/lang/String; = "pic"

.field public static final KEY_PIC_URL:Ljava/lang/String; = "picUrl"

.field public static final KEY_PM25:Ljava/lang/String; = "pm25"

.field public static final KEY_PRICE:Ljava/lang/String; = "price"

.field public static final KEY_PRICE_WITH_RATE:Ljava/lang/String; = "priceWithRate"

.field public static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_QUANTIFIER:Ljava/lang/String; = "quantifier"

.field public static final KEY_QUANTIFIER_GE:Ljava/lang/String; = "ge"

.field public static final KEY_QUESTION:Ljava/lang/String; = "question"

.field public static final KEY_QUICK:Ljava/lang/String; = "quickBuildOrderTextInfo"

.field public static final KEY_QUICK_URI:Ljava/lang/String; = "quickBuildOrderUrl"

.field public static final KEY_RAW:Ljava/lang/String; = "raw"

.field public static final KEY_RAW_WORDS:Ljava/lang/String; = "raw_words"

.field public static final KEY_RELATIVE_MODE:Ljava/lang/String; = "relative_mode"

.field public static final KEY_REPLY_DATA:Ljava/lang/String; = "replyData"

.field public static final KEY_REPLY_TEXT:Ljava/lang/String; = "replyText"

.field public static final KEY_REPLY_TYPE:Ljava/lang/String; = "replyType"

.field public static final KEY_RESULTS:Ljava/lang/String; = "results"

.field public static final KEY_SCORE:Ljava/lang/String; = "score"

.field public static final KEY_SEMANTIC:Ljava/lang/String; = "semantic"

.field public static final KEY_SETTING_TYPE:Ljava/lang/String; = "alitv_setting_type"

.field public static final KEY_SHOWTYPE:Ljava/lang/String; = "showType"

.field public static final KEY_SICHUAN_DIALECT:Ljava/lang/String; = "sichuan_dialect"

.field public static final KEY_SINGERS:Ljava/lang/String; = "singers"

.field public static final KEY_SKU_URI:Ljava/lang/String; = "skuUrl"

.field public static final KEY_SLOT:Ljava/lang/String; = "slots"

.field public static final KEY_SOLD:Ljava/lang/String; = "sold"

.field public static final KEY_SORT:Ljava/lang/String; = "sort"

.field public static final KEY_SPOKEN:Ljava/lang/String; = "spoken"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_TIPS:Ljava/lang/String; = "tips"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_TOTAL:Ljava/lang/String; = "total"

.field public static final KEY_TO_APP:Ljava/lang/String; = "toApp"

.field public static final KEY_TO_URI:Ljava/lang/String; = "toUri"

.field public static final KEY_TUIJIANAPPS:Ljava/lang/String; = "tuijianApps"

.field public static final KEY_TVCHANNEL:Ljava/lang/String; = "station"

.field public static final KEY_TV_CHANNEL:Ljava/lang/String; = "tv_channel"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_UNCERTAIN:Ljava/lang/String; = "uncertain"

.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final KEY_VOICE:Ljava/lang/String; = "voice"

.field public static final KEY_WEATHER_CODE:Ljava/lang/String; = "weatherCode"

.field public static final KEY_WEB_COMMAND:Ljava/lang/String; = "command"

.field public static final KEY_WEB_RAW_RESULT:Ljava/lang/String; = "web_data_raw"

.field public static final KEY_WEB_RESULT:Ljava/lang/String; = "web_result"

.field public static final KEY_WEB_RESULT_ACTION:Ljava/lang/String; = "web_action"

.field public static final KEY_WEB_RESULT_DATA:Ljava/lang/String; = "web_data"

.field public static final KEY_WEB_RESULT_LIST:Ljava/lang/String; = "multi_domain_tv_list"

.field public static final KEY_WEB_RESULT_WEATHER:Ljava/lang/String; = "weather_detail"

.field public static final KEY_WEB_SHOW_DATA:Ljava/lang/String; = "show_data"

.field public static final KEY_WID_DIRECTION_DESC:Ljava/lang/String; = "windDirectionDesc"

.field public static final KEY_WID_DIRECT_DES:Ljava/lang/String; = "windDirectDes"

.field public static final KEY_WIND_FORE:Ljava/lang/String; = "curWindFore"

.field public static final KEY_WIND_POWER_DES:Ljava/lang/String; = "windPowerDes"

.field public static final KEY_WISE_WORDS:Ljava/lang/String; = "wiseWords"

.field public static final KEY_YEAR:Ljava/lang/String; = "year"

.field public static final KEY_ZKRATE:Ljava/lang/String; = "zkRate"

.field public static final PACKAGE_CONTENT_KEY:Ljava/lang/String; = "pk_content"

.field public static final PACKAGE_INFO:Ljava/lang/String; = "pk_info"

.field public static final PACKAGE_KEY_AI_ASK_AGAIN:Ljava/lang/String; = "askAgain"

.field public static final PACKAGE_KEY_AI_DOMAIN_FILM_NEWS:Ljava/lang/String; = "FILM_NEWS"

.field public static final PACKAGE_KEY_AI_DOMAIN_REMIND:Ljava/lang/String; = "remind"

.field public static final PACKAGE_KEY_AI_DOMAIN_TAKEOUT:Ljava/lang/String; = "takeout"

.field public static final PACKAGE_KEY_AI_OPERATION:Ljava/lang/String; = "operation"

.field public static final PACKAGE_KEY_AI_REPLY:Ljava/lang/String; = "reply"

.field public static final PACKAGE_KEY_AI_RESULT_DATA:Ljava/lang/String; = "resultData"

.field public static final PACKAGE_KEY_AI_SCREEN_REPLY:Ljava/lang/String; = "screenReply"

.field public static final PACKAGE_KEY_AI_UNSUPPORT_SCREEN_REPLY:Ljava/lang/String; = "unsupportScreenReply"

.field public static final PACKAGE_KEY_AI_UNSUPPORT_VOICE_REPLY:Ljava/lang/String; = "unsupportVoiceReply"

.field public static final PACKAGE_KEY_AI_VOICE_REPLY:Ljava/lang/String; = "voiceReply"

.field public static final PACKAGE_KEY_BIND_IS_AGREE:Ljava/lang/String; = "pk_bind_isagree"

.field public static final PACKAGE_KEY_CLIENT_VERSION:Ljava/lang/String; = "clientVersion"

.field public static final PACKAGE_KEY_COMMAND_RESULT:Ljava/lang/String; = "command_result"

.field public static final PACKAGE_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final PACKAGE_KEY_CONNECT_STATUS:Ljava/lang/String; = "pk_connect_status"

.field public static final PACKAGE_KEY_CONTENT_TYPE:Ljava/lang/String; = "pk_content_type"

.field public static final PACKAGE_KEY_DEVICE_MODEL:Ljava/lang/String; = "pk_devicemodel"

.field public static final PACKAGE_KEY_DEVICE_UID:Ljava/lang/String; = "pk_deviceuid"

.field public static final PACKAGE_KEY_EXTEND_DATA:Ljava/lang/String; = "pk_extenddata"

.field public static final PACKAGE_KEY_LOCALE_INFO:Ljava/lang/String; = "localeInfo"

.field public static final PACKAGE_KEY_MEMORY:Ljava/lang/String; = "memory"

.field public static final PACKAGE_KEY_OPEN_MIC:Ljava/lang/String; = "open_mic"

.field public static final PACKAGE_KEY_PACKAGE_INFO:Ljava/lang/String; = "packageInfo"

.field public static final PACKAGE_KEY_PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final PACKAGE_KEY_RECOGNIZE_RESULT:Ljava/lang/String; = "pk_recognize_result"

.field public static final PACKAGE_KEY_REQUEST_ID:Ljava/lang/String; = "pk_requestid"

.field public static final PACKAGE_KEY_SCENE_EXT_INFO:Ljava/lang/String; = "sceneExtInfo"

.field public static final PACKAGE_KEY_SCENE_INFO:Ljava/lang/String; = "sceneInfo"

.field public static final PACKAGE_KEY_SYSTEM_INFO:Ljava/lang/String; = "systemInfo"

.field public static final PACKAGE_KEY_TEXT:Ljava/lang/String; = "text"

.field public static final PACKAGE_KEY_TTS_STATUS:Ljava/lang/String; = "pk_tts_status"

.field public static final PACKAGE_KEY_VERSION_CODE:Ljava/lang/String; = "pk_versioncode"

.field public static final PACKAGE_TYPE_KEY:Ljava/lang/String; = "pk_type"

.field public static final PACKAGE_VALUE_ASR_STREAMING:Ljava/lang/String; = "asr_streaming"

.field public static final PACKAGE_VALUE_COMMAND_RESULT_FAIL:Ljava/lang/String; = "fail"

.field public static final PACKAGE_VALUE_COMMAND_RESULT_SUCCESS:Ljava/lang/String; = "success"

.field public static final PACKAGE_VALUE_COMMAND_TYPE_REQUEST:Ljava/lang/String; = "request"

.field public static final PACKAGE_VALUE_COMMAND_TYPE_RESPONSE:Ljava/lang/String; = "response"

.field public static final PACKAGE_VALUE_CONTENT_TYPE_AI:Ljava/lang/String; = "AI"

.field public static final PACKAGE_VALUE_CONTENT_TYPE_MBOX:Ljava/lang/String; = "MBOX"

.field public static final PACKAGE_VALUE_DEVICE_MODEL_X1:Ljava/lang/String; = "X1"

.field public static final PACKAGE_VALUE_LANGUAGE:Ljava/lang/String; = "asr_language"

.field public static final PACKAGE_VALUE_RESULT:Ljava/lang/String; = "result"

.field public static final PACKAGE_VALUE_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final PACKAGE_VALUE_START_RECOGNIZING:Ljava/lang/String; = "recognize_start"

.field public static final PACKAGE_VALUE_START_RECORDING:Ljava/lang/String; = "record_start"

.field public static final PACKAGE_VALUE_STATUS_CONNECT:Ljava/lang/String; = "connect"

.field public static final PACKAGE_VALUE_STATUS_DISCONNECT:Ljava/lang/String; = "disconnect"

.field public static final PACKAGE_VALUE_STOP_RECOGNIZING:Ljava/lang/String; = "recognize_stop"

.field public static final PACKAGE_VALUE_STOP_RECORDING:Ljava/lang/String; = "record_stop"

.field public static final PACKAGE_VALUE_TTS_STATUS_START:Ljava/lang/String; = "start"

.field public static final PACKAGE_VALUE_TTS_STATUS_STOP:Ljava/lang/String; = "stop"

.field public static final PACKAGE_VALUE_TYPE_SMART_ASR_STREAMING:Ljava/lang/String; = "smart_asr_streaming"

.field public static final PACKAGE_VALUE_TYPE_SMART_BIND_OK:Ljava/lang/String; = "smart_bind_ok"

.field public static final PACKAGE_VALUE_TYPE_SMART_BIND_REQUEST:Ljava/lang/String; = "smart_bind_request"

.field public static final PACKAGE_VALUE_TYPE_SMART_BIND_SUCCESS:Ljava/lang/String; = "smart_bind_success"

.field public static final PACKAGE_VALUE_TYPE_SMART_CONNECT:Ljava/lang/String; = "smart_connect"

.field public static final PACKAGE_VALUE_TYPE_SMART_HEARTBEAT:Ljava/lang/String; = "smart_heartbeat"

.field public static final PACKAGE_VALUE_TYPE_SMART_NOTICE:Ljava/lang/String; = "smart_notice"

.field public static final PACKAGE_VALUE_TYPE_SMART_RECOGNIZE_RESULT:Ljava/lang/String; = "smart_recognize_result"

.field public static final PACKAGE_VALUE_TYPE_SMART_RECOGNIZE_START:Ljava/lang/String; = "smart_recognize_start"

.field public static final PACKAGE_VALUE_TYPE_SMART_RECORD_START:Ljava/lang/String; = "smart_record_start"

.field public static final PACKAGE_VALUE_TYPE_SMART_RECORD_STOP:Ljava/lang/String; = "smart_record_stop"

.field public static final PACKAGE_VALUE_TYPE_SMART_SCREEN_CLEAN:Ljava/lang/String; = "smart_screen_clean"

.field public static final PACKAGE_VALUE_TYPE_SMART_SYSTEM_INFO:Ljava/lang/String; = "smart_system_info"

.field public static final PACKAGE_VALUE_TYPE_SMART_TTS_PLAY:Ljava/lang/String; = "smart_tts_play"

.field public static final PACKAGE_VALUE_TYPE_SMART_VOLUME:Ljava/lang/String; = "smart_volume"

.field public static final PACKAGE_VALUE_VOLUME:Ljava/lang/String; = "volume"

.field public static final VALUE_TYPE_APP_SHOW:Ljava/lang/String; = "openapp"

.field public static final VALUE_TYPE_KALAOK_SHOW:Ljava/lang/String; = "kalaok"

.field public static final VALUE_TYPE_MUSIC_SHOW:Ljava/lang/String; = "music"

.field public static final VALUE_TYPE_PHONECALL_SHOW:Ljava/lang/String; = "phone_call"

.field public static final VALUE_TYPE_SEARCH_SHOW:Ljava/lang/String; = "search"

.field public static final VALUE_TYPE_SETTING_SHOW:Ljava/lang/String; = "controltv"

.field public static final VALUE_TYPE_TV_SHOW:Ljava/lang/String; = "querytv"

.field public static final VALUE_TYPE_UNKNOWN_SHOW:Ljava/lang/String; = "unknown"

.field public static final VALUE_TYPE_UNKOWN_SHOW:Ljava/lang/String; = "unkown"

.field public static final VALUE_TYPE_VIDEO_SHOW:Ljava/lang/String; = "querymovie"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Onoff"

    .line 384
    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/action/SessionPreference;->ACT_ONOFF:Ljava/lang/CharSequence;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
