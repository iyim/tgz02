.class public abstract Lcom/taobao/orange/sync/BaseAuthRequest;
.super Lcom/taobao/orange/sync/BaseRequest;
.source "BaseAuthRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taobao/orange/sync/BaseRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final CURVER_SIGN:Ljava/lang/String; = "1.0"

.field private static final REQUEST_APP_KEY:Ljava/lang/String; = "o-app-key"

.field private static final REQUEST_APP_VERSION:Ljava/lang/String; = "o-app-version"

.field private static final REQUEST_DEVICEID:Ljava/lang/String; = "o-device-id"

.field private static final REQUEST_HOST:Ljava/lang/String; = "host"

.field private static final REQUEST_NUMBER:Ljava/lang/String; = "o-request-unique"

.field private static final REQUEST_SDK_VERSION:Ljava/lang/String; = "o-sdk-version"

.field private static final REQUEST_SIGN_INFO:Ljava/lang/String; = "o-sign"

.field private static final REQUEST_SIGN_VERSION:Ljava/lang/String; = "o-sign-version"

.field private static final REQUEST_TIMESTAMP:Ljava/lang/String; = "o-timestamp"

.field private static final REQUEST_USER_INFO:Ljava/lang/String; = "o-user-info"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "o-code"

.field private static final RESPONSE_CODE_EXPIRED:Ljava/lang/String; = "10002"

.field private static final RESPONSE_SERVER_TIMESTAMP:Ljava/lang/String; = "o-server-timestamp"

.field private static final SIGN_SEPARETOR:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "AuthRequest"


# instance fields
.field private mCurTimestamp:J

.field private mHost:Ljava/lang/String;

.field private mIsAckReq:Z

.field private mMD5:Ljava/lang/String;

.field private mReqNo:Ljava/lang/String;

.field private mReqType:Ljava/lang/String;

.field private mSign:Lcom/taobao/orange/inner/ISign;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/taobao/orange/sync/BaseRequest;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mMD5:Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mIsAckReq:Z

    .line 67
    iget-boolean p1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mIsAckReq:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/taobao/orange/GlobalOrange;->ackHost:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/taobao/orange/GlobalOrange;->dcHost:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mHost:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqType:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/taobao/orange/sync/BaseAuthRequest;->updateReqTimestamp()V

    .line 71
    sget-object p1, Lcom/taobao/orange/GlobalOrange;->appSecret:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    new-instance p1, Lcom/taobao/orange/impl/TBGuardSign;

    invoke-direct {p1}, Lcom/taobao/orange/impl/TBGuardSign;-><init>()V

    iput-object p1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mSign:Lcom/taobao/orange/inner/ISign;

    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lcom/taobao/orange/impl/HmacSign;

    invoke-direct {p1}, Lcom/taobao/orange/impl/HmacSign;-><init>()V

    iput-object p1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mSign:Lcom/taobao/orange/inner/ISign;

    :goto_1
    return-void
.end method

