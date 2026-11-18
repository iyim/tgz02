.class public Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;
.super Lcom/alipay/vi/android/phone/mrpc/core/Response;
.source "HttpUrlResponse.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;


# direct methods
.method public constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/Response;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->f:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    .line 35
    iput p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->a:I

    .line 36
    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->b:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->mResData:[B

    .line 38
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
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->a:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->c:J

    return-wide v0
.end method

.method public getHeader()Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->f:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->d:J

    return-wide v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->e:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->c:J

    return-void
.end method

.method public setHeader(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->f:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    return-void
.end method

.method public setPeriod(J)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->d:J

    return-void
.end method
