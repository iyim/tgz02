.class public Lcom/ta/audid/upload/BizResponse;
.super Ljava/lang/Object;
.source "BizResponse.java"


# static fields
.field private static final TAG_AUDID:Ljava/lang/String; = "audid"

.field private static final TAG_CODE:Ljava/lang/String; = "code"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_MESSAGE:Ljava/lang/String; = "message"

.field private static final TAG_UTDID:Ljava/lang/String; = "utdid"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/ta/audid/upload/BizResponse;->code:I

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/ta/audid/upload/BizResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public static isSuccess(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x271c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseResult(Ljava/lang/String;)Lcom/ta/audid/upload/BizResponse;
    .locals 7

    const-string/jumbo v0, "utdid"

    const-string v1, "audid"

    const-string v2, "data"

    const-string v3, "message"

    const-string v4, "code"

    .line 29
    new-instance v5, Lcom/ta/audid/upload/BizResponse;

    invoke-direct {v5}, Lcom/ta/audid/upload/BizResponse;-><init>()V

    .line 31
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v5, Lcom/ta/audid/upload/BizResponse;->code:I

    .line 35
    :cond_0
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/ta/audid/upload/BizResponse;->message:Ljava/lang/String;

    .line 38
    :cond_1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 39
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    invoke-static {v1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAudidFile(Ljava/lang/String;)V

    .line 47
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ta/audid/upload/UtdidKeyFile;->writeUtdidToSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/ta/audid/upload/UtdidKeyFile;->writeSdcardUtdidFile(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppUtdidFile(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->getInstance()Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->sendBroadCast(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, ""

    invoke-static {p0, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v5
.end method
