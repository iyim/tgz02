.class public Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;
.super Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/BasePresenter;
.source "RequestPermissionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alibaba/ailabs/genie/authservice/mvp/view/IRequestPermissionView;",
        ">",
        "Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/BasePresenter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mRequestPermissionModel:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/BasePresenter;-><init>()V

    .line 18
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->mRequestPermissionModel:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;

    return-void
.end method


# virtual methods
.method public breakReference()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->mRequestPermissionModel:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;->breakReference()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->mRequestPermissionModel:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;

    return-void
.end method

.method public cloudFetch()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->mRequestPermissionModel:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$2;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;->cloudServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;)V

    return-void
.end method

.method public fetch()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->mRequestPermissionModel:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;

    new-instance v1, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;->loadServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;)V

    return-void
.end method
