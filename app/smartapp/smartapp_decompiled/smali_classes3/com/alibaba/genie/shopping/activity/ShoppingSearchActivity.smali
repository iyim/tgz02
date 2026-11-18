.class public Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;",
        ">;",
        "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;"
    }
.end annotation


# static fields
.field private static final FLAG_QUERY_SOUND_LIST:I = 0x7531

.field private static final TAG:Ljava/lang/String; = "ShoppingSearchActivity"


# instance fields
.field private isOpenVoicePay:Z

.field private mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

.field private mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

.field private mGridViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

.field private mGridviewLayout:Landroid/widget/LinearLayout;

.field private mSearchEmptyLayout:Landroid/widget/LinearLayout;

.field private mSearchGoodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTitle:Landroid/widget/TextView;

.field private mVerticalScrollBar:Lcom/alibaba/genie/shopping/view/VerticalScrollBar;

.field private page_index:I

.field private searchKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->searchKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->isOpenVoicePay:Z

    .line 59
    iput v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->page_index:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->showSkuSelectDialog(Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getFirstVisiblePosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)Lcom/alibaba/genie/shopping/view/CustomGridView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->page_index:I

    return p1
.end method

.method private getFirstVisiblePosition()I
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 339
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method private getSlotValue(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "data"

    .line 788
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "slots"

    .line 790
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 791
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 792
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "value"

    .line 794
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initData()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "renderData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "itemList"

    .line 160
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "itemDTOList"

    .line 162
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const-string v2, "voiceText"

    .line 163
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchGoodList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->showSearchResultPage()V

    return-void
.end method

.method private showSearchResultPage()V
    .locals 13

    const-string v0, "\u5929\u732b\u7cbe\u7075\uff0c\u6211\u8981\u4e70"

    const-string v1, "\u4f60\u597d\u5929\u732b\uff0c\u6211\u8981\u4e70"

    const-string v2, "\u4f60\u597d\u5929\u732b\uff0c\u4e70"

    const-string v3, "\u5929\u732b\u7cbe\u7075\uff0c\u4e70"

    .line 181
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchGoodList:Ljava/util/List;

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 182
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-virtual {v4, v5}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setVisibility(I)V

    .line 185
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchGoodList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->refreshData(Ljava/util/List;)V

    const/4 v7, -0x1

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_search_tips:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v11, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 191
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 192
    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchGoodList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    if-nez v6, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v7, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 198
    :try_start_0
    iget-object v7, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 200
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    :cond_2
    :goto_1
    iget-object v7, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 206
    :try_start_1
    iget-object v7, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, ""

    if-eqz v7, :cond_3

    .line 208
    :try_start_2
    iget-object v6, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 209
    :cond_3
    iget-object v7, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 211
    iget-object v6, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 212
    :cond_4
    iget-object v7, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 214
    iget-object v6, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 215
    :cond_5
    iget-object v7, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 217
    iget-object v6, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 220
    :cond_6
    iget-object v6, v6, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    .line 223
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 228
    :cond_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 229
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateCorpusData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :cond_8
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-virtual {v0, v6}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 238
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 239
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandRecyclerView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method private showSkuSelectDialog(Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;)V
    .locals 2

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    iget-object p1, p1, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->itemId:Ljava/lang/String;

    const-string v1, "order_good_detail_itemId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
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

    .line 770
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

    .line 771
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 775
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int/lit8 v6, v2, -0x1

    if-eq v4, v6, :cond_0

    if-eqz v5, :cond_0

    .line 777
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

    .line 779
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

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
    .locals 1

    .line 360
    new-instance v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 13

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 644
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 646
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    .line 648
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v2, "ShoppingSearch"

    .line 650
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 654
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 656
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 657
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 660
    iget v5, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->page_index:I

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    if-gt v0, v6, :cond_6

    .line 661
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    if-eqz v7, :cond_5

    .line 662
    iget-object v8, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->itemId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 663
    iget-object v8, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 665
    new-instance v8, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;

    invoke-direct {v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;-><init>()V

    .line 666
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->setSelectKey(Ljava/lang/String;)V

    .line 668
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 670
    iget-object v11, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->title:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u7b2c"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->toChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u4e2a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->toChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u53f7\u5546\u54c1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v11, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 676
    iget-object v11, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    const-string v12, "\u5929\u732b\u7cbe\u7075\uff0c\u4e70"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 678
    iget-object v7, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 679
    :cond_0
    iget-object v11, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    const-string v12, "\u4f60\u597d\u5929\u732b\uff0c\u4e70"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 681
    iget-object v7, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 682
    :cond_1
    iget-object v11, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    const-string v12, "\u4f60\u597d\u5929\u732b\uff0c\u6211\u8981\u4e70"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 684
    iget-object v7, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 685
    :cond_2
    iget-object v11, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    const-string v12, "\u5929\u732b\u7cbe\u7075\uff0c\u6211\u8981\u4e70"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 687
    iget-object v7, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 690
    :cond_3
    iget-object v7, v7, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->weakup:Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_4
    :goto_1
    invoke-virtual {v8, v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;->addSelectValue(Ljava/util/List;)V

    const-string v7, "item_name"

    .line 694
    invoke-virtual {v1, v7, v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->addSelectData(Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData$SelectListItem;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    :try_start_0
    const-string v0, "itemIdList"

    .line 701
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 703
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 706
    :goto_2
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V

    .line 709
    :cond_7
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingSearchActivity getAppContextData;appContextData="

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
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_shopping_search:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->setContentView(I)V

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_shopping_search_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchTitle:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->search_empty_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchEmptyLayout:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_searchstr:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$color;->color_transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getColor(I)I

    move-result v0

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->showCommonTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 80
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->shopping_search_gridview:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/CustomGridView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;-><init>()V

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;-><init>()V

    .line 88
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;-><init>()V

    .line 91
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    .line 92
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;-><init>()V

    .line 94
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    .line 95
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;-><init>()V

    .line 97
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;-><init>()V

    .line 100
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->vertical_scroll_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/view/VerticalScrollBar;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mVerticalScrollBar:Lcom/alibaba/genie/shopping/view/VerticalScrollBar;

    .line 105
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->shopping_search_gridview_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridviewLayout:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setVisibility(I)V

    .line 108
    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    .line 109
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mVerticalScrollBar:Lcom/alibaba/genie/shopping/view/VerticalScrollBar;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setScrollViewListener(Lcom/alibaba/genie/shopping/view/OnRecycleViewScrollListener;)V

    .line 111
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$2;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 142
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 804
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    .line 808
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    .line 809
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchGoodList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchGoodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->dismiss()V

    .line 815
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 150
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->initData()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 354
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 2

    const/16 p3, 0x7531

    if-eq p2, p3, :cond_0

    goto/16 :goto_0

    .line 719
    :cond_0
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 720
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 721
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;->getModel()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 723
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    .line 724
    invoke-virtual {p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->isEnablePay()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 725
    iput-boolean p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->isOpenVoicePay:Z

    :cond_2
    const/4 p1, 0x4

    const-string p3, "shopping_data"

    .line 732
    invoke-virtual {p0, p3, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 735
    iget-boolean p3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->isOpenVoicePay:Z

    const/4 v0, 0x0

    const-string v1, "shopping_should_open_voicepay_guide"

    if-eqz p3, :cond_3

    .line 736
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 739
    :cond_3
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 741
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 745
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    if-nez p1, :cond_4

    .line 746
    new-instance p1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    .line 749
    :cond_4
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    sget-object p2, Lcom/alibaba/genie/shopping/utils/ConstData;->VOICEPRINT_COME_FROM_SEARCH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->setComeFrom(Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mDialog:Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "open_guide_dialog"

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenGuideDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->searchKey:Ljava/lang/String;

    sput-object p1, Lcom/alibaba/genie/shopping/utils/ConstData;->SEARCH_KEY:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 324
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 325
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    const/16 v0, 0x2712

    const-string v1, "com.alibaba.ailabs.genie.shopping/ShoppingSearchActivity"

    .line 327
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    :try_start_0
    const-string v0, "a1z3lt.12021076"

    const-string v1, "shopping_Search List"

    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 3

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingSearchActivity processNLPResult; commandDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; commandParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; nlpResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "jesonma"

    invoke-static {v0, p4}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p4}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string v1, "/SelectContent"

    .line 525
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 528
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_6

    .line 531
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "data"

    .line 533
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v1, "intentName"

    .line 535
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 539
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "select_dynamic"

    .line 541
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getSlotValue(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 545
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 546
    iget p3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->page_index:I

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p3, p1

    sub-int/2addr p3, v2

    .line 547
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingSearchActivity SelectContent; open_index="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridViewAdapter:Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    .line 550
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 551
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    move-object p2, p1

    :cond_1
    if-eqz p2, :cond_6

    .line 555
    iget-object p1, p2, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->itemId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 556
    invoke-direct {p0, p2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->showSkuSelectDialog(Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;)V

    goto :goto_1

    :cond_2
    const-string p1, "previous_page_dynamic"

    .line 564
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 565
    iput-boolean v2, p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 566
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$6;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$6;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string p1, "next_page_dynamic"

    .line 576
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 577
    iput-boolean v2, p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 578
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$7;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$7;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    const-string p1, "back_dynamic"

    .line 588
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 589
    iput-boolean v2, p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 591
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->finish()V

    goto :goto_1

    :cond_5
    const-string p1, "exit_dynamic"

    .line 592
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 593
    iput-boolean v2, p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 599
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 602
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ShoppingSearchActivity onNLUResult; SelectContent; goodInfo="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iput-boolean v2, p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    goto :goto_2

    :cond_7
    const-string p3, "AliGenie.System.Control"

    .line 604
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "/PreviousPage"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 606
    iput-boolean v2, p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 607
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$8;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$8;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 617
    :cond_8
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "/NextPage"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 619
    iput-boolean v2, p4, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 620
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$9;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$9;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    return-object p4
.end method

.method public showSearchResultEmptyPage(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mGridView:Lcom/alibaba/genie/shopping/view/CustomGridView;

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/CustomGridView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->mSearchEmptyLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandTitle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandRecyclerView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$4;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandRecyclerView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 448
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 449
    new-instance v1, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GridDividerItemDecoration;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GridDividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 451
    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 452
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$5;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$5;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V

    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->setOnItemClickListener(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;)V

    .line 472
    new-instance p1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 474
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 476
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->line_1:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandTitle:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->recommandRecyclerView:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v3, -0x1

    .line 481
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_shopping_search_no_tips:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v7, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
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
