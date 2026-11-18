.class public Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;


# static fields
.field public static DELAY_SHOW:I = 0x1f40

.field public static final STATE_BUTTON:Ljava/lang/String; = "button"

.field public static final STATE_LIST:Ljava/lang/String; = "list"

.field public static final STATE_NONE:Ljava/lang/String; = "none"

.field private static final TAG:Ljava/lang/String; = "TaskService-Video-FloatWindowManager"

.field private static instance:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager; = null

.field private static final isTest:Z = false


# instance fields
.field handler:Landroid/os/Handler;

.field private isPlayer:Z

.field isRemoving:Z

.field private isShow:Z

.field private mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPlayUri:Ljava/lang/String;

.field private mTraceIdString:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;

.field private recommendState:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I

.field private final videoRecommendBeanArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "button"

    .line 62
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isShow:Z

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    .line 194
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isRemoving:Z

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Landroid/view/WindowManager;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isPlayer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isShow:Z

    return p0
.end method

.method private createFloatView()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/TaskService;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-static {}, Lcom/alibaba/ailabs/genie/task/TaskService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/TaskService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 102
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenWidth:I

    .line 103
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenHeight:I

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;
    .locals 2

    .line 78
    sget-object v0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->instance:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->instance:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->instance:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->instance:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    return-object v0
.end method

.method private getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x7d2

    .line 288
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x28

    .line 289
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x1

    .line 292
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 293
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/TaskService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public cancelFloatWindows()V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFloatWindows ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Video-FloatWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    const-string v1, "button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->hideAllView()V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    const-string v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getRecommendList(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TaskService-Video-FloatWindowManager"

    const-string v1, "getRecommendList"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mPlayUri:Ljava/lang/String;

    .line 227
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getRecommendType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    .line 232
    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;->getRecommend(Ljava/lang/String;Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;)V

    return-void
.end method

.method public getRecommendType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "pkg"

    .line 243
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommandstate"

    .line 244
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "button"

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " recommendState==>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public isRemoving()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isRemoving:Z

    return v0
.end method

.method public onMenuShow(Z)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMenuShow: show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " recommendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Video-FloatWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isShow:Z

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->showFloatWindows()V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->cancelFloatWindows()V

    :goto_0
    return-void
.end method

.method public onPlayChange(Z)V
    .locals 1

    .line 129
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isPlayer:Z

    .line 130
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isPlayer:Z

    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlayChange="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isPlayer:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskService-Video-FloatWindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 256
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mTraceIdString:Ljava/lang/String;

    .line 257
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 259
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onVideoResult size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskService-Video-FloatWindowManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p1, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;-><init>(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)V

    sget p2, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->DELAY_SHOW:I

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public removeAllFloatWindow()V
    .locals 2

    const-string v0, "TaskService-Video-FloatWindowManager"

    const-string v1, "start removeAllFloatWindow"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isRemoving:Z

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;-><init>(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 215
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mTraceIdString:Ljava/lang/String;

    return-void
.end method

.method public setRecommendState(Ljava/lang/String;)V
    .locals 1

    .line 274
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->updateViewSize()V

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRecommendState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskService-Video-FloatWindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showFloatWindows()V
    .locals 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFloatWindows: recommendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Video-FloatWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "showFloatWindows has no data!"

    .line 147
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    const-string v2, "list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "showList"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->createFloatView()V

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->updateViewSize()V

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->showRecommendArea()V

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mTraceIdString:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mPlayUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setUpdate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    const-string v2, "button"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "showMoreBtn"

    .line 158
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->createFloatView()V

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->updateViewSize()V

    .line 161
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isShow:Z

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->showMoreBtn(Z)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->videoRecommendBeanArrayList:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mTraceIdString:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mPlayUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setUpdate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "showNothing"

    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "none"

    .line 167
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V

    :goto_0
    return-void
.end method

.method public updateViewSize()V
    .locals 6

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->recommendState:Ljava/lang/String;

    const-string v1, "button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 302
    iget v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenHeight:I

    const/16 v2, 0x1e0

    const/16 v3, 0x64

    const/16 v4, 0xdc

    if-ne v0, v2, :cond_1

    .line 303
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 304
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 305
    iget v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 306
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/lit8 v1, v1, -0x3c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenWidth:I

    const/16 v5, 0x400

    if-ne v2, v5, :cond_2

    const/16 v4, 0xb4

    :cond_2
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 310
    iget v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenWidth:I

    if-ne v0, v5, :cond_3

    const/16 v1, 0x1e

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenWidth:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 312
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 317
    iget v2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->screenHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 318
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 319
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 323
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mFloatWindowView:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method
