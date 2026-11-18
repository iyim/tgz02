.class public Lcom/alipay/vi/android/phone/mrpc/core/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mResData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
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
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Response;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()[B
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/Response;->mResData:[B

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Response;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setResData([B)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/Response;->mResData:[B

    return-void
.end method
