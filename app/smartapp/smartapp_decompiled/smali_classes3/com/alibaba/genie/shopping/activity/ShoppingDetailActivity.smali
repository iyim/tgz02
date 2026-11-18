.class public Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private aliXSkuPopupPresenter:Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;

.field private from_channel:I

.field private from_voice:I

.field private imgSize:I

.field private isFirst:Z

.field private mBuyNow:Landroid/widget/TextView;

.field private mCanOrder:Z

.field private mChooseSKUImg:Landroid/widget/ImageView;

.field private mCurPrice:Landroid/widget/TextView;

.field private mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

.field private mDetailProgress:Landroid/widget/ProgressBar;

.field private mDetailSrollLayout:Landroid/widget/LinearLayout;

.field private mDetailWebView:Landroid/webkit/WebView;

.field private mFahuo:Landroid/widget/TextView;

.field private mGoodDetailTitle:Landroid/widget/TextView;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mItemId:Ljava/lang/String;

.field private mItemImg:Landroid/widget/ImageView;

.field private mItemImgViewPager:Landroid/support/v4/view/ViewPager;

.field private mKuaidi:Landroid/widget/TextView;

.field private mMonthSales:Landroid/widget/TextView;

.field private mOriginPrice:Landroid/widget/TextView;

.field private mPageText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSelectSkuLayout:Landroid/widget/RelativeLayout;

.field private mSelectTitle:Landroid/widget/TextView;

.field private mServiceTitle:Landroid/widget/TextView;

.field private mShoppingItemSmallViewPagerAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

.field private mThreadHandler:Landroid/os/Handler;

.field private mtopStr:Ljava/lang/String;

