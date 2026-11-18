.class Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$2;
.super Ljava/lang/Object;
.source "RequestPermissionModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;->onResponseCallback(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;

.field final synthetic val$proxyModel:Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$2;->this$1:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$2;->val$proxyModel:Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$2;->this$1:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;->val$cloudGetServiceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$2;->val$proxyModel:Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;->getServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V

    return-void
.end method
