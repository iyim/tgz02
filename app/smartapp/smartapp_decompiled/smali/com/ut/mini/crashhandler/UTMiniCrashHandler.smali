.class public Lcom/ut/mini/crashhandler/UTMiniCrashHandler;
.super Ljava/lang/Object;
.source "UTMiniCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "UTCrashHandler"

.field private static volatile mCrashing:Z

.field private static s_instance:Lcom/ut/mini/crashhandler/UTMiniCrashHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mIsTurnOff:Z

.field private mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    invoke-direct {v0}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;-><init>()V

    sput-object v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->s_instance:Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mCrashing:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    .line 24
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    return-void
.end method

.method private _initialize()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 61
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/crashhandler/UTMiniCrashHandler;
    .locals 1

    .line 35
    sget-object v0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->s_instance:Lcom/ut/mini/crashhandler/UTMiniCrashHandler;

    return-object v0
.end method


# virtual methods
.method public isTurnOff()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    return v0
.end method

.method public setCrashCaughtListener(Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    return-void
.end method

.method public turnOff()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mIsTurnOff:Z

    return-void
.end method

.method public turnOn(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->_initialize()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    const/16 v0, 0xa

    .line 71
    :try_start_0
    sget-boolean v1, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mCrashing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 128
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 72
    :try_start_1
    sput-boolean v1, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mCrashing:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const-string v3, "Caught Exception By UTCrashHandler.Please see log as follows!"

    .line 75
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_2
    invoke-static {p2}, Lcom/ut/mini/crashhandler/UTExceptionParser;->parse(Ljava/lang/Throwable;)Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 81
    iget-object v4, v3, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->mCrashDetail:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 83
    invoke-virtual {v3}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getExpName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 84
    invoke-virtual {v3}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getMd5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 87
    iget-object v5, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    .line 89
    :try_start_2
    iget-object v5, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mListener:Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;

    invoke-interface {v5, p1, p2}, Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;->onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 91
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 96
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_4
    move-object v9, v4

    const-string v4, "StackTrace"

    .line 99
    invoke-virtual {v3}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getCrashDetail()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v10, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string v4, "UT"

    const/4 v5, 0x1

    .line 102
    invoke-virtual {v3}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getMd5()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-virtual {v3}, Lcom/ut/mini/crashhandler/UTExceptionParser$UTExceptionItem;->getExpName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "_priority"

    const-string v4, "5"

    .line 105
    invoke-virtual {v10, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    const-string v3, "_sls"

    const-string/jumbo v4, "yes"

    .line 108
    invoke-virtual {v10, v3, v4}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 111
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v10}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    const-string v3, "Record crash stacktrace error"

    .line 115
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Fatal Error,must call setRequestAuthentication method first."

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 120
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    iget-object v1, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_7

    .line 124
    :goto_3
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 127
    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 128
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_4
    return-void

    .line 123
    :goto_5
    iget-object v2, p0, Lcom/ut/mini/crashhandler/UTMiniCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_8

    .line 124
    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 127
    :cond_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 128
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_6
    throw v1
.end method
