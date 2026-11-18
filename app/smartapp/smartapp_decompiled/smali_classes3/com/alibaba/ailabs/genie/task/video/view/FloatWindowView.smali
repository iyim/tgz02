.class public Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;
.super Landroid/widget/LinearLayout;
.source "FloatWindowView.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MAX_SECOND:I = 0x1770

.field public static final MSG_DISMISS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "TaskService-Video-recommend"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isAnimating:Z

.field private mAdapter:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

.field private mContext:Landroid/content/Context;

.field private mMoreBtn:Landroid/widget/TextView;

.field private mPlayUri:Ljava/lang/String;

.field private mRecommendArea:Landroid/widget/RelativeLayout;

.field private mTraceIdString:Ljava/lang/String;

.field private recommendRecycleView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->isAnimating:Z

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->data:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/task/R$layout;->layout_list_recommend_float_window:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    sget v1, Lcom/alibaba/ailabs/genie/task/R$id;->moreView:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mMoreBtn:Landroid/widget/TextView;

    .line 89
    sget v1, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_area:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mMoreBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget v1, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_close:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v1, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_recycle_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->recommendRecycleView:Landroid/support/v7/widget/RecyclerView;

    .line 95
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->recommendRecycleView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->data:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mAdapter:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->recommendRecycleView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mAdapter:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mAdapter:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->setOnclickListener(Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter$ItemClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->recommendRecycleView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$2;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x4

    .line 111
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->startAnimationFinish()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->stopTimerTask()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->startFloatWindowTimer()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mTraceIdString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mPlayUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->startAnimationStart()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->isAnimating:Z

    return p1
.end method

.method private getMyHandler()Landroid/os/Handler;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$1;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->handler:Landroid/os/Handler;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private listExposure()V
    .locals 3

    .line 170
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$6;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private moreBtnExposure()V
    .locals 3

    .line 130
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$3;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private startAnimationFinish()V
    .locals 6

    .line 288
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->isAnimating:Z

    .line 292
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x190

    .line 293
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    aput v1, v3, v0

    const-string v1, "translationY"

    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 294
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 295
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v5

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x258

    .line 296
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 297
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$8;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$8;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startAnimationStart()V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput v0, v2, v4

    const-string v0, "translationY"

    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 282
    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x320

    .line 283
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 284
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startFloatWindowTimer()V
    .locals 4

    .line 325
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTimerTask()V
    .locals 2

    .line 330
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private toPlayerUT(Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;Ljava/lang/String;)V
    .locals 4

    .line 248
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "bizType"

    const-string v2, "long_video_recommend"

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "traceId"

    .line 250
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getVideoId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "videoId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getRawId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "rawId"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://com.aligenie.ic.icProvider/app"

    .line 256
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "traceInfo"

    .line 258
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "openuri"

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 273
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toPlayerUT traceInfo="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskService-Video-recommend"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public hideAllView()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TaskService-Video-recommend"

    const-string v1, "hideAllView"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object v0

    const-string v1, "button"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->setRecommendState(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mMoreBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$7;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 197
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->stopTimerTask()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TaskService-Video-recommend"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget p1, Lcom/alibaba/ailabs/genie/task/R$id;->moreView:I

    if-ne v0, p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->showRecommendArea()V

    .line 216
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mTraceIdString:Ljava/lang/String;

    const-string v1, "traceId"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mPlayUri:Ljava/lang/String;

    const-string v1, "playUri"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->BUTTON_MORE_CLICK:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->PAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->SPM:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 220
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/task/R$id;->recommend_close:I

    if-ne v0, p1, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->startAnimationFinish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickItemListener(Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;)V
    .locals 3

    .line 227
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->stopTimerTask()V

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mTraceIdString:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->toPlayerUT(Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    const/16 v0, 0xfa0

    .line 230
    sput v0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->DELAY_SHOW:I

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/utils/JumpUtils;->gotoActionUseRoute(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 233
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mTraceIdString:Ljava/lang/String;

    const-string v2, "traceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mPlayUri:Ljava/lang/String;

    const-string v2, "playUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toUri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "contentClickData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->data:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "contentExposureData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object p1, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->LIST_ITEM_CLICK:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->PAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->SPM:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/alibaba/ailabs/genie/task/video/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "TaskService-Video-recommend"

    const-string v1, "onTouchEvent"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->startAnimationFinish()V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setUpdate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mAdapter:Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/video/view/RecommendListAdapter;->notifyDataSetChanged()V

    .line 320
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mTraceIdString:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mPlayUri:Ljava/lang/String;

    return-void
.end method

.method public showMoreBtn(Z)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMoreBtn ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Video-recommend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object p1

    const-string v1, "button"

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->setRecommendState(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->stopTimerTask()V

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mMoreBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setVisibility(I)V

    .line 122
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->moreBtnExposure()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mMoreBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showRecommendArea()V
    .locals 3

    const-string v0, "TaskService-Video-recommend"

    const-string v1, "showRecommendArea"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mRecommendArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->mMoreBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$4;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$5;-><init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V

    const-wide/16 v1, 0x50

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 163
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->listExposure()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->startFloatWindowTimer()V

    :goto_0
    return-void
.end method
