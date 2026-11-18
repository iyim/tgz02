.class public Lcom/alibaba/ailabs/genie/adv/AdvApplication;
.super Landroid/app/Application;
.source "AdvApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static mAdvApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->mAdvApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 3

    .line 16
    sput-object p1, Lcom/alibaba/ailabs/genie/adv/AdvApplication;->mAdvApplication:Landroid/app/Application;

    .line 19
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->METHOD_GET_HC_ADV_DATA:I

    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;->getInstance()Lcom/alibaba/ailabs/genie/adv/service/AdvhcService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerAsyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;)V

    .line 22
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->METHOD_GET_TAOBAOKE_ADV_DATA:I

    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/service/AdvService;->getInstance()Lcom/alibaba/ailabs/genie/adv/service/AdvService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerAsyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;)V

    .line 24
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->METHOD_GET_PHONE_UTDID_DATA:I

    invoke-static {}, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->getInstance()Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerAsyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;)V

    return-void
.end method
