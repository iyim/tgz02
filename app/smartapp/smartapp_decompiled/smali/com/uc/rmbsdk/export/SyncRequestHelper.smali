.class Lcom/uc/rmbsdk/export/SyncRequestHelper;
.super Ljava/lang/Object;
.source "SyncRequestHelper.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final BIZ_ID:Ljava/lang/String; = "biz_id"

.field private static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final DS:Ljava/lang/String; = "ds"

.field private static final DS_TYPE:Ljava/lang/String; = "ds_type"

.field private static final QUEUE_ID:Ljava/lang/String; = "queue_id"

.field private static final SEQ:Ljava/lang/String; = "seq"

.field private static final SYNC_ACK:Ljava/lang/String; = "ack"

.field private static final SYNC_META:Ljava/lang/String; = "meta"

.field private static final SYNC_PULL:Ljava/lang/String; = "pull"

.field private static final TAG:Ljava/lang/String; = "RMB-SDK"

.field private static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static ack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const-string v0, "ack"

    .line 258
    invoke-static {v0}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->getSyncServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    sget-boolean v2, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    const-string v3, "RMB-SDK"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ack url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    new-instance v2, Lcom/uc/base/net/unet/HttpClientSync;

    invoke-direct {v2}, Lcom/uc/base/net/unet/HttpClientSync;-><init>()V

    .line 261
    invoke-virtual {v2, v1}, Lcom/uc/base/net/unet/HttpClientSync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object v1

    const-string v4, "POST"

    .line 262
    invoke-interface {v1, v4}, Lcom/uc/base/net/IRequest;->setMethod(Ljava/lang/String;)V

    const-string v4, "application/json"

    .line 263
    invoke-interface {v1, v4}, Lcom/uc/base/net/IRequest;->setContentType(Ljava/lang/String;)V

    .line 265
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "app_id"

    .line 266
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uc/rmbsdk/export/RmbManager;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "biz_id"

    .line 267
    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "channel_id"

    .line 268
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "queue_id"

    .line 269
    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p2, "user_id"

    .line 270
    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ds_type"

    .line 271
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ds"

    .line 272
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p2, "seq"

    .line 273
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 275
    sget-boolean p3, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ack body: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/uc/base/net/IRequest;->setBodyProvider([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 278
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    :goto_0
    invoke-virtual {v2, v1}, Lcom/uc/base/net/unet/HttpClientSync;->sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;

    move-result-object p2

    if-nez p2, :cond_2

    .line 282
    invoke-virtual {v2}, Lcom/uc/base/net/unet/HttpClientSync;->errorCode()I

    move-result p2

    const-string p3, ""

    invoke-static {v0, p0, p1, p2, p3}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 285
    :cond_2
    invoke-static {v2, p2}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->readResponse(Lcom/uc/base/net/unet/HttpClientSync;Lcom/uc/base/net/IResponse;)Ljava/lang/String;

    move-result-object p3

    .line 286
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 287
    invoke-interface {p2}, Lcom/uc/base/net/IResponse;->getStatusCode()I

    move-result p3

    invoke-interface {p2}, Lcom/uc/base/net/IResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p3, p2}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 291
    :cond_3
    :try_start_1
    sget-boolean p2, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ack resp: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "status"

    .line 293
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_5

    const-string/jumbo p4, "status_info"

    .line 295
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-static {v0, p0, p1, p3, p2}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private static getSyncServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 52
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->getSyncServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce="

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timestamp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/uc/rmbsdk/export/IRmbInterface;->signature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static meta(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const-string v0, "meta"

    .line 112
    invoke-static {v0}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->getSyncServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    sget-boolean v2, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    const-string v3, "RMB-SDK"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch meta url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    new-instance v2, Lcom/uc/base/net/unet/HttpClientSync;

    invoke-direct {v2}, Lcom/uc/base/net/unet/HttpClientSync;-><init>()V

    .line 115
    invoke-virtual {v2, v1}, Lcom/uc/base/net/unet/HttpClientSync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object v1

    const-string v4, "POST"

    .line 116
    invoke-interface {v1, v4}, Lcom/uc/base/net/IRequest;->setMethod(Ljava/lang/String;)V

    const-string v4, "application/json"

    .line 117
    invoke-interface {v1, v4}, Lcom/uc/base/net/IRequest;->setContentType(Ljava/lang/String;)V

    .line 119
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "biz_id"

    .line 120
    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "channel_id"

    .line 121
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    sget-boolean v5, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetch meta body: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/uc/base/net/IRequest;->setBodyProvider([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 126
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    :goto_0
    invoke-virtual {v2, v1}, Lcom/uc/base/net/unet/HttpClientSync;->sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 130
    invoke-virtual {v2}, Lcom/uc/base/net/unet/HttpClientSync;->errorCode()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, p0, p1, v1, v2}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    .line 133
    :cond_2
    invoke-static {v2, v1}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->readResponse(Lcom/uc/base/net/unet/HttpClientSync;Lcom/uc/base/net/IResponse;)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    invoke-interface {v1}, Lcom/uc/base/net/IResponse;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lcom/uc/base/net/IResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, p1, v2, v1}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    .line 139
    :cond_3
    :try_start_1
    sget-boolean v1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch meta resp: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    .line 141
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v3, "status_info"

    .line 143
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, p0, p1, v2, v1}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    :cond_5
    const-string/jumbo p0, "ret"

    .line 147
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo p1, "queue_ids"

    .line 148
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_6

    return-object v4

    .line 153
    :cond_6
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_7

    .line 155
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-object v0

    :catch_1
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method private static onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 100
    sget-boolean v0, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: syncType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bizId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RMB-SDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->statSyncError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 306
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Lcom/uc/base/net/unet/HttpClientSync;

    invoke-direct {v0}, Lcom/uc/base/net/unet/HttpClientSync;-><init>()V

    .line 310
    invoke-virtual {v0, p0}, Lcom/uc/base/net/unet/HttpClientSync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object p0

    const-string v2, "POST"

    .line 311
    invoke-interface {p0, v2}, Lcom/uc/base/net/IRequest;->setMethod(Ljava/lang/String;)V

    const-string v2, "application/json"

    .line 312
    invoke-interface {p0, v2}, Lcom/uc/base/net/IRequest;->setContentType(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/uc/base/net/IRequest;->setBodyProvider([B)V

    .line 314
    invoke-virtual {v0, p0}, Lcom/uc/base/net/unet/HttpClientSync;->sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;

    move-result-object p0

    const-string p1, "errCode: "

    const-string v2, "RMB-SDK"

    if-nez p0, :cond_2

    .line 316
    sget-boolean p0, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uc/base/net/unet/HttpClientSync;->errorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    .line 319
    :cond_2
    invoke-static {v0, p0}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->readResponse(Lcom/uc/base/net/unet/HttpClientSync;Lcom/uc/base/net/IResponse;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    sget-boolean v0, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/uc/base/net/IResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errMsg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/uc/base/net/IResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method static publicParam2Map(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    :try_start_0
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/uc/rmbsdk/export/IRmbInterface;->getPublicParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "&"

    .line 332
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 333
    array-length v1, p0

    if-lez v1, :cond_1

    .line 334
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, "="

    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 336
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 337
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method static pull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/uc/rmbsdk/export/RmbSyncInfo;
    .locals 8

    const-string/jumbo v0, "seq"

    const-string v1, "pull"

    .line 176
    invoke-static {v1}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->getSyncServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    sget-boolean v3, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    const-string v4, "RMB-SDK"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pull url: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    new-instance v3, Lcom/uc/base/net/unet/HttpClientSync;

    invoke-direct {v3}, Lcom/uc/base/net/unet/HttpClientSync;-><init>()V

    .line 179
    invoke-virtual {v3, v2}, Lcom/uc/base/net/unet/HttpClientSync;->getRequest(Ljava/lang/String;)Lcom/uc/base/net/IRequest;

    move-result-object v2

    const-string v5, "POST"

    .line 180
    invoke-interface {v2, v5}, Lcom/uc/base/net/IRequest;->setMethod(Ljava/lang/String;)V

    const-string v5, "application/json"

    .line 181
    invoke-interface {v2, v5}, Lcom/uc/base/net/IRequest;->setContentType(Ljava/lang/String;)V

    .line 183
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "app_id"

    .line 184
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/uc/rmbsdk/export/RmbManager;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "biz_id"

    .line 185
    invoke-virtual {v5, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "channel_id"

    .line 186
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "queue_id"

    .line 187
    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "user_id"

    .line 188
    invoke-virtual {v5, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ds_type"

    .line 189
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ds"

    .line 190
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "count"

    const/16 v6, 0xa

    .line 192
    invoke-virtual {v5, p3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    .line 194
    sget-boolean v5, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pull body: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-interface {v2, p3}, Lcom/uc/base/net/IRequest;->setBodyProvider([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 197
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 199
    :goto_0
    invoke-virtual {v3, v2}, Lcom/uc/base/net/unet/HttpClientSync;->sendRequest(Lcom/uc/base/net/IRequest;)Lcom/uc/base/net/IResponse;

    move-result-object p3

    const/4 v2, 0x0

    if-nez p3, :cond_2

    .line 201
    invoke-virtual {v3}, Lcom/uc/base/net/unet/HttpClientSync;->errorCode()I

    move-result p2

    const-string p3, ""

    invoke-static {v1, p0, p1, p2, p3}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 204
    :cond_2
    invoke-static {v3, p3}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->readResponse(Lcom/uc/base/net/unet/HttpClientSync;Lcom/uc/base/net/IResponse;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    invoke-interface {p3}, Lcom/uc/base/net/IResponse;->getStatusCode()I

    move-result p2

    invoke-interface {p3}, Lcom/uc/base/net/IResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p0, p1, p2, p3}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 210
    :cond_3
    :try_start_1
    sget-boolean p3, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pull resp: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_4
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    .line 212
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo p2, "status_info"

    .line 214
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-static {v1, p0, p1, v3, p2}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->onRequestError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_5
    const-string/jumbo p0, "ret"

    .line 218
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p3, "msgs"

    .line 219
    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 220
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_6

    return-object v2

    .line 224
    :cond_6
    new-instance v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;

    invoke-direct {v3}, Lcom/uc/rmbsdk/export/RmbSyncInfo;-><init>()V

    .line 225
    iput-object p1, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;->channelId:Ljava/lang/String;

    .line 226
    iput-object p2, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;->queueId:Ljava/lang/String;

    .line 227
    iput-wide p4, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;->seq:J

    const-string p1, "has_more"

    .line 228
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;->hasMore:Z

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_9

    .line 230
    invoke-virtual {p3, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p2, v4, p4

    if-gez p2, :cond_7

    goto :goto_2

    .line 233
    :cond_7
    iget-wide v6, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;->seq:J

    cmp-long p2, v4, v6

    if-lez p2, :cond_8

    .line 234
    iput-wide v4, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;->seq:J

    :cond_8
    const-string p2, "content"

    .line 236
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object p2, v3, Lcom/uc/rmbsdk/export/RmbSyncInfo;->messages:Ljava/util/ArrayList;

    new-instance v6, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;

    invoke-direct {v6, v4, v5, p1}, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;-><init>(JLjava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_9
    return-object v3

    :catch_1
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method private static readResponse(Lcom/uc/base/net/unet/HttpClientSync;Lcom/uc/base/net/IResponse;)Ljava/lang/String;
    .locals 4

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    invoke-interface {p1}, Lcom/uc/base/net/IResponse;->readResponse()Ljava/io/InputStream;

    move-result-object p1

    const/16 v1, 0x400

    .line 79
    new-array v1, v1, [B

    .line 81
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 85
    array-length v0, p1

    if-lez v0, :cond_2

    .line 86
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/uc/base/net/unet/HttpClientSync;->close()V

    :cond_1
    return-object v0

    :cond_2
    if-eqz p0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 89
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/uc/base/net/unet/HttpClientSync;->close()V

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/uc/base/net/unet/HttpClientSync;->close()V

    :cond_4
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
