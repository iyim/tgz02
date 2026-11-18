.class public Lcom/alibaba/genie/tradepay/ipc/TradePayService;
.super Ljava/lang/Object;
.source "TradePayService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;


# static fields
.field public static METHOD_TRADEPAY_CALL:I = 0x4e22

.field public static final TAG:Ljava/lang/String; = "TradePayService"

.field private static mInstance:Lcom/alibaba/genie/tradepay/ipc/TradePayService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/genie/tradepay/ipc/TradePayService;

    invoke-direct {v0}, Lcom/alibaba/genie/tradepay/ipc/TradePayService;-><init>()V

    sput-object v0, Lcom/alibaba/genie/tradepay/ipc/TradePayService;->mInstance:Lcom/alibaba/genie/tradepay/ipc/TradePayService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/genie/tradepay/ipc/TradePayService;
    .locals 2

    const-class v0, Lcom/alibaba/genie/tradepay/ipc/TradePayService;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/tradepay/ipc/TradePayService;->mInstance:Lcom/alibaba/genie/tradepay/ipc/TradePayService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public method(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "webshopping  requestdata, req param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TradePayService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "requestdata"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/OrderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->tradePay(Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    :cond_0
    return-void
.end method
