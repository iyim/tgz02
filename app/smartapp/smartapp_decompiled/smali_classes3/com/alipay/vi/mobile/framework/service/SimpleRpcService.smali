.class public interface abstract Lcom/alipay/vi/mobile/framework/service/SimpleRpcService;
.super Ljava/lang/Object;
.source "SimpleRpcService.java"


# static fields
.field public static final OPERATION_TYPE:Ljava/lang/String; = "alipay.client.executerpc"

.field public static final OPERATION_TYPE_BYTES:Ljava/lang/String; = "alipay.client.executerpc.bytes"

.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    :goto_0
    sput-object v0, Lcom/alipay/vi/mobile/framework/service/SimpleRpcService;->sInjector:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation runtime Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.executerpc"
    .end annotation

    .annotation runtime Lcom/alipay/vi/mobile/framework/service/annotation/SignCheck;
        value = "yes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B
    .annotation runtime Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.executerpc.bytes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation
.end method
