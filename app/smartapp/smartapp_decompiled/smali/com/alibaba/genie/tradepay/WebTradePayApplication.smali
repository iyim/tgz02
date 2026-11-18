.class public Lcom/alibaba/genie/tradepay/WebTradePayApplication;
.super Landroid/app/Application;
.source "WebTradePayApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static mShoppingApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/genie/tradepay/WebTradePayApplication;->mShoppingApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 3

    .line 18
    sput-object p1, Lcom/alibaba/genie/tradepay/WebTradePayApplication;->mShoppingApplication:Landroid/app/Application;

    const-string v0, "WebTradePayApplication"

    const-string/jumbo v1, "registerAsyncCallServerMethod"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v0

    sget v1, Lcom/alibaba/genie/tradepay/ipc/CreateOrderService;->METHOD_CREATEORDER_CALL:I

    invoke-static {}, Lcom/alibaba/genie/tradepay/ipc/CreateOrderService;->getInstance()Lcom/alibaba/genie/tradepay/ipc/CreateOrderService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerAsyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;)V

    .line 22
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object p1

    sget v0, Lcom/alibaba/genie/tradepay/ipc/TradePayService;->METHOD_TRADEPAY_CALL:I

    invoke-static {}, Lcom/alibaba/genie/tradepay/ipc/TradePayService;->getInstance()Lcom/alibaba/genie/tradepay/ipc/TradePayService;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerAsyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;)V

    return-void
.end method
