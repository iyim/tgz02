.class public Lcom/alibaba/ailabs/genie/data/utils/AGUILog;
.super Ljava/lang/Object;
.source "AGUILog.java"


# static fields
.field private static final EVENT_TYPE:Ljava/lang/String; = "genieData"

.field private static final PKG:Ljava/lang/String; = "com.alibaba.ailabs.genie.data"

.field private static final TAG:Ljava/lang/String; = "AGUILog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendLogToWebGate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "traceId"

    .line 40
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asrLogId"

    .line 41
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "commandId"

    .line 42
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "logMsg"

    .line 43
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "pkg"

    const-string v0, "com.alibaba.ailabs.genie.data"

    .line 44
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 46
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AGUILog"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, "genieData"

    const-string v5, "APP"

    const-string v7, ""

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
