.class Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$2;
.super Ljava/lang/Object;
.source "RequestPermissionPresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->cloudFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->iBaseView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->iBaseView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/authservice/mvp/view/IRequestPermissionView;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/view/IRequestPermissionView;->cloudGetAuthResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V

    :cond_0
    return-void
.end method
