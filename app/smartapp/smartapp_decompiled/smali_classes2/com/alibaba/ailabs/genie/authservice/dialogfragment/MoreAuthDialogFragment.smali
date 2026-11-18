.class public Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;
.super Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;
.source "MoreAuthDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;


# instance fields
.field private checkedPermissionArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthPermissionItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionContentAdapter:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

.field private mPermissionListView:Landroid/widget/ListView;

.field private tv_dialog_more_auth_allow:Landroid/widget/TextView;

.field private tv_dialog_more_auth_refuse:Landroid/widget/TextView;

.field private tv_dialog_more_auth_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    return-void
.end method

.method private GetAuthorizedList()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mAuthPermissionItemList:Ljava/util/List;

    return-void
.end method

.method private addAllPermissionData()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initUI(Landroid/view/View;)V
    .locals 3

    .line 47
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_more_auth_allow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_allow:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_more_auth_refuse:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_refuse:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_allow:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_refuse:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_more_auth_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_title:Landroid/widget/TextView;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/authservice/R$string;->more_auth_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->list_permission_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mPermissionListView:Landroid/widget/ListView;

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->GetAuthorizedList()V

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->addAllPermissionData()V

    .line 67
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mAuthPermissionItemList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mPermissionContentAdapter:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mPermissionListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mPermissionContentAdapter:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mPermissionContentAdapter:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->setPermissionRequestDataClickListener(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;)V

    return-void
.end method

.method private postEventToAuthService()V
    .locals 5

    .line 94
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getGenieAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->setGenieAppIdentifier(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetAuthServiceResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->setGenieAppType(Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 99
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->setPermissions(Ljava/util/List;)V

    .line 106
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "====\u7528\u6237\u9009\u62e9\u540e\u7684\u6743\u9650"

    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetUserCheckedPermissionStatus:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;->getUserCheckedPermissionData(Ljava/lang/String;)V

    return-void
.end method

.method private postPermissionData()V
    .locals 4

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "permissionData"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setAllowButtonStatus()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_allow:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_allow:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/authservice/R$drawable;->bg_tv_auth_allow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_allow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->tv_dialog_more_auth_allow:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/authservice/R$drawable;->bg_tv_auth_unchecked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addAuthPermissionData(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mAuthPermissionItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->setAllowButtonStatus()V

    return-void
.end method

.method public getScreenWidthRatio()D
    .locals 2

    const-wide v0, 0x3fe2e147ae147ae1L    # 0.59

    return-wide v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 35
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$layout;->fragment_dialog_more_auth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->initUI(Landroid/view/View;)V

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/alibaba/ailabs/genie/authservice/utils/ClickUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 80
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_more_auth_allow:I

    if-ne p1, v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->postPermissionData()V

    .line 83
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->postEventToAuthService()V

    goto :goto_0

    .line 85
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/authservice/R$id;->tv_dialog_more_auth_refuse:I

    if-ne p1, v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mGetUserCheckedPermissionStatus:Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment$IGetUserCheckedPermissionStatus;->userRefusePermission()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/BaseDialogFragment;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mPermissionContentAdapter:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->breakReference()V

    .line 174
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mPermissionContentAdapter:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mAuthPermissionItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->mAuthPermissionItemList:Ljava/util/List;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 183
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public removeAuthPermissionData(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->checkedPermissionArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/dialogfragment/MoreAuthDialogFragment;->setAllowButtonStatus()V

    return-void
.end method
