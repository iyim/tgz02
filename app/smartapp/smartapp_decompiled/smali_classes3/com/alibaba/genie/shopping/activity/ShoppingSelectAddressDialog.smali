.class public Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;
.super Landroid/app/DialogFragment;
.source "ShoppingSelectAddressDialog.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;
    }
.end annotation


# instance fields
.field private mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

.field private mPendingExec:Z

.field private mPreSelectAddressInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

.field private mSelectAddressInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;"
        }
    .end annotation
.end field

.field private onAddressSelectListener:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private tbNickName:Ljava/lang/String;

.field private tv_giveup:Landroid/widget/TextView;

.field private tv_ok:Landroid/widget/TextView;

.field private tv_taobao_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPendingExec:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->onAddressSelectListener:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPreSelectAddressInfoList:Ljava/util/List;

    return-object p0
.end method

.method public static deepCopy(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 213
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 217
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 218
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private initData()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    .line 90
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->setOnItemClickListener(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter$OnItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;->addressDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;->addressDataList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->deepCopy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPreSelectAddressInfoList:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPreSelectAddressInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialogRecyclerViewAdapter;->refreshData(Ljava/util/List;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tv_giveup:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tv_ok:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$2;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tbNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tbNickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tbNickName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tbNickName:Ljava/lang/String;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tv_taobao_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_adress_modify_ad:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tbNickName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tv_taobao_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_adress_modify_ads:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 69
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_taobao_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tv_taobao_name:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->address_recyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 72
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_giveup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tv_giveup:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_ok:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tv_ok:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public isPendingExec()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPendingExec:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPendingExec:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->setStyle(II)V

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user_address_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user_nick_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->tbNickName:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->shopping_select_address_dialog_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mSelectAddressInfoList:Ljava/util/List;

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 78
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fed1eb851eb851fL    # 0.91

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->initView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->initData()V

    .line 65
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOnAddressSelectListener(Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->onAddressSelectListener:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 200
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPendingExec:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->mPendingExec:Z

    .line 177
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
