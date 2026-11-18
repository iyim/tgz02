.class Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$1;
.super Ljava/lang/Object;
.source "RequestPermissionModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;->onResponseCallback(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;

.field final synthetic val$serviceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$1;->this$1:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$1;->val$serviceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$1;->this$1:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;->val$iGetServiceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$1;->val$serviceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;->getServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;)V

    return-void
.end method
