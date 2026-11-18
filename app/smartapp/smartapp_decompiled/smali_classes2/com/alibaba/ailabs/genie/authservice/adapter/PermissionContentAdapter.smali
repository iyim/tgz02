.class public Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;,
        Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private checkedSwitchArray:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthPermissionData:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;

.field private mAuthPermissionItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->checkedSwitchArray:Landroid/util/ArrayMap;

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    .line 31
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;)Landroid/util/ArrayMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->checkedSwitchArray:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;)Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionData:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;

    return-object p0
.end method


# virtual methods
.method public breakReference()V
    .locals 2

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionData:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;

    .line 136
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 138
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    .line 141
    :cond_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alibaba/ailabs/genie/authservice/R$layout;->item_permission_content:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance p3, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;-><init>(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;Landroid/view/View;)V

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;

    .line 74
    :goto_0
    iget-object v1, p3, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mAuthName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p3, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mAuthDesc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p3, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->checkedSwitchArray:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object p1, p3, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setPermissionRequestDataClickListener(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->mAuthPermissionData:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;

    return-void
.end method
