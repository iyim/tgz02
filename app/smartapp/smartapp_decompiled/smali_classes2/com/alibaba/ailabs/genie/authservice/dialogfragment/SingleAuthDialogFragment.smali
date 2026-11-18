.class public Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;
.super Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;
.source "SingleAuthDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleAuthDialogFragment"


# instance fields
.field private tv_dialog_single_auth_allow:Landroid/widget/TextView;

.field private tv_dialog_single_auth_always_allow:Landroid/widget/TextView;

.field private tv_dialog_single_auth_desc:Landroid/widget/TextView;

.field private tv_dialog_single_auth_name:Landroid/widget/TextView;

.field private tv_dialog_single_auth_period_use_allow:Landroid/widget/TextView;

.field private tv_dialog_single_auth_refuse:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initUI(Landroid/view/View;)V
    .locals 2

    .line 43
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_name:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_desc:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_period_use_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_period_use_allow:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_always_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_always_allow:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_allow:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_refuse:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_refuse:Landroid/widget/TextView;

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_period_use_allow:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_always_allow:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_allow:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_refuse:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    if-eqz p1, :cond_1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/authservice/R$string;->simple_auth_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/authservice/R$string;->simple_auth_desc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->getDesc()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_desc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->tv_dialog_single_auth_desc:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private postEventToAuthService()V
    .locals 5

    .line 103
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getGenieAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->setGenieAppIdentifier(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->setGenieAppType(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 112
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->setPermissions(Ljava/util/List;)V

    .line 117
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "====\u7528\u6237\u9009\u62e9\u540e\u7684\u6743\u9650"

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetUserCheckedPermissionStatus:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;->getUserCheckedPermissionData(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getScreenWidthRatio()D
    .locals 2

    const-wide v0, 0x3fdf5c28f5c28f5cL    # 0.49

    return-wide v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 30
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$layout;->fragment_dialog_singleauth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->initUI(Landroid/view/View;)V

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-static {}, Lcom/alibaba/ailabs/genie/authservice/utils/ClickUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 88
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_period_use_allow:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_always_allow:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_allow:I

    if-ne p1, v0, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->postEventToAuthService()V

    goto :goto_0

    .line 95
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_single_auth_refuse:I

    if-ne p1, v0, :cond_4

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/SingleAuthDialogFragment;->mGetUserCheckedPermissionStatus:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;->userRefusePermission()V

    :cond_4
    :goto_0
    return-void
.end method
