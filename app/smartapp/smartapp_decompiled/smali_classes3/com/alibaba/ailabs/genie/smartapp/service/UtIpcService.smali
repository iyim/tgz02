.class public Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService;
.super Ljava/lang/Object;
.source "UtIpcService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtIpcService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addDefaultProperties(Landroid/os/Bundle;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "ro.product.model"

    .line 243
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "AILABS_S1"

    :cond_1
    const-string v1, "_"

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "biz_type"

    const/4 v2, 0x0

    .line 251
    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "biz_group"

    const/4 v2, 0x1

    .line 252
    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UtIpcService"

    const-string v1, "put product msg exception."

    .line 254
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "ro.genie.uuid"

    .line 257
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.sys.is.child.mode"

    .line 258
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "from"

    .line 259
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "touch_screen"

    .line 262
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "ailabs_dataflag"

    const-string v1, "1"

    .line 265
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :try_start_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo()Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    .line 269
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 298
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 299
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 300
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string p0, ""

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static registerUTService(Landroid/app/Application;)V
    .locals 3

    .line 25
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$1;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$1;-><init>()V

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerSyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;)V

    .line 66
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$2;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$2;-><init>()V

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerSyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;)V

    .line 106
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$3;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$3;-><init>()V

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerSyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;)V

    .line 144
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$4;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$4;-><init>()V

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerSyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;)V

    .line 192
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object p0

    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$5;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService$5;-><init>()V

    const/16 v1, 0x69

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerSyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;)V

    return-void
.end method

.method public static send(Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService;->send(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static send(Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->build()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService;->send(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static send(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
