.class public Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;
.super Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;
.source "AuthPermissionActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/authservice/mvp/view/IRequestPermissionView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity<",
        "Lcom/alibaba/ailabs/genie/authservice/mvp/view/IRequestPermissionView;",
        ">;",
        "Lcom/alibaba/ailabs/genie/authservice/mvp/view/IRequestPermissionView;"
    }
.end annotation


# instance fields
.field private mAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

.field private mCloudAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

.field private mCloudAuthServiceResponse:Ljava/lang/String;

.field private mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

.field private mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->dismissDialoFragment()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->refusePermission()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private dismissDialoFragment()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->dismissAllowingStateLoss()V

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->finish()V

    return-void
.end method

.method private refusePermission()V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    const-string v1, "4000"

    .line 131
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    const-string v1, "\u7528\u6237\u62d2\u7edd\u4e86\u6388\u6743\u8bf7\u6c42"

    .line 132
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;-><init>()V

    const-string v1, "Reject"

    .line 136
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setErrorMsg(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;->cloudAuthServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->dismissDialoFragment()V

    return-void
.end method


# virtual methods
.method public UserAuthReferenceListener(Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 195
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "====\u4e09\u65b9\u5ba2\u6237\u7aef\u4f20\u5230activity\u91cc\u7684\u5f15\u7528"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cloudAuthDataListener(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 207
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthServiceResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthServiceResponse:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public cloudAuthReferenceListener(Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 219
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    .line 224
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "===\u4ee3\u7406\u4f20\u5230activity\u7684\u503c\u5f15\u7528\uff1a"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cloudGetAuthResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    .locals 2

    .line 180
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "====activity:proModel:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;->cloudAuthServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->dismissDialoFragment()V

    return-void
.end method

.method public getAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "======"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 153
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;-><init>()V

    .line 156
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse$ResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse$ResponseData;->getApiAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->setApiAccessToken(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse$ResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse$ResponseData;->getGrantedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->setGrantedPermissions(Ljava/util/List;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setData(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;)V

    .line 160
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->isSuccess()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 169
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 174
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->dismissDialoFragment()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 44
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authServiceResponse"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "=====service intent"

    .line 51
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-class v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->showDialogFragment(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthServiceResponse:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthServiceResponse:Ljava/lang/String;

    const-class v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthServiceResponse:Ljava/lang/String;

    const-string v0, "=====\u4e91\u7aef\u4f20\u5230activity\u91cc\u7684\u6570\u636e"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->showDialogFragment(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;)V

    .line 64
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "========"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 245
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    .line 248
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    .line 250
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;

    .line 251
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mCloudAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    .line 252
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const-string v0, "======"

    const-string v1, "activity:onDestroy"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/BaseActivity;->onStop()V

    const-string v0, "======"

    const-string v1, "activity:onStop"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->isDialogFragmentShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->refusePermission()V

    :cond_0
    return-void
.end method

.method public showDialogFragment(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->initDialoFragment(I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->initData(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;)Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    .line 73
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->setUserCheckedPermissionListener(Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;)V

    .line 121
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->mBaseDialogFragment:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->show(Landroid/app/FragmentManager;)V

    return-void
.end method
