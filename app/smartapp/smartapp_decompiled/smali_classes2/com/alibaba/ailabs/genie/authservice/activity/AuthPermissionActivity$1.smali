.class Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;
.super Ljava/lang/Object;
.source "AuthPermissionActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->showDialogFragment(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserCheckedPermissionData(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/authservice/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$000(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$100(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 81
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    const-string v1, "4002"

    .line 82
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$000(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$200(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    :try_start_1
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;-><init>()V

    .line 92
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setErrorMsg(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$200(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;->cloudAuthServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 95
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 99
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$300(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)V

    goto :goto_1

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->createRequestPresenter(Ljava/lang/String;)V

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$000(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "====RequestPermListener"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$000(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p1

    const-string v0, "======="

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$100(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->fetch()V

    const-string p1, "\u8d70\u4e09\u65b9\u5ba2\u6237\u7aef"

    .line 106
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$200(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p1, "\u8d70\u4e91\u7aef"

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionPresenter:Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/RequestPermissionPresenter;->cloudFetch()V

    :cond_5
    :goto_1
    return-void
.end method

.method public userRefusePermission()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->access$400(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)V

    return-void
.end method
