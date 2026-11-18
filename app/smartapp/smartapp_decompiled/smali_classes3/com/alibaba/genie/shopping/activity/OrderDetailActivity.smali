.class public Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "OrderDetailActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;",
        ">;",
        "Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog$OnAddressSelectListener;"
    }
.end annotation


# instance fields
.field private address_layout:Landroid/widget/LinearLayout;

.field private btn_choose_address:Landroid/widget/ImageView;

.field private data_info_layout:Landroid/widget/LinearLayout;

.field private from_applet:I

.field private from_channel:I

.field private from_voice:I

.field private isFirst:Z

.field private item_detail_layout:Landroid/widget/LinearLayout;

.field private mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

.field private mCanOrder:Z

.field private mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

.field private mItemImg:Landroid/widget/ImageView;

.field private mOrderConfirmResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

.field private mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQuantity:Ljava/lang/String;

.field private mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingAddressRecyclerViewAdapter;

.field private mShoppingSelectAddressDialog:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

.field private mTVActivity:Landroid/widget/TextView;

.field private mTbNickName:Ljava/lang/String;

.field private no_address_layout:Landroid/widget/LinearLayout;

.field private taobao_icon:Landroid/widget/ImageView;

.field private tv_detail_bless_prices:Landroid/widget/TextView;

.field private tv_detail_orgin_prices:Landroid/widget/TextView;

.field private tv_detail_post_prices:Landroid/widget/TextView;

.field private tv_detail_specs:Landroid/widget/TextView;

.field private tv_item_name:Landroid/widget/TextView;

.field private tv_order_title:Landroid/widget/TextView;

.field private tv_pay_count:Landroid/widget/TextView;

.field private tv_putorder:Landroid/widget/TextView;

.field private tv_recv_address:Landroid/widget/TextView;

.field private tv_recv_name:Landroid/widget/TextView;

.field private tv_recv_tel:Landroid/widget/TextView;

.field private tv_set_address_des1:Landroid/widget/TextView;

.field private tv_set_address_des2:Landroid/widget/TextView;

.field private tv_set_address_des3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->isFirst:Z

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCanOrder:Z

    .line 95
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mTbNickName:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_channel:I

    const-string v0, "1"

    .line 97
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mShoppingSelectAddressDialog:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;)Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mShoppingSelectAddressDialog:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mTbNickName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mItemImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->utIconClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 893
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "."

    .line 894
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method

