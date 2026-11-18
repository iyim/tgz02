.class public Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CleanerMainHeaderViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanerMainHeaderViewHolder"


# instance fields
.field private clearRunnable:Ljava/lang/Runnable;

.field private firstCanVisit:Z

.field private mCacheTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mCanCleanTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mCleanMemInfo:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mCleanMemInfoSd:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mFreeSizeType:Landroid/widget/TextView;

.field private mOnkeyClean:Landroid/widget/TextView;

.field private mOtherTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mTextPercentUse:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

.field private mWaveImage:Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->firstCanVisit:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->clearRunnable:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CleanerMainHeaderViewHolder isRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleanerMainHeaderViewHolder"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->initView(Landroid/view/View;)V

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mOnkeyClean:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mTextPercentUse:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCleanMemInfo:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mFreeSizeType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCleanMemInfoSd:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mWaveImage:Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCacheTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mOtherTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCanCleanTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->clearRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->clearRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private handleClick()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mOnkeyClean:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 68
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->icon_wave_per:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mWaveImage:Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mWaveImage:Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setProgress(I)V

    .line 70
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_use_per:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mTextPercentUse:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    .line 71
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_can_clear_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCanCleanTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    .line 72
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_total_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCleanMemInfo:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    .line 73
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_free_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mFreeSizeType:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_clean_total_info_sd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCleanMemInfoSd:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    .line 75
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_del_app_in_clean:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mOnkeyClean:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_can_cache_total:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCacheTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    .line 78
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_can_other_total:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mOtherTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    return-void
.end method


# virtual methods
.method public bindData()V
    .locals 11

    .line 167
    iget-boolean v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->firstCanVisit:Z

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->getSdCardFreePercent()J

    move-result-wide v0

    long-to-int v1, v0

    .line 172
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->getStaFsFree()J

    move-result-wide v2

    .line 173
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->getDataCountSizeForUser()J

    move-result-wide v4

    .line 174
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/CacheUtil;->getAllCacheSizeStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 176
    invoke-direct {p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->handleClick()V

    .line 178
    iget-object v6, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mTextPercentUse:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    rsub-int/lit8 v7, v1, 0x64

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runWithAnimation(FF)V

    .line 179
    iget-object v6, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mWaveImage:Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    invoke-virtual {v6, v1}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->setProgress(I)V

    .line 180
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mWaveImage:Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    new-instance v6, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$2;

    invoke-direct {v6, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$2;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v1, v6, v9, v10}, Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCanCleanTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    const-string v6, "\u6b63\u5728\u8ba1\u7b97..."

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mOtherTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x400

    mul-long v9, v2, v6

    mul-long v9, v9, v6

    .line 190
    invoke-static {v9, v10}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil;->formatFileSize(J)Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;

    move-result-object v1

    .line 191
    iget-object v6, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCleanMemInfo:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->getNum()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runWithAnimation(FF)V

    .line 192
    iget-object v6, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mFreeSizeType:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/utils/FileSizeUtil$FileSize;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCleanMemInfoSd:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    long-to-double v6, v4

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v9

    double-to-float v6, v6

    invoke-virtual {v1, v8, v6}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runWithAnimation(FF)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCacheTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    invoke-virtual {v1, v8, v0}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runWithAnimation(FF)V

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreeSize"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdTotal"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CacheTotal"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "canCleanData"

    .line 200
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportCleanEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 202
    new-instance v1, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;F)V

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize isRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleanerMainHeaderViewHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 231
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getWaveImage()Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mWaveImage:Lcom/alibaba/ailabs/base/view/CircularFillableLoaders;

    return-object v0
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x3
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "CleanerMainHeaderViewHolder"

    .line 84
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CleanerMainActivity.SlidingRemoveFirst"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->firstCanVisit:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release isRegistered:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleanerMainHeaderViewHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->mCanCleanTotal:Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->clearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->clearRunnable:Ljava/lang/Runnable;

    .line 241
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->removeClear()V

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
