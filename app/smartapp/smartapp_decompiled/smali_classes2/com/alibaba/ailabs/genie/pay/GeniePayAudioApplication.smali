.class public Lcom/alibaba/ailabs/genie/pay/GeniePayAudioApplication;
.super Ljava/lang/Object;
.source "GeniePayAudioApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "Yuanzhibiao"

.field private static sApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioApplication;->sApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2

    const-string v0, "Yuanzhibiao"

    const-string v1, "init Yuanzhibiao GeniePayApplication"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sput-object p1, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioApplication;->sApplication:Landroid/app/Application;

    .line 25
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;

    move-result-object v0

    const v1, 0x1312d02

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->registerAsyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;)V

    return-void
.end method
