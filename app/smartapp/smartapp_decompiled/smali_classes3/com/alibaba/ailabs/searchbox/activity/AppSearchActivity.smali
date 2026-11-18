.class public Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;
.super Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;
.source "AppSearchActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$AppSearchItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity<",
        "Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;",
        ">;",
        "Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final COMMAND_OPEN:Ljava/lang/String; = "/Open"

.field private static final OPEN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppSearchActivity-l"


# instance fields
.field callback:Landroid/os/Handler$Callback;

.field private mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

.field private mBackView:Landroid/view/View;

.field private mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

.field private mHandler:Landroid/os/Handler;

.field private mOnASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$1;-><init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->callback:Landroid/os/Handler$Callback;

    .line 333
    new-instance v0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$6;-><init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mOnASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->openItem(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->reportSearchItem(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initAsrClient()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->setBackgroundService(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mOnASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->setOnASRCommandListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    const-string v1, "com.alibaba.genie.appsearch"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;->DEFAULT_LISTENER:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mGenieClient:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->init(Landroid/content/Context;Z)V

    const-string v0, "AppSearchActivity-l"

    const-string v1, "after initASRManager()"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openItem(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppSearchActivity-l"

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    move-result-object v1

    const-string v2, "voice item select"

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->stopOpenTask(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "index"

    .line 94
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    check-cast v1, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;->itemClick(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private reportSearchItem(I)V
    .locals 3

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getAlgTrackLog()Ljava/lang/String;

    move-result-object v1

    const-string v2, "algTrackLog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getSearchDataBean()Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchDataBean;->getSearchAppList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "show"

    .line 251
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportSearchItemEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 157
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->activity_appsearch:I

    return v0
.end method

.method protected initData()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;->initData()V

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    check-cast v0, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;->initData(Landroid/content/Intent;)V

    return-void
.end method

.method protected initPresenter()V
    .locals 1

    .line 138
    new-instance v0, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/ailabs/searchbox/presenter/AppSearchPresenter;-><init>(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;->initView()V

    .line 163
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_appsearch_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mBackView:Landroid/view/View;

    .line 164
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_appsearch_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mTitleView:Landroid/widget/TextView;

    .line 165
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_appsearch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->initAsrClient()V

    .line 172
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p1, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 174
    new-instance v0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$2;-><init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 189
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 192
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$AppSearchItemDecoration;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$AppSearchItemDecoration;-><init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 193
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$3;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$3;-><init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$4;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$4;-><init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mAppSearchRecyclerview:Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;

    new-instance p2, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$5;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$5;-><init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/view/ExposeRecyclerView;->setUserVisibleListener(Lcom/alibaba/ailabs/searchbox/view/IRecyclerViewUserVisibleListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_appsearch_back:I

    if-ne p1, v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->callback:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;->onDestroy()V

    .line 132
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/searchbox/model/AppSearchBeanMgr;->clearData()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->mPresenter:Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;

    check-cast v0, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/searchbox/contract/AppSearchContract$IPresenter;->initData(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    :try_start_0
    const-string v0, "@"

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoOpenMgr"

    const/4 v1, 0x0

    .line 305
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 306
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, 0x4e9310f0

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "exeAutoOpenTask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_6

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->finish()V

    goto :goto_6

    :cond_3
    const-string v0, "SearchMarketInstanceHolder"

    .line 313
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x17d6cce9

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "marketInstanceClick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_6

    goto :goto_6

    .line 316
    :cond_6
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openMarketMain()V

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->finish()V

    goto :goto_6

    :cond_7
    const-string v0, "AppSearchService"

    .line 320
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 321
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, 0x974d5c0

    if-eq v0, v3, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "closeSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v1, -0x1

    :goto_5
    if-eqz v1, :cond_a

    goto :goto_6

    .line 323
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 297
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    move-result-object v0

    const-string v1, " -- onTouchEvent"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->stopOpenTask(Ljava/lang/String;)V

    .line 298
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .line 522
    invoke-super {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchBaseActivity;->onUserLeaveHint()V

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->finish()V

    return-void
.end method
