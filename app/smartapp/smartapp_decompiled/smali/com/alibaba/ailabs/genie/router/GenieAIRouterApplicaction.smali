.class public Lcom/alibaba/ailabs/genie/router/GenieAIRouterApplicaction;
.super Ljava/lang/Object;
.source "GenieAIRouterApplicaction.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/router/GenieAIRouterApplicaction;->mApplication:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 2

    .line 17
    sput-object p1, Lcom/alibaba/ailabs/genie/router/GenieAIRouterApplicaction;->mApplication:Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;->getInstance()Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;->registerBrocast(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
