.class public Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "ApplistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;,
        Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;
    }
.end annotation


# static fields
.field private static final MSG_CACHE_LIST_SORT:I = 0x2

.field private static final MSG_LOAD_DATA:I = 0x4

.field private static final MSG_LOAD_DATA_LOADING:I = 0x5

.field private static final MSG_ON_DATA_LOADED:I = 0x1

.field private static final MSG_REFRESH_BY_CACHE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ApplistActivity-l"

.field private static requestTag:J


# instance fields
.field private backParameter:I

.field private bgManager:Landroid/view/View;

.field createTime:J

.field public dataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation
.end field

.field private dialogDeleteApp:Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private header_main:Landroid/widget/RelativeLayout;

.field isEdit:Z

.field private isFirstIn:Z

.field private isRefreshing:Z

.field private iv_back:Landroid/widget/ImageView;

.field private lasttag:J

.field private layoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mScrollView:Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

.field private moveParameter:Z

.field private msgboxBdCast:Landroid/content/BroadcastReceiver;

.field private pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

.field private preinstallCount:I

.field private preinstallManager:Lcom/alibaba/ailabs/base/util/PreinstallManager;

.field private responseStr:Ljava/lang/String;

.field private rl_activity_appList_root:Landroid/widget/RelativeLayout;

.field private rl_scroll_container:Landroid/widget/RelativeLayout;

.field private rowParameter:I

.field private rv_applist:Landroid/support/v7/widget/RecyclerView;

.field private rv_layout:Landroid/widget/FrameLayout;

.field private sortParameter:Z

.field private tvCleanApp:Landroid/widget/TextView;

