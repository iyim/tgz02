.class public Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;
.super Ljava/lang/Object;
.source "LoadingWindowManager.java"


# static fields
.field private static final MSG_TIME_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LoadingWindowManager"

.field private static volatile mInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;


# instance fields
.field private volatile isTimeOut:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

.field private wManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->isTimeOut:Z

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->isTimeOut:Z

    return p1
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;
    .locals 2

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    return-object v0
.end method


# virtual methods
.method public dismissLoadingView()V
    .locals 3

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->isTimeOut:Z

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "LoadingWindowManager"

    const-string v1, "dismissLoadingView"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->wManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    .line 111
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->wManager:Landroid/view/WindowManager;

    :cond_0
    const-string v1, "really removeLoadingWindow"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isTimeOut()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->isTimeOut:Z

    return v0
.end method

.method public setProgress(I)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->startPro(I)V

    :cond_0
    return-void
.end method

.method public showLoadingWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "LoadingWindowManager"

    const-string v1, "showLoadingWindow"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->isTimeOut:Z

    .line 59
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->wManager:Landroid/view/WindowManager;

    .line 62
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->wManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "last window removeLoadingWindow"

    .line 64
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v3, 0x508

    .line 73
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 76
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    const/16 v3, 0x7f6

    .line 77
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_1
    const/16 v3, 0x7d3

    .line 79
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_1
    const/4 v3, -0x3

    .line 82
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 85
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 91
    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    .line 92
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->wManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->mLoadingView:Lcom/alibaba/ailabs/genie/genieboot/view/LauncherLoadingView;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