.method private checkResposeHeads(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "o-code"

    .line 179
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->getDecodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "10002"

    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 181
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "expired, correct timestamp"

    aput-object v3, v2, v1

    const-string v3, "AuthRequest"

    const-string v4, "checkResposeHeads"

    invoke-static {v3, v4, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "o-server-timestamp"

    .line 182
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/orange/util/OrangeUtils;->getDecodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/orange/util/OrangeUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_0

    .line 183
    iget-wide v8, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mCurTimestamp:J

    cmp-long p1, v8, v6

    if-eqz p1, :cond_0

    sub-long v6, v4, v8

    const/4 p1, 0x6

    .line 185
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v2, "reqTimestampOffset(s)"

    aput-object v2, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "server"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "client"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mCurTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "checkResposeHeads update global"

    invoke-static {v3, v0, p1}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    sput-wide v6, Lcom/taobao/orange/GlobalOrange;->reqTimestampOffset:J

    .line 187
    invoke-direct {p0}, Lcom/taobao/orange/sync/BaseAuthRequest;->updateReqTimestamp()V

    :cond_0
    return-void
.end method

.method private formatNetConnection(Lcom/taobao/orange/inner/INetConnection;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->appKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->appVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    sget-object v2, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {p0}, Lcom/taobao/orange/sync/BaseAuthRequest;->getReqPostBody()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-direct {p0, v3}, Lcom/taobao/orange/sync/BaseAuthRequest;->getSignInfoHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/orange/sync/BaseAuthRequest;->getReqParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/taobao/orange/inner/INetConnection;->setParams(Ljava/util/Map;)V

    .line 218
    invoke-interface {p1, p2}, Lcom/taobao/orange/inner/INetConnection;->openConnection(Ljava/lang/String;)V

    .line 219
    iget-boolean p2, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mIsAckReq:Z

    if-eqz p2, :cond_1

    .line 220
    iget-object p2, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqNo:Ljava/lang/String;

    invoke-static {p2}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "o-request-unique"

    invoke-interface {p1, v5, p2}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-wide v5, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mCurTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "o-timestamp"

    invoke-interface {p1, v5, p2}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "1.0"

    .line 223
    invoke-static {p2}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "o-sign-version"

    invoke-interface {p1, v5, p2}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "1.5.4.13"

    .line 224
    invoke-static {p2}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "o-sdk-version"

    invoke-interface {p1, v5, p2}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "o-app-key"

    .line 225
    invoke-interface {p1, p2, v0}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "o-app-version"

    .line 226
    invoke-interface {p1, p2, v1}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "o-device-id"

    .line 227
    invoke-interface {p1, p2, v2}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "o-sign"

    .line 228
    invoke-interface {p1, p2, v4}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    instance-of p2, p1, Lcom/taobao/orange/impl/TBNetConnection;

    if-eqz p2, :cond_2

    const-string p2, "f-refer"

    const-string v0, "orange"

    .line 230
    invoke-interface {p1, p2, v0}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2
    sget-object p2, Lcom/taobao/orange/GlobalOrange;->userId:Ljava/lang/String;

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "o-user-info"

    .line 234
    invoke-interface {p1, v0, p2}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_3
    iget-object p2, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mHost:Ljava/lang/String;

    invoke-static {p2}, Lcom/taobao/orange/util/OrangeUtils;->getEncodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "host"

    invoke-interface {p1, v0, p2}, Lcom/taobao/orange/inner/INetConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "POST"

    .line 239
    invoke-interface {p1, p2}, Lcom/taobao/orange/inner/INetConnection;->setMethod(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/orange/inner/INetConnection;->setBody([B)V

    goto :goto_0

    :cond_4
    const-string p2, "GET"

    .line 242
    invoke-interface {p1, p2}, Lcom/taobao/orange/inner/INetConnection;->setMethod(Ljava/lang/String;)V

    .line 244
    :goto_0
    invoke-interface {p1}, Lcom/taobao/orange/inner/INetConnection;->connect()V

    return-void

    :cond_5
    :goto_1
    const/16 p1, 0x8

    .line 213
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v3, "signInfo"

    aput-object v3, p1, p2

    const/4 p2, 0x1

    aput-object v4, p1, p2

    const/4 p2, 0x2

    const-string v3, "appKey"

    aput-object v3, p1, p2

    const/4 p2, 0x3

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "appVersion"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    aput-object v1, p1, p2

    const/4 p2, 0x6

    const-string v0, "deviceId"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    aput-object v2, p1, p2

    const-string p2, "AuthRequest"

    const-string v0, "getRequestImpl error"

    invoke-static {p2, v0, p1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private formateReqUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->env:Lcom/taobao/orange/OConstant$ENV;

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    if-ne v0, v1, :cond_0

    const-string v0, "https"

    goto :goto_0

    :cond_0
    const-string v0, "http"

    .line 196
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 198
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSignInfoHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mCurTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    iget-boolean v2, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mIsAckReq:Z

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mSign:Lcom/taobao/orange/inner/ISign;

    sget-object v4, Lcom/taobao/orange/GlobalOrange;->context:Landroid/content/Context;

    sget-object v5, Lcom/taobao/orange/GlobalOrange;->appKey:Ljava/lang/String;

    sget-object v6, Lcom/taobao/orange/GlobalOrange;->appSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/taobao/orange/GlobalOrange;->authCode:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/taobao/orange/inner/ISign;->sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateReqTimestamp()V
    .locals 4

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lcom/taobao/orange/GlobalOrange;->reqTimestampOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mCurTimestamp:J

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mCurTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqNo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract getReqParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getReqPostBody()Ljava/lang/String;
.end method

.method protected abstract parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public syncRequest()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 91
    invoke-static {v2}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "AuthRequest"

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 92
    new-array v0, v3, [Ljava/lang/Object;

    const-string v8, "isAckReq"

    aput-object v8, v0, v7

    iget-boolean v8, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mIsAckReq:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v0, v2

    const-string/jumbo v8, "reqType"

    aput-object v8, v0, v5

    iget-object v8, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqType:Ljava/lang/String;

    aput-object v8, v0, v4

    const-string/jumbo v8, "syncRequest start"

    invoke-static {v6, v8, v0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v8, "message"

    const-string v9, "code"

    const-string/jumbo v10, "syncRequest fail"

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    .line 95
    iput v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    const-string/jumbo v0, "utdid is null"

    .line 96
    iput-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    .line 97
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v9, v0, v7

    iget v3, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object v8, v0, v5

    iget-object v2, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-static {v6, v10, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v11

    .line 102
    :cond_1
    :try_start_0
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->netConnection:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/taobao/orange/inner/INetConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 110
    instance-of v0, v12, Lcom/taobao/orange/impl/HurlNetConnection;

    const/16 v13, 0xc8

    const-string v14, "host"

    if-eqz v0, :cond_4

    .line 111
    iget-boolean v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mIsAckReq:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/taobao/orange/GlobalOrange;->ackVips:Ljava/util/Set;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/taobao/orange/GlobalOrange;->dcVips:Ljava/util/Set;

    :goto_0
    invoke-static {v0}, Lcom/taobao/orange/util/OrangeUtils;->randomListFromSet(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 112
    iget-object v15, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mHost:Ljava/lang/String;

    invoke-interface {v0, v7, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 115
    :try_start_1
    iget-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqType:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/taobao/orange/sync/BaseAuthRequest;->formateReqUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-direct {v1, v12, v0}, Lcom/taobao/orange/sync/BaseAuthRequest;->formatNetConnection(Lcom/taobao/orange/inner/INetConnection;Ljava/lang/String;)V

    .line 117
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    .line 118
    iget v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    if-ne v0, v13, :cond_3

    .line 119
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->getHeadFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/taobao/orange/sync/BaseAuthRequest;->checkResposeHeads(Ljava/util/Map;)V

    .line 120
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->getResponse()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    move-object v11, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 124
    :try_start_2
    invoke-static {v4}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 125
    new-array v11, v5, [Ljava/lang/Object;

    aput-object v14, v11, v7

    aput-object v3, v11, v2

    invoke-static {v6, v10, v0, v11}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :cond_3
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    const/4 v3, 0x4

    const/4 v11, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    throw v0

    .line 133
    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mHost:Ljava/lang/String;

    iget-object v3, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mReqType:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/taobao/orange/sync/BaseAuthRequest;->formateReqUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {v1, v12, v0}, Lcom/taobao/orange/sync/BaseAuthRequest;->formatNetConnection(Lcom/taobao/orange/inner/INetConnection;Ljava/lang/String;)V

    .line 135
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    .line 136
    iget v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    if-ne v0, v13, :cond_5

    .line 137
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->getHeadFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/taobao/orange/sync/BaseAuthRequest;->checkResposeHeads(Ljava/util/Map;)V

    .line 138
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->getResponse()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .line 146
    :goto_3
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 141
    :try_start_4
    invoke-static {v4}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v14, v3, v7

    iget-object v11, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mHost:Ljava/lang/String;

    aput-object v11, v3, v2

    invoke-static {v6, v10, v0, v3}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 144
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    :cond_7
    const/4 v11, 0x0

    .line 150
    :goto_4
    iget-boolean v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mIsAckReq:Z

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    return-object v3

    .line 153
    :cond_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x2

    .line 154
    iput v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    const-string v0, "content is empty"

    .line 155
    iput-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    const/4 v3, 0x4

    .line 156
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v9, v0, v7

    iget v3, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object v8, v0, v5

    iget-object v2, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-static {v6, v10, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    const/4 v2, 0x0

    return-object v2

    .line 159
    :cond_9
    iget-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mMD5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->mMD5:Ljava/lang/String;

    invoke-static {v11}, Lcom/taobao/orange/util/MD5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x3

    .line 160
    iput v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    const-string v0, "content is broken"

    .line 161
    iput-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    const/4 v3, 0x4

    .line 162
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v9, v0, v7

    iget v3, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object v8, v0, v5

    iget-object v2, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-static {v6, v10, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 168
    :cond_a
    :try_start_5
    invoke-virtual {v1, v11}, Lcom/taobao/orange/sync/BaseAuthRequest;->parseResContent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v16, v11

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    const/4 v0, -0x4

    .line 170
    iput v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->code:I

    .line 171
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    .line 172
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6, v10, v2, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 v16, 0x0

    :goto_6
    return-object v16

    .line 146
    :goto_7
    invoke-interface {v12}, Lcom/taobao/orange/inner/INetConnection;->disconnect()V

    throw v0

    :catch_3
    move-exception v0

    .line 104
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "syncRequest"

    invoke-static {v6, v3, v0, v2}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/orange/sync/BaseAuthRequest;->message:Ljava/lang/String;

    goto :goto_5
.end method
