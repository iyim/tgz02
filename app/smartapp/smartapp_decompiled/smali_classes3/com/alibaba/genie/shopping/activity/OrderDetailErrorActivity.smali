.class public Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "OrderDetailErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static ISFROM_APPLET:Ljava/lang/String; = "from_applet"

.field public static REQ_PARAM_RESULT_CODE:Ljava/lang/String; = "req_result_code"

.field public static REQ_PARAM_RESULT_MSG:Ljava/lang/String; = "req_result_msg"

.field public static REQ_PARAM_TTS:Ljava/lang/String; = "req_tts"

.field private static final TAG:Ljava/lang/String; = "OrderDetailErrorActivity"

.field private static from_applet:I

.field private static req_result_code:Ljava/lang/String;

.field private static req_tts:Ljava/lang/String;


# instance fields
.field private isOpenVoicePay:Z

.field private mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

.field private mSearchEmptyLayout:Landroid/widget/LinearLayout;

.field private page_index:I

.field private tv_empty:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->isOpenVoicePay:Z

    .line 48
    iput v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->page_index:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 36
    sget v0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->from_applet:I

    return v0
.end method

.method private getSlotValue(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "data"

    .line 393
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "slots"

    .line 395
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "value"

    .line 399
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static toChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "\u96f6"

    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    .line 375
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5341"

    const-string v2, "\u767e"

    const-string v3, "\u5343"

    const-string v4, "\u4e07"

    const-string v5, "\u5341"

    const-string v6, "\u767e"

    const-string v7, "\u5343"

    const-string v8, "\u4ebf"

    const-string v9, "\u5341"

    const-string v10, "\u767e"

    const-string v11, "\u5343"

    .line 376
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 380
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int/lit8 v6, v2, -0x1

    if-eq v4, v6, :cond_0

    if-eqz v5, :cond_0

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x2

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 384
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
    .locals 1

    .line 154
    new-instance v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 11

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 316
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 318
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    .line 320
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v2, "ShoppingOrderDetail"

    .line 322
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 326
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 328
    iget v3, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->page_index:I

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    if-gt v0, v4, :cond_6

    .line 329
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;

    if-eqz v5, :cond_5

    .line 331
    iget-object v6, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 332
    new-instance v6, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;

    invoke-direct {v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;-><init>()V

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->setSelectKey(Ljava/lang/String;)V

    .line 335
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v9, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7b2c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->toChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u4e2a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->toChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u53f7\u5546\u54c1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v9, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 343
    iget-object v9, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    const-string v10, "\u5929\u732b\u7cbe\u7075\uff0c\u4e70"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 345
    iget-object v5, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    :cond_0
    iget-object v9, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    const-string v10, "\u4f60\u597d\u5929\u732b\uff0c\u4e70"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 348
    iget-object v5, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_1
    iget-object v9, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    const-string v10, "\u4f60\u597d\u5929\u732b\uff0c\u6211\u8981\u4e70"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 351
    iget-object v5, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_2
    iget-object v9, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    const-string v10, "\u5929\u732b\u7cbe\u7075\uff0c\u6211\u8981\u4e70"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 354
    iget-object v5, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v5, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 357
    :cond_3
    iget-object v5, v5, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_4
    :goto_1
    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->addSelectValue(Ljava/util/List;)V

    const-string v5, "item_name"

    .line 361
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->addSelectData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 368
    :cond_6
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderDetailErrorActivity getAppContextData;appContextData="

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

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_order_detail_error:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->setContentView(I)V

    .line 63
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_empty:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->tv_empty:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_order_confirm_str:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getColor(I)I

    move-result v0

    new-instance v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$1;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->showCommonTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    sget-object v0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->REQ_PARAM_RESULT_MSG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 78
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->tv_empty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_1
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 85
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    new-instance v0, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GridDividerItemDecoration;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GridDividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 88
    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    .line 89
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$2;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->setOnItemClickListener(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;)V

    .line 104
    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getRecommandGoods()V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->REQ_PARAM_RESULT_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->req_result_code:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->REQ_PARAM_TTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->req_tts:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->ISFROM_APPLET:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->from_applet:I

    .line 118
    sget-object p1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->req_tts:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, -0x1

    .line 119
    sget-object v2, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->req_tts:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_other_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v12, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    :goto_1
    return-void
.end method

.method public onGetRecommandGoods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandRecyclerView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity$3;-><init>(Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->refreshData(Ljava/util/List;)V

    goto :goto_0

    .line 186
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_1:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 187
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandTitle:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 148
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 3

    .line 127
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 128
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_get_detail_other_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2712

    .line 131
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 5

    const-string v0, ""

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShoppingSearchActivity processNLPResult; commandDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; command="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; commandParams="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; nlpResult="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "jesonma"

    invoke-static {p4, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string v1, "/SelectContent"

    .line 227
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 230
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 233
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "data"

    .line 235
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v3, "intentName"

    .line 237
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v2

    .line 241
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "select_dynamic"

    .line 243
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 244
    invoke-direct {p0, p2}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->getSlotValue(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 247
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 248
    iget p3, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->page_index:I

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p3, p2

    sub-int/2addr p3, v1

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShoppingSearchActivity SelectContent; open_index="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->mRecyclerViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    invoke-virtual {p2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    if-ltz p3, :cond_1

    .line 252
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_1

    .line 253
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/genie/shopping/bean/GoodInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_3

    .line 257
    :try_start_1
    iget-object p3, p2, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 259
    new-instance p3, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-direct {p3, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "order_good_detail_itemId"

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "order_good_detail_addressId"

    .line 261
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "order_good_detail_skuId"

    .line 262
    iget-object v2, p2, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "0"

    goto :goto_2

    :cond_2
    iget-object v2, p2, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    :goto_2
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "order_good_detail_from_applet"

    .line 263
    sget v2, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->from_applet:I

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, p3}, Lcom/alibaba/genie/shopping/activity/OrderDetailErrorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    move-object v2, p2

    move-object p2, p3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v2, p2

    goto :goto_5

    :catch_1
    move-exception p2

    .line 297
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    :cond_4
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OrderDetailErrorActivity onNLUResult; SelectContent; goodInfo="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_5
    return-object p1
.end method
