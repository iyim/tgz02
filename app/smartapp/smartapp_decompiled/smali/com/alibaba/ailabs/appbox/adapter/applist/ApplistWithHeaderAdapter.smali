.class public Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ApplistWithHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;,
        Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTALL_STATUS_FAILED:I = 0x3

.field public static final INSTALL_STATUS_LOADING:I = 0x1

.field public static final INSTALL_STATUS_NONE:I = 0x0

.field public static final INSTALL_STATUS_SUCCESS:I = 0x2

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "ApplistWithHeaderAdapter-l"

.field public static final TYPE_ITEM:I = 0x1


# instance fields
.field datas:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation
.end field

.field private faildMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isCanEdit:Z

.field private volatile isPageLoad:Z

.field private volatile isShowLoading:Z

.field private lastClickTime:J

.field private lasttime:J

.field private layoutId:I

.field private mContext:Landroid/content/Context;

.field private mInstallStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycleView:Landroid/support/v7/widget/RecyclerView;

.field private operatorListener:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;

.field private pageSize:I

.field preAndError:Lcom/bumptech/glide/request/RequestOptions;

.field rotateAnim:Landroid/view/animation/Animation;

.field private subItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 118
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x12

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isPageLoad:Z

    .line 85
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isShowLoading:Z

    .line 86
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isCanEdit:Z

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lastClickTime:J

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->subItems:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    .line 209
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lasttime:J

    .line 271
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    .line 272
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;-><init>(I)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->preAndError:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x12

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isPageLoad:Z

    .line 85
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isShowLoading:Z

    .line 86
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isCanEdit:Z

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lastClickTime:J

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->subItems:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    .line 209
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lasttime:J

    .line 271
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    .line 272
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;-><init>(I)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->preAndError:Lcom/bumptech/glide/request/RequestOptions;

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mRecycleView:Landroid/support/v7/widget/RecyclerView;

    .line 103
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mContext:Landroid/content/Context;

    .line 104
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mInstallStatusMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;I)V
    .locals 3

    .line 107
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x12

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isPageLoad:Z

    .line 85
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isShowLoading:Z

    .line 86
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isCanEdit:Z

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lastClickTime:J

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->subItems:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x0

    .line 209
    iput-wide v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lasttime:J

    .line 271
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$drawable;->iv_default_icon:I

    .line 272
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;-><init>(I)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->preAndError:Lcom/bumptech/glide/request/RequestOptions;

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mRecycleView:Landroid/support/v7/widget/RecyclerView;

    .line 109
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mContext:Landroid/content/Context;

    .line 110
    iput p3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->layoutId:I

    .line 111
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mInstallStatusMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->operatorListener:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->deleteApplet(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isPageLoad:Z

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->subItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isCanEdit:Z

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lastClickTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;J)J
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->lastClickTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mInstallStatusMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private addFaildToMap(Ljava/lang/String;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->faildMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->faildMap:Ljava/util/HashMap;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->faildMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->faildMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->faildMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private bindDataToView(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;I)V
    .locals 2

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplistWithHeaderAdapter --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindDataToView realPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistWithHeaderAdapter-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    if-nez p2, :cond_1

    return-void

    .line 828
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->onBindData(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    return-void
.end method

.method private deleteApplet(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 408
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->removeItem(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;I)V

    .line 429
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$4;

    invoke-direct {v8, p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$4;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    const-string v3, "app_list_"

    .line 429
    invoke-static/range {v1 .. v8}, Lcom/alibaba/ailabs/base/util/UnCollectUtil;->unCollectAppletAndUninstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 449
    new-instance v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$5;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doOnceWhenLastDisplayed()V
    .locals 2

    const-string v0, "ApplistWithHeaderAdapter-l"

    const-string v1, "doOnceWhenLastDisplayed"

    .line 343
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isShowLoading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isShowLoading:Z

    .line 349
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->operatorListener:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;->finishLoadingView()V

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isPageLoad:Z

    if-eqz v0, :cond_1

    .line 355
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isPageLoad:Z

    .line 356
    new-instance v0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$3;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private getCloudTestBean()Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;
    .locals 2

    .line 846
    new-instance v0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;-><init>()V

    const-string v1, "APP\u53e3\u888b\u6545\u4e8bHD"

    .line 847
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setAppName(Ljava/lang/String;)V

    const-string v1, "https://ailabs.alibabausercontent.com/images/e35257bc79b3631fa4a2970e65cf6089/1617176765292.png"

    .line 848
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setIcon(Ljava/lang/String;)V

    const-string v1, "com.appshare.android.ilisten.hd"

    .line 849
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setPackageName(Ljava/lang/String;)V

    const-string v1, "genie://com.alibaba.genie.proxy/launch?pkg=com.appshare.android.ilisten.hd&aligenieCloudApp=screenOrientation%3Dhorizontal%26appId%3D2021033126015%26appname%3DAPP%E5%8F%A3%E8%A2%8B%E6%95%85%E4%BA%8BHD%26pkgname%3Dcom.appshare.android.ilisten.hd%26%7B%22bgs%22%3D%22https%3A%2F%2Fimg.alicdn.com%2Fimgextra%2Fi4%2FO1CN018ggDj520Nqze2l2UR_%21%216000000006838-0-tps-1080-800.jpg%40%40%40https%3A%2F%2Fimg.alicdn.com%2Ftfs%2FTB1ylGVllBh1e4jSZFhXXcC9VXa-1080-800.jpg%40%40%40https%3A%2F%2Fimg.alicdn.com%2Ftfs%2FTB1wlGVllBh1e4jSZFhXXcC9VXa-1080-800.jpg%22%7D"

    .line 850
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setActionValue(Ljava/lang/String;)V

    const-string v1, "apk"

    .line 851
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setBusinessType(Ljava/lang/String;)V

    const-string v1, "0.0.5"

    .line 852
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setAppVersionName(Ljava/lang/String;)V

    const-string v1, "https://ar-platform.oss-cn-shanghai.aliyuncs.com/images/e35257bc79b3631fa4a2970e65cf6089/1617176842718/com.appshare.android.ilisten.hd.apk"

    .line 853
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setDownloadUrl(Ljava/lang/String;)V

    const/16 v1, 0xce

    .line 854
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->setAppVersionCode(I)V

    return-object v0
.end method

.method private isFaildTomuch(Ljava/lang/String;)Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->faildMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->faildMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private removeItem(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;I)V
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeItem p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cbean\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApplistWithHeaderAdapter-l"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyItemRemoved(I)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0cdatas\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",datas.size()-p-1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyItemRangeChanged(II)V

    .line 483
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->operatorListener:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;

    if-eqz p2, :cond_0

    .line 484
    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;->removeData(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCanEdit()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isCanEdit:Z

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistWithHeaderAdapter-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    check-cast p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->bindDataToView(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;I)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 290
    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;->iv_square_del_app:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$2;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;ILcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->doOnceWhenLastDisplayed()V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 265
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->layoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 266
    new-instance p2, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ApplistViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 194
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 195
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 197
    nop

    nop

    .line 198
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isCanEdit:Z

    if-eqz v0, :cond_2

    .line 201
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->startShake(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public refreshData(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ApplistWithHeaderAdapter-l"

    const-string/jumbo v1, "refreshData"

    .line 227
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 232
    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isShowLoading:Z

    if-eqz p2, :cond_1

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    .line 234
    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isPageLoad:Z

    .line 235
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->subItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 236
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->subItems:Ljava/util/List;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iget v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 239
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 245
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->subItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 247
    :cond_2
    new-instance p1, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$1;-><init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public refreshItemInstall(Ljava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 142
    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    return-void

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshItemInstall downloadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",index:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplistWithHeaderAdapter-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public refreshItemInstallStatus(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 124
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    .line 126
    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->mInstallStatusMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refreshItemInstall downloadUrl:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",index:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplistWithHeaderAdapter-l"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public refreshOnlySetData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ApplistWithHeaderAdapter-l"

    const-string/jumbo v1, "refreshOnlySetData"

    .line 212
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 214
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public removeItem(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplistWithHeaderAdapter-l"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    .line 461
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyItemRemoved(I)V

    .line 466
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->datas:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public setCanEdit(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCanEdit canEdit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistWithHeaderAdapter-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->isCanEdit:Z

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshData(Ljava/util/List;Z)V

    return-void
.end method

.method public setOperatorListener(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->operatorListener:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$ItemOperatorListener;

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->pageSize:I

    return-void
.end method

.method public startShake(Landroid/view/View;)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x40000000    # -2.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    .line 381
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    .line 383
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 384
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    const v1, 0x1869f

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->rotateAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method
