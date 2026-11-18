.class public Lcom/alibaba/analytics/utils/PhoneInfoUtils;
.super Ljava/lang/Object;
.source "PhoneInfoUtils.java"


# static fields
.field private static final STORAGE_KEY:Ljava/lang/String; = "UTCommon"

.field private static bGetSystemImei:Z

.field private static bGetSystemImsi:Z

.field private static mSystemImei:Ljava/lang/String;

.field private static mSystemImsi:Ljava/lang/String;

.field private static final s_random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->s_random:Ljava/util/Random;

    const-string v0, ""

    .line 21
    sput-object v0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImei:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImsi:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImei:Z

    .line 25
    sput-boolean v0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImsi:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 212
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const-string v1, "UTF-8"

    const-string v2, "_ie"

    const/4 v3, 0x0

    const-string v4, "UTCommon"

    if-eqz p0, :cond_1

    .line 48
    :try_start_0
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, ""

    .line 50
    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 52
    new-instance v6, Ljava/lang/String;

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v0}, Lcom/alibaba/analytics/utils/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v6, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 54
    invoke-static {v6}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    return-object v6

    .line 72
    :catch_0
    :cond_0
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->getImeiBySystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 75
    :goto_0
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    invoke-static {}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz p0, :cond_3

    .line 80
    :try_start_1
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 83
    new-instance v3, Ljava/lang/String;

    .line 84
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 83
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v5
.end method

.method public static declared-synchronized getImeiBySystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-boolean v1, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImei:Z

    if-eqz v1, :cond_0

    .line 144
    sget-object p0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImei:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 148
    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 152
    invoke-static {p0, v2}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    .line 153
    monitor-exit v0

    return-object v1

    :catch_0
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "PhoneInfoUtils"

    .line 160
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getImei"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "phone"

    .line 161
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_3

    .line 163
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImei:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :catch_1
    :cond_3
    :try_start_3
    sput-boolean v1, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImei:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    sput-boolean v1, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImei:Z

    throw p0

    .line 171
    :goto_0
    sget-object p0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImei:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const-string v1, "UTF-8"

    const-string v2, "_is"

    const/4 v3, 0x0

    const-string v4, "UTCommon"

    if-eqz p0, :cond_1

    .line 97
    :try_start_0
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, ""

    .line 99
    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    new-instance v6, Ljava/lang/String;

    .line 102
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v0}, Lcom/alibaba/analytics/utils/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v6, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 103
    invoke-static {v6}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    return-object v6

    .line 121
    :catch_0
    :cond_0
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->getImsiBySystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 123
    :goto_0
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    invoke-static {}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz p0, :cond_3

    .line 128
    :try_start_1
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 131
    new-instance v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 131
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v5
.end method

.method public static declared-synchronized getImsiBySystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;

    monitor-enter v0

    .line 177
    :try_start_0
    sget-boolean v1, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImsi:Z

    if-eqz v1, :cond_0

    .line 178
    sget-object p0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImsi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 182
    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 186
    invoke-static {p0, v2}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    .line 187
    monitor-exit v0

    return-object v1

    :catch_0
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "PhoneInfoUtils"

    .line 194
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getImsi"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "phone"

    .line 195
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_3

    .line 197
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImsi:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :catch_1
    :cond_3
    :try_start_3
    sput-boolean v1, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImsi:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    sput-boolean v1, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->bGetSystemImsi:Z

    throw p0

    .line 205
    :goto_0
    sget-object p0, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->mSystemImsi:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getUniqueID()Ljava/lang/String;
    .locals 7

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 30
    sget-object v2, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->s_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 31
    sget-object v3, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->s_random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 32
    invoke-static {v1}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v1

    .line 33
    invoke-static {v0}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    .line 34
    invoke-static {v2}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    .line 35
    invoke-static {v3}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v3

    const/16 v4, 0x10

    .line 36
    new-array v4, v4, [B

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 37
    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    invoke-static {v0, v6, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    .line 39
    invoke-static {v2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    .line 40
    invoke-static {v3, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    .line 41
    invoke-static {v4, v0}, Lcom/alibaba/analytics/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
