.class public Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;
.super Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/AbstractSerializer;
.source "JsonSerializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JsonSerializer"

.field public static final VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field protected mRequestDataJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-direct {p0, p2, p3}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/AbstractSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iput p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I

    .line 49
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


# virtual methods
.method public buildNameValuePairs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "extParam"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 90
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mOperationType:Ljava/lang/String;

    const-string v2, "operationType"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getScene()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scene"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;
    .locals 3

    .line 105
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 106
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestData"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I

    return v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDataDigest()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    .line 178
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getRequestDataJson()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    return-object v0

    .line 166
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "[]"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;

    .line 167
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    return-object v0
.end method

.method public nvpairs2Bytes(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "utf-8"

    .line 72
    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public packet()[B
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->prePacket(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->postPacket(Ljava/util/List;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public postPacket(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public prePacket(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->b:Ljava/lang/Object;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I

    return-void
.end method
