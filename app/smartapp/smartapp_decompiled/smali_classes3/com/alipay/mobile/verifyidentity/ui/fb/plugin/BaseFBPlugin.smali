.class public abstract Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;
.super Lcom/alipay/android/app/template/AbsFBPlugin;
.source "BaseFBPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/android/app/template/FBFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$ACT_CONF;,
        Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$PLUGIN_ACTION;,
        Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$VERIFY_STATUS;
    }
.end annotation


# static fields
.field protected static final KEY_COMMON_ACTION:Ljava/lang/String; = "onViAction"


# instance fields
.field private final a:Ljava/lang/String;

.field protected actionConfig:Lcom/alibaba/fastjson/JSONObject;

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/app/template/FBPluginCtx;

.field private d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

.field private e:Ljava/lang/Object;

.field public extParams:Landroid/os/Bundle;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:J

.field protected jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

.field protected mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

.field protected mainHandler:Landroid/os/Handler;

.field protected moduleData:Ljava/lang/String;

.field protected token:Ljava/lang/String;

.field protected verifyData:Ljava/lang/String;

.field protected verifyId:Ljava/lang/String;

.field protected viType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/alipay/android/app/template/AbsFBPlugin;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mainHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->g:J

    .line 206
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->g:J

    const-string p1, "cjxr"

    const-string p2, "UC-MobileIC-170505-1"

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 79
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->addPlugin(Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V

    .line 118
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginName"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "isPluginMode"

    .line 120
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->extParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyData:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$1;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    return-void

    .line 114
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string v1, "fail to addPlugin!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 502
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 503
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 504
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "status"

    .line 506
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "start"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "UC-MobileIC-170505-3"

    const-string v2, "cjzttz"

    if-eqz p1, :cond_2

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->g:J

    sub-long/2addr v3, v5

    .line 508
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start cost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehaviorWithCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 511
    :cond_2
    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 326
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 327
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getJsFuncName()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->viNativeExecuteJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "needFindExist"

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object p1

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->token:Ljava/lang/String;

    const-string v3, "NATIVE_PAYMENT_PASSWORD"

    invoke-virtual {p1, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->findModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->moduleData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->bindModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)Lcom/alipay/android/app/template/FBPluginCtx;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->c:Lcom/alipay/android/app/template/FBPluginCtx;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 259
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "\\\""

    .line 260
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "\\\'"

    .line 261
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "\\n"

    .line 262
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\\r"

    .line 263
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u000c"

    const-string v1, "\\f"

    .line 264
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u2028"

    const-string v1, "\\u2028"

    .line 265
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u2029"

    const-string v1, "\\u2029"

    .line 266
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 4

    .line 483
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->f:Landroid/content/BroadcastReceiver;

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "KExitMiniPayViewNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "json fail "

    const/4 v1, 0x0

    .line 424
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 426
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "module data can\'t be converted to jsonobject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string p1, "action"

    .line 432
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "viRpcResponse"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "data"

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 436
    :try_start_1
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 437
    :try_start_2
    const-class v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object p1, v1

    .line 439
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    :goto_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    return v6

    .line 443
    :cond_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "viClosePage"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onBNPageClose()V

    return v6

    .line 446
    :cond_2
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "payStatus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 448
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "status"

    if-eqz p1, :cond_3

    .line 451
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string p1, "success"

    .line 453
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 454
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onPaySuccess()V

    goto :goto_3

    :cond_4
    const-string p1, "paying"

    .line 456
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 457
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string v2, "\u652f\u4ed8\u4e2d"

    invoke-static {p1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 459
    :cond_5
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_3
    new-instance p1, Landroid/content/Intent;

    const-string v2, "VI_PAY_STATUS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 465
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 466
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zfjg"

    const-string v1, "UC-MobileIC-170505-4"

    .line 467
    invoke-virtual {p0, v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return v6

    :cond_6
    return v3
.end method


# virtual methods
.method public addPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    .line 88
    iget-object p1, p3, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->token:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->token:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyData:Ljava/lang/String;

    .line 90
    iget-object p1, p3, Lcom/alipay/mobile/verifyidentity/data/ModuleDataModel;->data:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->moduleData:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->extParams:Landroid/os/Bundle;

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b()V

    .line 93
    invoke-direct {p0, p4}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string p2, "Module\u5df2\u7ecf\u5b58\u5728\uff0c\u4e0d\u518d\u521b\u5efa\uff0c\u76f4\u63a5\u5173\u8054"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a()V

    return-void
.end method

.method public abstract bindModule(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    .line 375
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "action"

    .line 376
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 377
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "viToPWD"

    .line 378
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "data"

    if-eqz v1, :cond_0

    .line 379
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    const-string v3, "vid"

    invoke-virtual {p1, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 383
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 384
    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 386
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string v3, "fail to build verifyData\uff1a"

    invoke-static {v1, v3, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v1, "viStatus"

    .line 389
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->viType:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p2, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 394
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getActConf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->actionConfig:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 226
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getJsFuncName()Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "onViAction"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPluginName()Ljava/lang/String;
.end method

.method protected logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 516
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehaviorWithCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected logBehaviorWithCost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 521
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string v2, "20000666"

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 522
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    if-nez v1, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mModule:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 523
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_1
    move-object v1, p2

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    .line 521
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 525
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string p3, "logBehavior Exception"

    invoke-static {p2, p3, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method protected onBNPageClose()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->verifyId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/VIFBPluginManager;->cleanByVidAndPluginName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method protected onPaySuccess()V
    .locals 0

    return-void
.end method

.method protected onVerifyFinished(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 5

    .line 337
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iget-object v2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 341
    :try_start_0
    iget-object v3, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishParams:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 343
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 346
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 353
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_1
    :goto_1
    iget-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 356
    iget-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v3, "verifyCode"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_2
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 359
    iget-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setMessage(Ljava/lang/String;)V

    .line 360
    iget-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->bizResponseData:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->setBizResponseData(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onVerifyResult(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    return-void
.end method

.method protected onVerifyResult(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 1

    .line 365
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "viResult"

    .line 366
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public requestFocus()V
    .locals 0

    return-void
.end method

.method public sendRpcRequest(Ljava/lang/Object;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 10

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 277
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRpcRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "viRpcRequest"

    .line 279
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 281
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 283
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    :try_start_0
    const-string v2, "module"

    const-string v3, "module"

    .line 287
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "operationType"

    const-string v3, "alipay.mobile.ic.dispatch"

    .line 288
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "action"

    const-string v3, "action"

    .line 289
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    .line 290
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "verifyId"

    .line 291
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 293
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    const-string v4, "\u63d2\u4ef6rpc\u57cb\u70b9\u51fa\u73b0\u5f02\u5e38: "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, ""

    :goto_0
    move-object v3, v0

    move-object v4, v2

    .line 295
    invoke-virtual {v1, v3, v4, v7}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 297
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->sendRpc(Ljava/lang/Long;Ljava/lang/Object;)V

    .line 298
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 300
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 302
    :try_start_2
    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object p1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-interface {p1, v0, v2}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->gotRpcResult(Ljava/lang/Long;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 306
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 307
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9e1f\u5de2\u63d2\u4ef6rpc\u51fa\u73b0 channelError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 317
    :catch_2
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object p1

    .line 304
    :goto_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public setActionConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->actionConfig:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setJsFuncName(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->jsFuncNames:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "src"

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateVerifyStatus(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    const-string v0, "viStatus"

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public updateVerifyStatus(Ljava/lang/String;)V
    .locals 2

    .line 147
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "status"

    .line 148
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "viStatus"

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->doCommonAction(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method protected viNativeExecuteJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onViAction"

    :cond_0
    const-string v0, "js_function && js_function(\'$jsonData$\');"

    const-string v1, "js_function"

    .line 239
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-direct {p0, p2}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "$jsonData$"

    .line 241
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
