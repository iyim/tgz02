.class public Lcom/alibaba/ailabs/genie/second/gcs/service/SecondInstaller;
.super Lcom/alibaba/ailabs/ipc/server/MultiProvider;
.source "SecondInstaller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecondInstaller"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/server/MultiProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/second/gcs/service/SecondInstaller;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-super {p0}, Lcom/alibaba/ailabs/ipc/server/MultiProvider;->onCreate()Z

    move-result v0

    return v0
.end method

.method protected onInit()V
    .locals 2

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/second/gcs/service/SecondInstaller;->TAG:Ljava/lang/String;

    const-string v1, "SmartAppIpcServiceProvider onInit()"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;->getInstance()Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/SecondInstaller;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;->register(Landroid/content/Context;Lcom/alibaba/ailabs/ipc/server/MultiProvider;)V

    return-void
.end method

.method public onInterceptor(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