.field private skuCore:Lcom/taobao/android/tbsku/TBXSkuCore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const-string v0, "ShoppingDetailActivity"

    .line 58
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mCanOrder:Z

    .line 69
    iput v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->from_channel:I

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->isFirst:Z

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mtopStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 82
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mThreadHandler:Landroid/os/Handler;

    .line 87
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->queryTaobaoDetail(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mtopStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mtopStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->skuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private processData()V
    .locals 6

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "renderData"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "null"

    const-string v4, "jeson"

    const/4 v5, 0x1

    if-nez v2, :cond_6

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShoppingDetailActivity processData; renderData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "itemDetailList"

    .line 190
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    const-class v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 196
    :catch_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->finish()V

    .line 199
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->finish()V

    return-void

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingDetailActivity processData; mDetailDataFromVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->itemId:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    .line 208
    iput v5, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->from_voice:I

    .line 211
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailDataFromVoice:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    const-string v1, "success"

    const-string v2, "voice detail data"

    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$3;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    iput-boolean v5, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mCanOrder:Z

    .line 224
    :cond_5
    iput-boolean v5, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->isFirst:Z

    goto/16 :goto_4

    :cond_6
    const-string v1, "order_good_detail_itemId"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    .line 228
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 229
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 231
    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    :cond_7
    const/4 v1, 0x0

    const-string v2, "order_good_detail_from_voice"

    .line 237
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->from_voice:I

    const-string v2, "from_shopping_channel"

    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->from_channel:I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShoppingDetailActivity processData; mItemId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";from_voice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->from_voice:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getGoodDetail(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$4;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    iput-boolean v5, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->isFirst:Z

    .line 252
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mCanOrder:Z

    goto :goto_4

    .line 254
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->finish()V

    :cond_a
    :goto_4
    return-void
.end method

.method private queryTaobaoDetail(Ljava/lang/String;)V
    .locals 3

    .line 701
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryTaobaoDetail, itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;-><init>()V

    .line 703
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;-><init>()V

    const-string v2, "3.3.2"

    .line 704
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->setDetail_v(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->setItemNumId(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;->setData(Ljava/lang/Object;)V

    .line 742
    new-instance p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$9;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    .line 743
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->asyncRawCallback(Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    .line 872
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 873
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    .line 874
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object p1

    .line 875
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method private static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .line 924
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 929
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 931
    invoke-virtual {p0, p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    .line 933
    :cond_0
    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    :goto_1
    if-eq v4, v5, :cond_1

    if-eq v6, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 937
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    goto :goto_0

    .line 942
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v4, v5, :cond_2

    if-eq v6, v5, :cond_4

    :cond_2
    if-ne v4, v5, :cond_3

    if-eq v6, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    if-nez v1, :cond_7

    if-eqz p4, :cond_5

    .line 956
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No matching tag for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " or "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "jeson"

    .line 957
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p5, :cond_6

    .line 963
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no matching tag found in replaceAll="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0

    .line 969
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showNewTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 879
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->rlCommenTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 880
    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivTitleBtnLeft:I

    invoke-virtual {p0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 881
    new-instance v2, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$10;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$10;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 892
    sget p2, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivTitleName:I

    invoke-virtual {p0, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 893
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivTitleBtnHome:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 895
    new-instance p2, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$11;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$11;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
    .locals 1

    .line 518
    new-instance v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 670
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 671
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    .line 674
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 675
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

    .line 678
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->shopping_detail_layout:I

    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->setContentView(I)V

    .line 96
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->item_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemImg:Landroid/widget/ImageView;

    .line 97
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_send_source:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mFahuo:Landroid/widget/TextView;

    .line 99
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_kuaidi:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mKuaidi:Landroid/widget/TextView;

    .line 100
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_month_sales:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mMonthSales:Landroid/widget/TextView;

    .line 101
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mGoodDetailTitle:Landroid/widget/TextView;

    .line 102
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_cur_price:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mCurPrice:Landroid/widget/TextView;

    .line 103
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_orign_price:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mOriginPrice:Landroid/widget/TextView;

    .line 105
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_to_buy:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    .line 106
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_service_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mServiceTitle:Landroid/widget/TextView;

    .line 107
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_select_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mSelectTitle:Landroid/widget/TextView;

    .line 109
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->layout_choose_sku:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mSelectSkuLayout:Landroid/widget/RelativeLayout;

    .line 110
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->btn_choose_sku:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mChooseSKUImg:Landroid/widget/ImageView;

    .line 112
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->detail_webView:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailWebView:Landroid/webkit/WebView;

    .line 113
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailWebView:Landroid/webkit/WebView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 115
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->detail_scrollLayout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailSrollLayout:Landroid/widget/LinearLayout;

    .line 116
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailSrollLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 118
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailProgress:Landroid/widget/ProgressBar;

    .line 119
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->item_img_index:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mPageText:Landroid/widget/TextView;

    .line 122
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->item_img_viewpager:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemImgViewPager:Landroid/support/v4/view/ViewPager;

    .line 123
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mShoppingItemSmallViewPagerAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    .line 124
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemImgViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mShoppingItemSmallViewPagerAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemImgViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemImgViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemImgViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    .line 129
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mPageText:Landroid/widget/TextView;

    const-string v0, "1 / 1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_detail_str:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->getColor(I)I

    move-result v0

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->showNewTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 138
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "taobaosku"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mThreadHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->setWebViewSettings()V

    .line 144
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->processData()V

    .line 148
    :try_start_0
    new-instance p1, Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-direct {p1, p0}, Lcom/taobao/android/tbsku/TBXSkuCore;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->skuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    .line 149
    new-instance p1, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->aliXSkuPopupPresenter:Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;

    .line 150
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->skuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->getSkuCore()Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/sku/AliXSkuCore;->getSkuPresenterEngine()Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->aliXSkuPopupPresenter:Lcom/alibaba/genie/shopping/presenter/AliXSkuPopupPresenter;

    invoke-virtual {p1, v0}, Lcom/taobao/android/sku/presenter/AliXSkuPresenterEngine;->registerSkuPresenter(Lcom/taobao/android/sku/presenter/IAliXSkuPresenter;)V

    .line 156
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->skuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->setExtInputData(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 283
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->skuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->skuCore:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-virtual {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 488
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailProgress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailSrollLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 490
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 491
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 492
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailSrollLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "10701028"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 303
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 304
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u8be5\u5546\u54c1\u5df2\u4e0b\u67b6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 306
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 314
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_f

    .line 317
    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->videoInfo:Ljava/util/List;

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->videoInfo:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 318
    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->videoInfo:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$VideoInfo;

    .line 319
    new-instance v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;

    invoke-direct {v3}, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;-><init>()V

    const/4 v4, 0x1

    .line 320
    iput v4, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->type:I

    .line 321
    iget-object v4, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$VideoInfo;->videoThumbnailURL:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->videoThumbnailURL:Ljava/lang/String;

    .line 322
    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$VideoInfo;->url:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->videoURL:Ljava/lang/String;

    .line 323
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    :cond_2
    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    if-eqz p2, :cond_4

    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object p2, p2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->images:Ljava/util/List;

    if-eqz p2, :cond_4

    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object p2, p2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->images:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x0

    .line 327
    :goto_2
    iget-object v0, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 328
    iget-object v0, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->images:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    new-instance v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;

    invoke-direct {v3}, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;-><init>()V

    .line 331
    iput v2, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->type:I

    .line 332
    iput-object v0, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->imgUrl:Ljava/lang/String;

    .line 333
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_3

    .line 337
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mItemId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 339
    sput-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->itemImgUrl:Ljava/lang/String;

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 345
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->imgSize:I

    .line 347
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mPageText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->imgSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mShoppingItemSmallViewPagerAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;

    invoke-virtual {p2, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->refresh(Ljava/util/List;)V

    .line 370
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    const-string p2, ""

    if-eqz p1, :cond_5

    .line 371
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->title:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p1, p2

    .line 373
    :goto_3
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mGoodDetailTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, p2

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->deliveryInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;

    if-eqz p1, :cond_7

    .line 378
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->deliveryInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;->from:Ljava/lang/String;

    .line 379
    iget-object v0, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->deliveryInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$DeliveryInfo;->postage:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object p1, p2

    move-object v0, p1

    .line 382
    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 383
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mFahuo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u8d27: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 385
    :cond_8
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mFahuo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 389
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mKuaidi:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 391
    :cond_9
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mKuaidi:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :goto_7
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->curPrice:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 395
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mCurPrice:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->curPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 397
    :cond_a
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mCurPrice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :goto_8
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->origPrice:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->origPrice:Ljava/lang/String;

    iget-object v0, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->curPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 401
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mOriginPrice:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->origPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mOriginPrice:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_9

    .line 404
    :cond_b
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mOriginPrice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    :goto_9
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mMonthSales:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6708\u9500 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->monthSale:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->consumerProtectionInfos:Ljava/util/List;

    if-eqz p2, :cond_d

    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->consumerProtectionInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_d

    .line 412
    iget-object p2, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->consumerProtectionInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ConsumerProtectionInfo;

    .line 413
    iget-object v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ConsumerProtectionInfo;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ConsumerProtectionInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 418
    :cond_d
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mServiceTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mSelectSkuLayout:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    new-instance p2, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    if-eqz p1, :cond_10

    .line 470
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->tmallDescUrl:Ljava/lang/String;

    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 472
    iget-object p1, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->showInfo:Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule$ShowInfo;->taobaoDescUrl:Ljava/lang/String;

    .line 475
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 476
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_b

    .line 480
    :cond_f
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBuyNow:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    :goto_b
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "jeson"

    const-string v1, "ShoppingDetailActivity onNewIntent"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 177
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->processData()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mPageText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->imgSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 276
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    .line 278
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 262
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 264
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    const/16 v0, 0x2712

    const-string v1, "com.alibaba.ailabs.genie.shopping/com.alibaba.genie.shopping.activity.ShoppingDetailActivity"

    .line 265
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setWebViewSettings()V
    .locals 5

    .line 527
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 528
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 529
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 530
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 531
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 533
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 535
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 536
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/16 v3, 0x64

    .line 538
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const-wide/32 v3, 0xa00000

    .line 540
    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 542
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 544
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 547
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 549
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$7;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 659
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mDetailWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$8;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
