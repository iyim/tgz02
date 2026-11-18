.class public Lcom/alipay/vi/mobile/common/rpc/RpcException;
.super Ljava/lang/RuntimeException;
.source "RpcException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/vi/mobile/common/rpc/RpcException$ErrorCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x27e79b9ef4131536L


# instance fields
.field private mCode:I

.field private mControl:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mOperationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-static {p1, p2}, Lcom/alipay/vi/mobile/common/rpc/RpcException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mCode:I

    .line 30
    iput-object p2, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    .line 31
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

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mCode:I

    .line 41
    iput-object p1, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    return-void
.end method

.method protected static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RPCException: "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v1, "["

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, " : "

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mCode:I

    return v0
.end method

.method public getControl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mControl:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public setControl(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mControl:Ljava/lang/String;

    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alipay/vi/mobile/common/rpc/RpcException;->mOperationType:Ljava/lang/String;

    return-void
.end method
