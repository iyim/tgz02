.class public Lcom/alibaba/ailabs/appbox/utils/SPUtil;
.super Ljava/lang/Object;
.source "SPUtil.java"


# static fields
.field public static final KEY_APPLIST_CUSTOM:Ljava/lang/String; = "key_applist_custom_list"

.field public static final KEY_APP_DELETE_GUIDE:Ljava/lang/String; = "key_delete_guide_show"

.field public static final KEY_APP_LIST_RECOMMEND:Ljava/lang/String; = "key_app_recommond_list"

.field public static final KEY_CON_COLLECT_BEFROE_APK:Ljava/lang/String; = "key_con_collect_apk"

.field public static final KEY_CUSTOM_STORAGE:Ljava/lang/String; = "key_custom_storage_cal_size"

.field public static final KEY_CUSTOM_UNINSTALLED:Ljava/lang/String; = "key_custom_uninstalled"

.field public static final KEY_DEFAULT_APPLIST:Ljava/lang/String; = "key_deafault_applist"

.field public static final KEY_FIRST_LOAD_BY_2_0:Ljava/lang/String; = "key_applist_first_load_2_0"

.field public static final KEY_FIRST_SORT:Ljava/lang/String; = "key_applist_first_sort"

.field public static final KEY_LIST_BLACK_APKS:Ljava/lang/String; = "key_black_apks"

.field public static final KEY_LIST_PRE_APKS:Ljava/lang/String; = "key_pre_apks"

.field public static final KEY_MARKET_BOTTOM_APPLIST:Ljava/lang/String; = "key_market_app_bottom_list"

.field public static final KEY_USER_HAS_ENTER_APPLIST:Ljava/lang/String; = "key_user_enter_applist"

.field private static final PREFERENCE_NAME_CON_LIST:Ljava/lang/String; = "app_con_list"

.field private static final PREFERENCE_NAME_OPNE_LIST:Ljava/lang/String; = "app_open_list"

.field private static final PREFERENCE_NAME_PRE_APP_LIST:Ljava/lang/String; = "app_pre_list"

.field private static final PREFERENCE_NAME_TTS_LIST:Ljava/lang/String; = "app_tts_list"

.field private static sharedPreferences_con:Landroid/content/SharedPreferences;

.field private static sharedPreferences_open:Landroid/content/SharedPreferences;

.field private static sharedPreferences_tts:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static add2CalSizeList(Ljava/lang/String;)V
    .locals 4

    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "."

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 240
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 241
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 243
    :cond_2
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v1, "key_custom_storage_cal_size"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 249
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 250
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static add2UninstalledList(Ljava/lang/String;)V
    .locals 4

    .line 161
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 164
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v1, "key_custom_uninstalled"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 170
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 171
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getApplistRecommendList()Ljava/lang/String;
    .locals 3

    .line 138
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 141
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v1, "key_app_recommond_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBlackApks()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "app_pre_list"

    const-string v1, "key_black_apks"

    const-string v2, ""

    .line 96
    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 101
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 103
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 104
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "getPreApks"

    .line 106
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 329
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_open:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_open:Landroid/content/SharedPreferences;

    .line 332
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_open:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 314
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 317
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCalSizeList()[Ljava/lang/String;
    .locals 4

    .line 215
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 218
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v1, "key_custom_storage_cal_size"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "isUserStorgeEnoughLog"

    if-nez v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "@@"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "apps is null."

    .line 223
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 3

    .line 426
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 429
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 380
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 381
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 383
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 396
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 397
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 399
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTTSInt(Ljava/lang/String;I)I
    .locals 3

    .line 442
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_tts:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 443
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_tts_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_tts:Landroid/content/SharedPreferences;

    .line 445
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_tts:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isAppHasOpen(Ljava/lang/String;)Z
    .locals 2

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "app_open_list"

    invoke-static {v1, p0, v0}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAppidHasUninstalled(Ljava/lang/String;)Z
    .locals 3

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 185
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 186
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 188
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v1, "key_custom_uninstalled"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "isAppidHasUninstalled"

    .line 191
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static isCollectBefore()Z
    .locals 2

    const-string v0, "key_con_collect_apk"

    const/4 v1, 0x0

    .line 336
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCurrentPkgInBlack(Ljava/lang/String;)Z
    .locals 3

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 118
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getBlackApks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isFirstSortInApplist()Z
    .locals 2

    const-string v0, "key_applist_first_sort"

    const/4 v1, 0x1

    .line 53
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShouldRetryInOnDay(Ljava/lang/String;)Z
    .locals 11

    .line 493
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 494
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 496
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, " --> "

    const-string v5, "isShouldRetryInOnDay"

    if-nez v2, :cond_1

    const-string v2, "@@@"

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 499
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 500
    aget-object v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 501
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    cmp-long v2, v7, v9

    if-gez v2, :cond_1

    const/4 v2, 0x3

    if-lt v6, v2, :cond_1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip to retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 508
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retry install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 299
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_open:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_open:Landroid/content/SharedPreferences;

    .line 302
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_open:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 3

    .line 285
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 288
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putInstallFailedTimes(Ljava/lang/String;Z)V
    .locals 9

    .line 464
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 465
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    :cond_0
    if-eqz p1, :cond_1

    .line 468
    sget-object p1, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0@@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 471
    :cond_1
    sget-object p1, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, " -- "

    const-string v3, " --> "

    const-string/jumbo v4, "write to retry "

    const-string v5, "isShouldRetryInOnDay"

    const/4 v6, 0x1

    const-string v7, "@@@"

    if-nez v0, :cond_3

    .line 474
    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 475
    array-length v0, p1

    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    .line 476
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    add-int/2addr p1, v6

    .line 479
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 480
    invoke-static {v5, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 487
    :cond_3
    sget-object p1, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 488
    invoke-static {v5, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 3

    .line 411
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 412
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 414
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 351
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 354
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 365
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 368
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putTTSInt(Ljava/lang/String;I)V
    .locals 3

    .line 457
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_tts:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 458
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_tts_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_tts:Landroid/content/SharedPreferences;

    .line 460
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_tts:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeAppidHasUninstalled(Ljava/lang/String;)Z
    .locals 6

    .line 202
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 205
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "key_custom_uninstalled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 209
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v3
.end method

.method public static removeCalSize(Ljava/lang/String;)V
    .locals 5

    .line 259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "."

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 265
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 266
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 268
    :cond_2
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "key_custom_storage_cal_size"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 273
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method public static saveApplistRecommendList(Ljava/lang/String;)V
    .locals 3

    .line 131
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app_con_list"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    .line 134
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->sharedPreferences_con:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_app_recommond_list"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveBlackApks(Ljava/lang/String;)V
    .locals 2

    const-string v0, "app_pre_list"

    const-string v1, "key_black_apks"

    .line 126
    invoke-static {v0, v1, p0}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setAppHasOpen(Ljava/lang/String;)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "app_open_list"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIsCollectedBefore()V
    .locals 2

    const-string v0, "key_con_collect_apk"

    const/4 v1, 0x1

    .line 340
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putBoolean(Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