.method private utIconClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "spm"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string p4, "fromVoice"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
    .locals 1

    .line 323
    new-instance v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 2

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 775
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 777
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    .line 779
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v1, "ShoppingOrderDetail"

    .line 781
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderDetailActivity getAppContextData;appContextData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->toString(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jesonma"

    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 902
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 903
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    .line 906
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 910
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAddressSelect(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 646
    new-instance v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    .line 648
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    if-eqz v0, :cond_0

    .line 649
    iget-boolean v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->isSelected:Z

    if-eqz v1, :cond_0

    .line 650
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    .line 656
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    if-eqz p1, :cond_5

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object p1

    iget-object v2, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v3, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->deliverId:Ljava/lang/String;

    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object p1

    iget-object v4, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getAllDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 659
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->isFirst:Z

    .line 660
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCanOrder:Z

    .line 662
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->userName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_tel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->tel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->tel:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_address:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->address:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_order_detail:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->setContentView(I)V

    .line 105
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->taobao_icon:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->taobao_icon:Landroid/widget/ImageView;

    .line 107
    new-instance p1, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->ALL:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p1, v2, v1, v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    .line 108
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 109
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    .line 110
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->taobao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->taobao_icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 111
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->item_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mItemImg:Landroid/widget/ImageView;

    .line 112
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_item_name:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_item_name:Landroid/widget/TextView;

    .line 113
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_detail_specs:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_specs:Landroid/widget/TextView;

    .line 114
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_detail_orgin_prices:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_orgin_prices:Landroid/widget/TextView;

    .line 115
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_detail_bless_prices:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_bless_prices:Landroid/widget/TextView;

    .line 116
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_detail_post_prices:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_post_prices:Landroid/widget/TextView;

    .line 118
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_recv_name:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_name:Landroid/widget/TextView;

    .line 119
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_recv_tel:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_tel:Landroid/widget/TextView;

    .line 120
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_recv_address:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_address:Landroid/widget/TextView;

    .line 124
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_set_address_des1:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_set_address_des1:Landroid/widget/TextView;

    .line 125
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_set_address_des2:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_set_address_des2:Landroid/widget/TextView;

    .line 126
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_set_address_des3:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_set_address_des3:Landroid/widget/TextView;

    .line 128
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->btn_choose_address:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->btn_choose_address:Landroid/widget/ImageView;

    .line 129
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->btn_choose_address:Landroid/widget/ImageView;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$1;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->address_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->address_layout:Landroid/widget/LinearLayout;

    .line 148
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->address_layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$2;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_pay_count:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_pay_count:Landroid/widget/TextView;

    .line 167
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->no_address_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->no_address_layout:Landroid/widget/LinearLayout;

    .line 169
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_putorder:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    .line 171
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_order_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_order_title:Landroid/widget/TextView;

    .line 173
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->data_info_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->data_info_layout:Landroid/widget/LinearLayout;

    .line 174
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->item_detail_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->item_detail_layout:Landroid/widget/LinearLayout;

    .line 176
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 177
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->data_info_layout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_order_confirm_str:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getColor(I)I

    move-result v0

    new-instance v1, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$3;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->showCommonTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 197
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_activity:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mTVActivity:Landroid/widget/TextView;

    .line 198
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mTVActivity:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$4;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 755
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mShoppingSelectAddressDialog:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mShoppingSelectAddressDialog:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 759
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mShoppingSelectAddressDialog:Lcom/alibaba/genie/shopping/activity/ShoppingSelectAddressDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 762
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;",
            "Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetAllGoodDetail, from_voice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", resultCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; resultMsg="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; voiceText="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; orderGroup="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "null"

    if-eqz v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; addressList="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; tbNickName="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; goodExtendInfo="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "jesonma"

    invoke-static {v8, v5}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v5, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iput-object v4, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mTbNickName:Ljava/lang/String;

    const-string v9, ""

    if-eqz v3, :cond_3

    .line 339
    iget-object v10, v3, Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;->code:Ljava/lang/String;

    .line 340
    iget-object v3, v3, Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;->message:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v9

    const/4 v10, 0x0

    .line 343
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v9

    .line 346
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "SUCCESS"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "F-10003-11-16-006"

    const-string v14, "P-02114-10-16-002"

    const-string v15, "INV_NOT_ENOUGH"

    if-nez v12, :cond_6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "RENDER_FAILED"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    :cond_5
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto/16 :goto_e

    .line 377
    :cond_6
    iget-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->data_info_layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_a

    .line 380
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v16

    if-eqz v16, :cond_a

    .line 381
    iput-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    .line 383
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v5

    .line 384
    iget-object v8, v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

    .line 386
    iget-object v12, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_order_title:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->shopName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "\u5546\u54c1\u540d\u79f0"

    goto :goto_4

    :cond_7
    iget-object v3, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->shopName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    new-instance v3, Lcom/bumptech/glide/load/MultiTransformation;

    move-object/from16 v17, v13

    const/4 v12, 0x1

    new-array v13, v12, [Lcom/bumptech/glide/load/Transformation;

    new-instance v12, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    move-object/from16 v18, v14

    sget-object v14, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->ALL:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    move-object/from16 v19, v10

    const/4 v2, 0x0

    const/16 v10, 0x8

    invoke-direct {v12, v10, v2, v14}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    aput-object v12, v13, v2

    invoke-direct {v3, v13}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 391
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v10, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->default_shopping_detail_icon:I

    .line 392
    invoke-virtual {v2, v10}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget v10, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->default_shopping_detail_icon:I

    .line 393
    invoke-virtual {v2, v10}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 394
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 395
    iget-object v3, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    const-string v10, "alicdn.com"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://g-search1.alicdn.com/img/bao/uploaded/"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    .line 399
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v10, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$5;

    iget-object v10, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mItemImg:Landroid/widget/ImageView;

    invoke-direct {v3, v7, v10}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$5;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 410
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_item_name:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_specs:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_orgin_prices:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->origPrice:D

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_b

    .line 415
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_bless_prices:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v8, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;->discountAmount:D

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_detail_post_prices:Landroid/widget/TextView;

    iget-wide v12, v8, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;->postfee:D

    const-wide/16 v20, 0x0

    cmpl-double v3, v12, v20

    if-nez v3, :cond_9

    const-string v3, "\u514d\u8fd0\u8d39"

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v8, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;->postfee:D

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_pay_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v8, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;->totalPrice:D

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->changPricesize(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    move-object/from16 v19, v10

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    :cond_b
    :goto_6
    if-eqz v1, :cond_12

    .line 423
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 425
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->no_address_layout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    iget-boolean v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->isFirst:Z

    if-eqz v2, :cond_15

    .line 428
    new-instance v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    invoke-direct {v2, v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;-><init>(Ljava/util/List;)V

    iput-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mAddressInfoList:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressList;

    .line 430
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    if-eqz v3, :cond_c

    .line 431
    iget v4, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->defaultFlag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 432
    iput-boolean v5, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->isSelected:Z

    .line 433
    iput-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    .line 439
    :cond_d
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    if-nez v2, :cond_e

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    const/4 v2, 0x0

    .line 440
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iput-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    .line 441
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->isSelected:Z

    .line 444
    :cond_e
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    if-eqz v2, :cond_15

    .line 445
    iget-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_name:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->userName:Ljava/lang/String;

    goto :goto_7

    :cond_f
    move-object v2, v9

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_tel:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->tel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->tel:Ljava/lang/String;

    goto :goto_8

    :cond_10
    move-object v3, v9

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_recv_address:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v9, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->address:Ljava/lang/String;

    :cond_11
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 472
    :cond_12
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->item_detail_layout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->no_address_layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 477
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-le v2, v5, :cond_13

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_13
    move-object v2, v4

    .line 480
    :goto_9
    iget-object v3, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_set_address_des1:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_adress_des_ad1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_14
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 482
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_set_address_des1:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_adress_des_ad1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "\u60a8"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :goto_a
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_set_address_des2:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_adress_des_ad2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_set_address_des3:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_adress_des_ad3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_15
    :goto_b
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x2712

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_17

    .line 491
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 492
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 493
    iput-boolean v1, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCanOrder:Z

    .line 496
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    sget v3, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 497
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 498
    iget-object v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;

    invoke-direct {v3, v7, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;Lcom/alibaba/genie/shopping/bean/GoodInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    if-ne v0, v1, :cond_2b

    .line 512
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    :cond_16
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 517
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 521
    :cond_17
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 522
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 523
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_1a

    .line 525
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_18

    goto :goto_c

    .line 535
    :cond_18
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const/4 v0, -0x1

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 538
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 541
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_d

    .line 526
    :cond_1a
    :goto_c
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const/4 v0, -0x1

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_no_address:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 529
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_no_address:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 532
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_d

    .line 545
    :cond_1c
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 547
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_not_buynow:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 548
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 549
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 551
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/4 v0, -0x1

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_not_enough:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 554
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_not_enough:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 557
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_d

    .line 560
    :cond_1e
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 561
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 563
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p3

    .line 564
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 566
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_d

    :cond_20
    move-object/from16 v2, p3

    .line 569
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    move-object/from16 v0, v18

    move-object/from16 v10, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 571
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 572
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 573
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 583
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, -0x1

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_area:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 586
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_area:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 589
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_d

    .line 592
    :cond_22
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 593
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 595
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 598
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_d

    :cond_24
    move-object/from16 v10, v19

    .line 601
    :cond_25
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 603
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 604
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 605
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    const/4 v0, -0x1

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_no_address:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_d

    .line 610
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_no_address:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 613
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto/16 :goto_d

    .line 616
    :cond_27
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 617
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 618
    iget-object v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->tv_putorder:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 621
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    const/4 v0, -0x1

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_d

    .line 624
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 627
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto :goto_d

    .line 630
    :cond_29
    iget v0, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 631
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_d

    .line 633
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-static/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 636
    invoke-static {v7, v3, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    :cond_2b
    :goto_d
    return-void

    .line 365
    :cond_2c
    :goto_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    sget-object v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->REQ_PARAM_RESULT_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    sget-object v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->REQ_PARAM_RESULT_MSG:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    sget-object v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->REQ_PARAM_TTS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    sget-object v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->ISFROM_APPLET:Ljava/lang/String;

    iget v2, v7, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_applet:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    invoke-virtual {v7, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 312
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPutOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 746
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order_common_failed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
.end method

.method public onPutOrderSuccess(Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;)V
    .locals 14

    .line 670
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderConfirmResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    if-eqz p1, :cond_4

    .line 673
    iget-object v2, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    .line 674
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->status:Ljava/lang/String;

    const-string v1, "SUCCESS"

    .line 676
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    const-string v2, "shopping_order_group"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "put_order_detail"

    .line 679
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 680
    iget p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_applet:I

    const-string v1, "from_applet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 682
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->finish()V

    goto/16 :goto_0

    :cond_0
    const-string p1, "INV_NOT_ENOUGH"

    .line 683
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 684
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, -0x1

    .line 689
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_not_enough_ext:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v0, p0

    .line 695
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    .line 698
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v4, -0x1

    .line 703
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order_common_failed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v0, p0

    .line 709
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    :cond_4
    const/4 v8, -0x1

    .line 721
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_put_order_common_failed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v12, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 15

    .line 221
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 222
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    const/16 v0, 0x2712

    const-string v1, "com.alibaba.ailabs.genie.shopping/com.alibaba.genie.shopping.activity.OrderDetailActivity"

    .line 223
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 231
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "0"

    const-string v3, ""

    const-string v4, "order_good_detail_skuId"

    const-string v5, "order_good_detail_addressId"

    const-string v6, "order_good_detail_itemId"

    if-eqz v1, :cond_8

    .line 232
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 233
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "orderDetail"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 235
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 237
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 241
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 245
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v1, "order_good_detail_from_applet"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_applet:I

    :cond_3
    move-object v4, v5

    move-object v1, v6

    goto/16 :goto_2

    .line 251
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v7, "buy.htm"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "buildOrderParams"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_6

    const-string v4, "itemId"

    .line 257
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "skuId"

    .line 258
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "quantity"

    .line 259
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    const-string v6, "exParams"

    .line 260
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 262
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v6, "areaId"

    .line 264
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_6
    move-object v5, v2

    move-object v1, v3

    move-object v7, v1

    :goto_1
    move-object v4, v5

    goto :goto_2

    .line 270
    :cond_7
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 276
    :cond_8
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v10, v7

    const-string v5, "order_good_detail_from_voice"

    .line 280
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v14, 0x0

    if-eqz v7, :cond_9

    .line 282
    invoke-virtual {v0, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    goto :goto_3

    .line 285
    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_voice:I

    :goto_3
    const-string v5, "from_shopping_channel"

    .line 288
    invoke-virtual {v0, v5, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->from_channel:I

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OrderDetailActivity onResume; itemId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_a

    move-object v5, v10

    goto :goto_4

    :cond_a
    const-string v5, "null"

    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; skuid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; mQuantity="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; addressId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "jeson"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_b

    move-object v11, v3

    goto :goto_5

    :cond_b
    move-object v11, v1

    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v12, v2

    goto :goto_6

    :cond_c
    move-object v12, v4

    :goto_6
    iget-object v13, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getAllDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->isFirst:Z

    .line 296
    iput-boolean v14, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCanOrder:Z

    goto :goto_7

    .line 298
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->finish()V

    :cond_e
    :goto_7
    :try_start_0
    const-string v0, "a1z3lt.12021288"

    const-string v1, "shoppin_Order confirmation page"

    const/4 v2, 0x0

    .line 304
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    const-string v1, ""

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OrderDetailActivity processNLPResult; commandDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; commandParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; nlpResult="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "jesonma"

    invoke-static {v4, v2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    new-instance v9, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string v2, "/SelectContent"

    .line 791
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 792
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 806
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "data"

    .line 808
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "intentName"

    .line 810
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "order_dynamic"

    .line 815
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 817
    iput-boolean v3, v9, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 819
    iget-boolean v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCanOrder:Z

    if-eqz v0, :cond_6

    .line 820
    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    .line 822
    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_1
    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v14, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mQuantity:Ljava/lang/String;

    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mCurShoppingItemAddressData:Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->deliverId:Ljava/lang/String;

    move-object v15, v0

    goto :goto_2

    :cond_2
    move-object v15, v1

    :goto_2
    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

    iget-wide v0, v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;->totalPrice:D

    .line 823
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object/from16 v16, v1

    .line 821
    invoke-virtual/range {v10 .. v16}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->putOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "order_click"

    const-string v3, "shoppin_Order confirmation page"

    const-string v4, "a1z3lt.12021288"

    const-string v5, "1"

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v1, p0

    .line 825
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->utIconClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_4
    const-string v1, "back_dynamic"

    .line 828
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 829
    iput-boolean v3, v9, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->finish()V

    goto :goto_3

    :cond_5
    const-string v1, "exit_dynamic"

    .line 832
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 833
    iput-boolean v3, v9, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-object v9
.end method

.method public showSearchResultEmptyPage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showSearchResultPage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
