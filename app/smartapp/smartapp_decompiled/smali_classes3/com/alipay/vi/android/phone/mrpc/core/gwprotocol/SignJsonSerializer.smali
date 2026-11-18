.class public Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;
.super Ljava/lang/Object;
.source "SignJsonSerializer.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Serializer;


# static fields
.field public static final APP_KEY_DEBUG:Ljava/lang/String; = "rpc-sdk"

.field public static final APP_KEY_ONLINE:Ljava/lang/String; = "rpc-sdk-online"


# instance fields
.field private a:Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/vi/android/phone/mrpc/core/Config;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;Landroid/content/Context;Lcom/alipay/vi/android/phone/mrpc/core/Config;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 36
    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->d:J

    .line 39
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->a:Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    .line 40
    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->b:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->c:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    .line 42
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

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->getSignTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->b(Ljava/util/List;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 68
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->c:Lcom/alipay/vi/android/phone/mrpc/core/Config;

    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->b:Landroid/content/Context;

    invoke-interface {v1}, Lcom/alipay/vi/android/phone/mrpc/core/Config;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/vi/android/phone/mrpc/core/Config;->sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sign"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;

    invoke-direct {v0, p0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getRequestDataDigest()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->a:Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignTimestamp()J
    .locals 5

    .line 103
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->d:J

    .line 107
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->d:J

    return-wide v0
.end method

.method public packet()[B
    .locals 2

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->a:Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->a(Ljava/util/List;)V

    .line 54
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->a:Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
