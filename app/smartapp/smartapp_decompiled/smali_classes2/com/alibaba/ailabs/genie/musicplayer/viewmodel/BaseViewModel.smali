.class public Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "BaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel$ParameterField;
    }
.end annotation


# instance fields
.field private handleCreateListData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isConnected:Z

.field private isRequesting:Z

.field private mActivityLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCommonLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mErrorLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadataLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mToastLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected resetTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->isConnected:Z

    .line 27
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->isRequesting:Z

    .line 30
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->resetTime:I

    .line 32
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mLoadingLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mErrorLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 36
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mToastLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mActivityLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mMetadataLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->handleCreateListData:Landroid/arch/lifecycle/MutableLiveData;

    .line 44
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mCommonLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public getActivityLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mActivityLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCommonLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mCommonLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method public getErrorLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mErrorLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHandleCreateListData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->handleCreateListData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLoadingLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mLoadingLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMetadataLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mMetadataLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getToastLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mToastLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->isConnected:Z

    return v0
.end method

.method public isRequesting()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->isRequesting:Z

    return v0
.end method

.method public requestData(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicListFragment$ListType;ILjava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setConnected(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->isConnected:Z

    return-void
.end method

.method public setController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public setError(Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseViewModel"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mErrorLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/ErrorData;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setHandleCreateListData(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->handleCreateListData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsRequesting(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->isRequesting:Z

    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mMetadataLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public showLoading(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mLoadingLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mToastLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public startActivity(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel$ParameterField;->CLASS:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel$ParameterField;->BUNDLE:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/viewmodel/BaseViewModel;->mActivityLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
