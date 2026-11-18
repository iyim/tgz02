.class public Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;
.super Landroid/app/Activity;
.source "GenieProductsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeniePay"


# instance fields
.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mAdapter:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

.field private mCurrentPosition:I

.field private mErrorView:Landroid/widget/TextView;

.field mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;

.field private mModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/pay/mtop/MtopBaseItem$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPayButton:Landroid/widget/TextView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mAdapter:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mPayButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mErrorView:Landroid/widget/TextView;

    return-object p0
.end method

.method private handleFailure()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mPayButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_main_pay_items:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->setContentView(I)V

    .line 49
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->recycler_view:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 56
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance p1, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mAdapter:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mAdapter:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->setOnItemClickListener(Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;)V

    .line 72
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->tv_close:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$2;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mTitle:Landroid/widget/TextView;

    .line 81
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->tv_sub_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mSubTitle:Landroid/widget/TextView;

    .line 83
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->empty_view:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mErrorView:Landroid/widget/TextView;

    .line 85
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->pay_item_button:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mPayButton:Landroid/widget/TextView;

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mPayButton:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$3;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getModelList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelList:Ljava/util/List;

    .line 116
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->handleFailure()V

    goto :goto_1

    .line 120
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getGeniePayResult()Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mGeniePayRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getGeniePayResult()Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/pay/GeniePayResult;->mGeniePayRequest:Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;->getParamModel()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel;->getPayParam()Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/model/GeniePayParamModel$PayParamBean;->getSubTitle()Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mAdapter:Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->mModelList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->setDataset(Ljava/util/List;)V

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$4;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
