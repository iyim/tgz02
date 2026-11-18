.class public Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;
.super Lcom/alipay/mobileic/common/service/model/ToString;
.source "MICRpcRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public bizRequestData:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public envData:Ljava/lang/String;

.field public module:Ljava/lang/String;

.field public pbData:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public verifyId:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/alipay/mobileic/common/service/model/ToString;-><init>()V

    const-string v0, "3.1.12.201"

    .line 51
    iput-object v0, p0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->version:Ljava/lang/String;

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
