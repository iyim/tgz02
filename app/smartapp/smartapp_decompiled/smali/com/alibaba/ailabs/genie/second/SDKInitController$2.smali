.class Lcom/alibaba/ailabs/genie/second/SDKInitController$2;
.super Ljava/lang/Object;
.source "SDKInitController.java"

# interfaces
.implements Lcom/ut/mini/IUTApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/SDKInitController;->initUserTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/SDKInitController;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUTAppVersion()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->access$000(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTChannel()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->access$000(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 3

    .line 338
    new-instance v0, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->access$000(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    .line 339
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->access$000(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAliyunOsSystem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUTCrashHandlerDisable()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->access$200(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->access$000(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/UTConfig;->isCrashHandlerDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUTLogEnable()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;->this$0:Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->access$100(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Z

    move-result v0

    return v0
.end method
