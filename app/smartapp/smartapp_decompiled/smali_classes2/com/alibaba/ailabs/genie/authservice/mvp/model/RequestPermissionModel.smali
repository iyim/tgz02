.class public Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;
.super Ljava/lang/Object;
.source "RequestPermissionModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;


# instance fields
.field private mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

.field private mAuthServiceEvent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mHandler:Landroid/os/Handler;

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAuthServiceEvent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public breakReference()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAuthServiceEvent:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mContext:Landroid/content/Context;

    .line 132
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    return-void
.end method

.method public cloudServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAuthServiceEvent:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;)V

    const-string p1, "AliGenie.API"

    const-string v3, "ServiceAuthEvent"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public loadServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->mAuthServiceEvent:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;)V

    const-string p1, "AliGenie.API"

    const-string v3, "ServiceAuthEvent"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method
