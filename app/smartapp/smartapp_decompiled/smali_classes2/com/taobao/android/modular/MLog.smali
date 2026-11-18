.class public Lcom/taobao/android/modular/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/modular/MLog$DefaultLogger;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGGER:Lcom/taobao/android/modular/LogProvider;

.field private static volatile mLogger:Lcom/taobao/android/modular/LogProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/taobao/android/modular/MLog$DefaultLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/modular/MLog$DefaultLogger;-><init>(Lcom/taobao/android/modular/MLog$1;)V

    sput-object v0, Lcom/taobao/android/modular/MLog;->DEFAULT_LOGGER:Lcom/taobao/android/modular/LogProvider;

    .line 9
    sget-object v0, Lcom/taobao/android/modular/MLog;->DEFAULT_LOGGER:Lcom/taobao/android/modular/LogProvider;

    sput-object v0, Lcom/taobao/android/modular/MLog;->mLogger:Lcom/taobao/android/modular/LogProvider;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/taobao/android/modular/MLog;->mLogger:Lcom/taobao/android/modular/LogProvider;

    invoke-interface {v0, p0, p1}, Lcom/taobao/android/modular/LogProvider;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/taobao/android/modular/MLog;->mLogger:Lcom/taobao/android/modular/LogProvider;

    invoke-interface {v0, p0, p1}, Lcom/taobao/android/modular/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/taobao/android/modular/MLog;->mLogger:Lcom/taobao/android/modular/LogProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/android/modular/LogProvider;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static set(Lcom/taobao/android/modular/LogProvider;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/taobao/android/modular/MLog;->mLogger:Lcom/taobao/android/modular/LogProvider;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/taobao/android/modular/MLog;->mLogger:Lcom/taobao/android/modular/LogProvider;

    invoke-interface {v0, p0, p1}, Lcom/taobao/android/modular/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/taobao/android/modular/MLog;->mLogger:Lcom/taobao/android/modular/LogProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/android/modular/LogProvider;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
