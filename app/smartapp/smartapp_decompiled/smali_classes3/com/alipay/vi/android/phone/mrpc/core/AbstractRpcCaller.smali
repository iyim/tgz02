.class public abstract Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;
.super Ljava/lang/Object;
.source "AbstractRpcCaller.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/RpcCaller;


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mId:I

.field protected mMethod:Ljava/lang/reflect/Method;

.field protected mOperationType:Ljava/lang/String;

.field protected mReqData:[B

.field protected mResetCookie:Z

.field protected mRpcHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;->mMethod:Ljava/lang/reflect/Method;

    .line 49
    iput p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;->mId:I

    .line 50
    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;->mOperationType:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;->mReqData:[B

    .line 52
    iput-object p5, p0, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;->mContentType:Ljava/lang/String;

    .line 53
    iput-boolean p6, p0, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;->mResetCookie:Z

    .line 54
    iput-object p7, p0, Lcom/alipay/vi/android/phone/mrpc/core/AbstractRpcCaller;->mRpcHeaders:Ljava/util/Map;

    .line 55
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
