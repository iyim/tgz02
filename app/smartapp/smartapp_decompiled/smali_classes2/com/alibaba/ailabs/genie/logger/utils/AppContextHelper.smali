.class public Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;
.super Ljava/lang/Object;
.source "AppContextHelper.java"


# static fields
.field private static mAppContext:Landroid/content/Context;

.field private static mApplication:Landroid/app/Application;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static activityManager()Landroid/app/ActivityManager;
    .locals 2

    .line 65
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    return-object v0
.end method

.method public static appContext()Landroid/content/Context;
    .locals 1

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static application()Landroid/app/Application;
    .locals 1

    .line 53
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static assets()Landroid/content/res/AssetManager;
    .locals 1

    .line 61
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static contentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 81
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static downloadManager()Landroid/app/DownloadManager;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .line 100
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    return-object v0
.end method

.method public static getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 95
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 85
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public static getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 104
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    .line 43
    sget-object p0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mApplication:Landroid/app/Application;

    :cond_0
    return-void
.end method

.method public static inputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static packageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "\u5982\u679c\u8981\u83b7\u53d6\u6307\u5b9aapk\u6587\u4ef6\u7684PackageInfo\uff0c\u8bf7\u8c03\u7528archivePackageInfo"

    .line 135
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/logger/utils/Check;->d(ZLjava/lang/String;)V

    .line 139
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->packageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static packageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 73
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static packageName()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs registerReceiver(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 148
    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/logger/utils/Check;->r(Z)V

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 149
    array-length v2, p1

    if-nez v2, :cond_1

    goto :goto_3

    .line 153
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v5, p1, v1

    .line 155
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 162
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    return v4

    :cond_5
    :goto_3
    return v1
.end method

.method public static resources()Landroid/content/res/Resources;
    .locals 1

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static sensorManager()Landroid/hardware/SensorManager;
    .locals 2

    .line 125
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static telephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 113
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 116
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 117
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static wifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 121
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static windowManager()Landroid/view/WindowManager;
    .locals 2

    .line 69
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/utils/AppContextHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
