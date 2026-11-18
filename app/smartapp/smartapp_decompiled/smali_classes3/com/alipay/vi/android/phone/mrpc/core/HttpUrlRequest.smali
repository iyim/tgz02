.class public Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;
.super Lcom/alipay/vi/android/phone/mrpc/core/Request;
.source "HttpUrlRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/Request;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    const-string p1, "application/x-www-form-urlencoded"

    .line 51
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;

    .line 52
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/Request;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->b:[B

    .line 66
    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 67
    iput-object p4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    const-string p1, "application/x-www-form-urlencoded"

    .line 68
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 229
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 231
    :cond_2
    check-cast p1, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    .line 232
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->b:[B

    if-nez v2, :cond_3

    .line 233
    iget-object v2, p1, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->b:[B

    if-eqz v2, :cond_4

    return v1

    .line 235
    :cond_3
    iget-object v3, p1, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->b:[B

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 238
    iget-object p1, p1, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 240
    :cond_5
    iget-object p1, p1, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getReqData()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReqData()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->b:[B

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    const/16 v1, 0x1f

    if-eqz v0, :cond_0

    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isResetCookie()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->f:Z

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public setReqData([B)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->b:[B

    return-void
.end method

.method public setResetCookie(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->f:Z

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->e:Ljava/util/Map;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->a:Ljava/lang/String;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 207
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Url : %s,HttpHeader: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