.field private tvEdit:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    const/4 v1, 0x3

    .line 113
    iput v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    .line 119
    iput v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->backParameter:I

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->sortParameter:Z

    .line 131
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->moveParameter:Z

    .line 168
    iput v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->preinstallCount:I

    const-wide/16 v2, -0x1

    .line 170
    iput-wide v2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->lasttag:J

    .line 180
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isFirstIn:Z

    .line 191
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    .line 194
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isRefreshing:Z

    .line 200
    new-instance v0, Lcom/alibaba/ailabs/base/util/PreinstallManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->preinstallManager:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->responseStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->responseStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/os/Handler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->moveParameter:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 79
    sget-wide v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->requestTag:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->lasttag:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->lasttag:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/lang/String;J)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->onDataLoaded(Ljava/lang/String;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->cacheData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isRefreshing:Z

    return p0
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->refreshAppListByCache()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/util/List;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->refresh2List(Ljava/util/List;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private cacheData()V
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->insertSort2DB(Ljava/util/List;)V

    return-void
.end method

.method private getIntentData()V
    .locals 7

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentData uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplistActivity-l"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "edit"

    .line 246
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    :try_start_0
    const-string/jumbo v1, "row"

    .line 248
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    :cond_2
    const-string v1, "back"

    .line 252
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->backParameter:I

    :cond_3
    const-string/jumbo v1, "sort"

    .line 256
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "false"

    if-nez v3, :cond_5

    .line 258
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->sortParameter:Z

    :cond_5
    const-string v1, "move"

    .line 260
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 262
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->moveParameter:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntentData isEdit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",rowParameter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",backParameter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->backParameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sortParameter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->sortParameter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",moveParameter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->moveParameter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_list_"

    const-string v2, "init"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private handlerAppListRecycleView()V
    .locals 2

    .line 1145
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$7;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 1250
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$8;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 633
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "task"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handlerThread:Landroid/os/HandlerThread;

    .line 634
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 635
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$3;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private initOnce()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->initView()V

    .line 461
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->initHandler()V

    .line 462
    iget v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 463
    new-instance v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_applist_square_item_one_four:I

    invoke-direct {v0, v1, p0, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    .line 464
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->setPageSize(I)V

    goto :goto_0

    .line 466
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_applist_square_item_one:I

    invoke-direct {v0, v1, p0, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->setOperatorListener(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 487
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handlerAppListRecycleView()V

    return-void
.end method

.method private initView()V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 692
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_applist_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->iv_back:Landroid/widget/ImageView;

    .line 693
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_applist_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->header_main:Landroid/widget/RelativeLayout;

    .line 697
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_layout:Landroid/widget/FrameLayout;

    .line 699
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_app_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvTitle:Landroid/widget/TextView;

    .line 700
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6211\u7684\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$4;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 718
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_activity_applist_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_activity_appList_root:Landroid/widget/RelativeLayout;

    .line 719
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_scrll_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_scroll_container:Landroid/widget/RelativeLayout;

    .line 722
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->sc_applist:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mScrollView:Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

    .line 723
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_app_data:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvCleanApp:Landroid/widget/TextView;

    .line 724
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_del_app_instance:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    .line 725
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->v_manager_app_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->bgManager:Landroid/view/View;

    .line 727
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvCleanApp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rv_applist:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    .line 733
    iget v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 734
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mScrollView:Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 738
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 740
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mScrollView:Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x22

    if-nez v0, :cond_1

    .line 744
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 745
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 747
    :cond_1
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 749
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_2

    .line 754
    :cond_2
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    const/high16 v0, 0x42460000    # 49.5f

    .line 758
    :goto_2
    iget v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    .line 759
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->iv_back:Landroid/widget/ImageView;

    sget v3, Lcom/alibaba/ailabs/appbox/R$drawable;->icon_my_application_back_1:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->iv_back:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_3

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->iv_back:Landroid/widget/ImageView;

    sget v3, Lcom/alibaba/ailabs/appbox/R$drawable;->icon_market_back:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->iv_back:Landroid/widget/ImageView;

    const/4 v3, 0x6

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v3, v5, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 766
    :goto_3
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 767
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 768
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 769
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v1, :cond_4

    .line 771
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_4
    float-to-int v0, v0

    .line 773
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    return-void
.end method

.method private isContainerDataList(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1464
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1465
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 1466
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isCurrentPackageInBlackList(Ljava/lang/String;)Z
    .locals 4

    .line 1120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1128
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private onDataLoaded(Ljava/lang/String;J)V
    .locals 7

    .line 777
    sget-wide v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->requestTag:J

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-string p1, "findToPreinstall"

    const-string/jumbo p2, "tag != requestTag skip..."

    .line 778
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 781
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "#####3333 applistPageData is:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ApplistActivity-l"

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-class p2, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    .line 788
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->preinstallManager:Lcom/alibaba/ailabs/base/util/PreinstallManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/base/util/PreinstallManager;->checkPreinstallAndUpload(Ljava/util/List;Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;)V

    .line 845
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 846
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 847
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 848
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 851
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->saveBlackApks(Ljava/lang/String;)V

    .line 855
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->isFirstSortInApplist()Z

    move-result p1

    .line 857
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->deleteAllPreinstall()V

    .line 859
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object p2

    const-string v0, "apk"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 860
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 865
    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "applet"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip isAppletIntentMatchCode not match. -- > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "preinstalist"

    invoke-static {v5, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 872
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "server"

    if-eqz v5, :cond_4

    .line 874
    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isCurrentPackageInBlackList(Ljava/lang/String;)Z

    move-result v5

    .line 873
    invoke-static {v4, v5, v6}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLjava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v4

    goto :goto_2

    .line 876
    :cond_4
    invoke-static {v4, v6}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 879
    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->insertOrUpdate(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    if-nez p1, :cond_5

    .line 880
    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->isAlreadySort(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 881
    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v5

    .line 882
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->getMaxOrMinInSort(Z)I

    move-result v6

    add-int/2addr v6, v2

    .line 881
    invoke-static {v5, v6}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->insertSort2DB(Ljava/lang/String;I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 885
    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/appbox/db/SortDBUtil;->insertSort2DB(Ljava/lang/String;I)V

    :cond_6
    const-string v4, "key_applist_first_sort"

    .line 888
    invoke-static {v4, v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 893
    :cond_8
    iput v3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->preinstallCount:I

    .line 894
    iget-boolean p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->sortParameter:Z

    if-eqz p1, :cond_9

    .line 895
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    goto :goto_3

    .line 897
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->pageData:Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->getPreInstalledAppList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->switchData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    .line 899
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDataLoaded dataItems:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_applist_first_load_2_0"

    .line 900
    invoke-static {p1, v2}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 902
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 903
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 904
    invoke-virtual {p3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 905
    invoke-virtual {p3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->setAppHasOpen(Ljava/lang/String;)V

    goto :goto_4

    .line 907
    :cond_a
    invoke-virtual {p3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->setAppHasOpen(Ljava/lang/String;)V

    goto :goto_4

    .line 912
    :cond_b
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 915
    :cond_c
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 916
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 917
    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 918
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 919
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 920
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result p3

    if-ne p3, v2, :cond_e

    .line 921
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->add2CalSizeList(Ljava/lang/String;)V

    goto :goto_5

    .line 922
    :cond_e
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result p3

    if-nez p3, :cond_d

    .line 923
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->removeCalSize(Ljava/lang/String;)V

    goto :goto_5

    .line 929
    :cond_f
    new-instance p1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$6;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p1, "key_user_enter_applist"

    .line 946
    invoke-static {p1, v2}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onDataLoaded Done"

    .line 947
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    return-void
.end method

.method private refresh2List(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ApplistActivity-l"

    const-string/jumbo v1, "refresh2List"

    .line 1138
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshData(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private refreshAppListByCache()V
    .locals 2

    const/4 v0, 0x1

    .line 1275
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isRefreshing:Z

    .line 1282
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 1284
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    .line 1286
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "refreshAppListByCache.MarketDBUtil"

    .line 1288
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "refreshAppListByCache.Cached"

    .line 1292
    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 1293
    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$9;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Ljava/util/List;)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 1492
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    .line 1493
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.message.ACTION_STATUS_NOTIFY"

    .line 1494
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1495
    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$RefreshMessageStatusReceiver;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->msgboxBdCast:Landroid/content/BroadcastReceiver;

    .line 1496
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->msgboxBdCast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private reportDeviceAppCount()V
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1412
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$10;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sameInit(Landroid/content/Intent;)V
    .locals 3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sameInit intent.getData():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistActivity-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "edit"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    .line 519
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "row"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    .line 523
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "back"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->backParameter:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sameInit isEdit:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",rowParameter:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rowParameter:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",backParameter:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->backParameter:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "app_list_"

    const-string v1, "init"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private switchData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 954
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 955
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 956
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 958
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getBusinessType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "server"

    if-eqz v3, :cond_1

    .line 960
    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isCurrentPackageInBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 959
    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;ZLjava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v2

    goto :goto_1

    .line 962
    :cond_1
    invoke-static {v2, v4}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v2

    .line 965
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public loadData(Z)V
    .locals 2

    const-string v0, "getApplistData"

    const-string v1, "getApplistDafindta start-->loadData"

    .line 599
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->requestTag:J

    const-string v0, "MarketMtopUtil"

    .line 601
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 602
    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$2;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;Z)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->getAppListDataV2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1312
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_home:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 1317
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_applist_back:I

    if-ne p1, v0, :cond_1

    .line 1318
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "back_click"

    const-string v1, "app_list_"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1319
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->finish()V

    goto/16 :goto_0

    .line 1320
    :cond_1
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_del_app_instance:I

    if-ne p1, v0, :cond_4

    .line 1321
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string/jumbo v0, "\u7ba1\u7406"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 1322
    iput-boolean v2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    .line 1324
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 1325
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->header_main:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 1326
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_scroll_container:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    .line 1327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tv_del_app_instance click rl_scroll_container:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_scroll_container:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ApplistActivity-l"

    invoke-static {v6, v5}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_scroll_container:Landroid/widget/RelativeLayout;

    invoke-static {v5}, Lcom/alibaba/ailabs/appbox/utils/MarketViewUtils;->clearParent(Landroid/view/View;)Landroid/view/View;

    .line 1330
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1332
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1333
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_activity_appList_root:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_scroll_container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rv_applist:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1338
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->setCanEdit(ZLjava/util/List;)V

    const-string p1, "key_delete_guide_show"

    .line 1339
    invoke-static {p1, v3}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->moveParameter:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->showDeleteGuide(Z)V

    .line 1341
    invoke-static {p1, v2}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 1344
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->bgManager:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    const-string/jumbo v0, "\u4fdd\u5b58"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1347
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/appbox/R$drawable;->conner_rect_bg_green:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1348
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->header_main:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1349
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mScrollView:Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->setScrollEnable(Z)V

    goto :goto_0

    .line 1351
    :cond_3
    iput-boolean v3, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    .line 1353
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_scroll_container:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/MarketViewUtils;->clearParent(Landroid/view/View;)Landroid/view/View;

    .line 1354
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1355
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1356
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mScrollView:Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->rl_scroll_container:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dataItems:Ljava/util/List;

    invoke-virtual {p1, v3, v1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->setCanEdit(ZLjava/util/List;)V

    .line 1359
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->bgManager:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/appbox/R$drawable;->ripple_text_button_gray_b_whit_c:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1363
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    const-string v0, "#4A5A77"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1365
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->header_main:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1366
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mScrollView:Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->setScrollEnable(Z)V

    goto :goto_0

    .line 1369
    :cond_4
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_app_data:I

    if-ne p1, v0, :cond_5

    .line 1370
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openCleaner()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/ailabs/appbox/utils/GloabConstant;->lasttime:J

    .line 205
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "process name -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplistActivity-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_applist:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->setContentView(I)V

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->showLoadingView()V

    .line 221
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->getIntentData()V

    .line 223
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const-string p1, "ApplistActivity onCreate"

    .line 225
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 228
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ApplistActivity"

    invoke-static {v0, v0, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->registerReceiver()V

    .line 233
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->initOnce()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1377
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1380
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1384
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1388
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->msgboxBdCast:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 1389
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->msgboxBdCast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1392
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1394
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->reportDeviceAppCount()V

    .line 1395
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onDestroy()V

    .line 1396
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    if-eqz v1, :cond_3

    .line 1397
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->setOperatorListener(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;)V

    .line 1399
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 551
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->getIntentData()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPause()V
    .locals 2

    .line 589
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onPause()V

    .line 590
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isEdit:Z

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "\u4fdd\u5b58"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->tvEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    :cond_0
    return-void
.end method

.method public onReceiveMsg(Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveMsg - onReceiveMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistActivity-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1438
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;->getBean()Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object p1

    .line 1443
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->mAdapter:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->removeItem(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    goto :goto_0

    .line 1446
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$11;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 556
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onResume()V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume isFirstIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isFirstIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistActivity-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isFirstIn:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->sortParameter:Z

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->isFirstIn:Z

    :goto_1
    const-string v0, "onResume"

    .line 580
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    return-void
.end method

.method public showDeleteDialog(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V
    .locals 1

    .line 1476
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dialogDeleteApp:Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1479
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;-><init>(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$OnDialogCallback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dialogDeleteApp:Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;

    .line 1480
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->dialogDeleteApp:Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogDeleteApp;->show()V

    return-void
.end method
