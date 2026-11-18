.class public Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;
.super Ljava/lang/Object;
.source "RpcParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getGwUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->b:Ljava/util/List;

    return-object v0
.end method

.method public isGzip()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->c:Z

    return v0
.end method

.method public setGwUrl(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->a:Ljava/lang/String;

    return-void
.end method

.method public setGzip(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->c:Z

    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->b:Ljava/util/List;

    return-void
.end method
