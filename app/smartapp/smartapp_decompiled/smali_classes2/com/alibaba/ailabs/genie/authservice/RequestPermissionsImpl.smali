.class public Lcom/alibaba/ailabs/genie/authservice/RequestPermissionsImpl;
.super Ljava/lang/Object;
.source "RequestPermissionsImpl.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public cloudRquestPermissions(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "genie://com.alibaba.ailabs.genie.authservice.service/ProxyService"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestPermissions(Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->getPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->getGenieAppIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->getGenieAppType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    const-string v0, "4001"

    .line 36
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    const-string v0, "\u8bf7\u68c0\u67e5\u76f8\u5173\u53c2\u6570\u662f\u5426\u4e3a\u7a7a"

    .line 37
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 39
    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V

    :goto_0
    return-void
.end method
