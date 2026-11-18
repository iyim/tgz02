.class public final Lcom/alibaba/android/umbrella/weex/UmbrellaWeexLauncher;
.super Ljava/lang/Object;
.source "UmbrellaWeexLauncher.java"


# static fields
.field private static final KEY_MODULE_UMBRELLA_WEEX:Ljava/lang/String; = "umbrella-weex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static launchUmbrella(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string p0, "umbrella-weex"

    .line 23
    const-class v0, Lcom/alibaba/android/umbrella/weex/UmbrellaWeexModule;

    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "UmbrellaWeexLauncher"

    const-string v1, "launchUmbrella"

    .line 25
    invoke-static {v0, v1, p0}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
