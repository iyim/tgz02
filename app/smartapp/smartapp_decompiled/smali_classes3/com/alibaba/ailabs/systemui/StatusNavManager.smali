.class public Lcom/alibaba/ailabs/systemui/StatusNavManager;
.super Ljava/lang/Object;
.source "StatusNavManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusNavManager"

.field private static instance:Lcom/alibaba/ailabs/systemui/StatusNavManager;


# instance fields
.field private NO_SYSTEM_BAE:Z

.field private childMode:Z

.field private currentActRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/systemui/INavStatusAble;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBattery:I

.field private mBlueState:I

.field private mCurrentVolume:I

.field private mExpend:Z

.field private mEyeMode:Z

.field private mHasRegister:Z

.field private mIsCharging:Z

.field private mMoonMode:Z

.field private mTime:Ljava/lang/String;

.field private userSystemIcons:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->userSystemIcons:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->NO_SYSTEM_BAE:Z

    return-void
.end method

.method private checkResumeInvoke([Ljava/lang/StackTraceElement;)V
    .locals 5

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 111
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onResume"

    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "onNormalResume"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 118
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u8bf7\u5728 onResume \u65b9\u6cd5\u4e2d\u8c03\u7528"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized getCurrentPage()Lcom/alibaba/ailabs/systemui/INavStatusAble;
    .locals 1

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->currentActRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 230
    monitor-exit p0

    return-object v0

    .line 232
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->currentActRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/systemui/INavStatusAble;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getDebug()Z
    .locals 1

    .line 315
    sget-boolean v0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->DEBUG:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/systemui/StatusNavManager;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusNavManager;->instance:Lcom/alibaba/ailabs/systemui/StatusNavManager;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Lcom/alibaba/ailabs/systemui/StatusNavManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/systemui/StatusNavManager;->instance:Lcom/alibaba/ailabs/systemui/StatusNavManager;

    .line 176
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusNavManager;->instance:Lcom/alibaba/ailabs/systemui/StatusNavManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initView(Lcom/alibaba/ailabs/systemui/INavStatusAble;Landroid/view/ViewGroup;)V
    .locals 3

    .line 97
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    :goto_0
    new-instance v1, Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->childMode:Z

    invoke-direct {v1, v0, v2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;-><init>(Landroid/content/Context;Z)V

    .line 103
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->showStyle(Lcom/alibaba/ailabs/systemui/INavStatusAble;)V

    return-void
.end method

.method private onlyBack()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->onlyBack()V

    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 311
    sput-boolean p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->DEBUG:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTranslucentStatus(Landroid/app/Activity;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 p1, -0x80000000

    .line 363
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 364
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private showStyle(Lcom/alibaba/ailabs/systemui/INavStatusAble;)V
    .locals 2

    .line 124
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getStyle()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 154
    sget-boolean v0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no style for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getStyle()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusNavManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->onlyBack()V

    .line 148
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getNavTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 150
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->setTile(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getCheckedItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->showNav(I)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->hideSystemIcon()V

    .line 134
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getNavTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 136
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->setTile(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->noEscape()V

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->onlyEscape()V

    .line 141
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getNavTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 143
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->setTile(Ljava/lang/String;)V

    .line 158
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->userSystemIcons:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->NO_SYSTEM_BAE:Z

    if-nez p1, :cond_7

    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->hideSystemIcon()V

    :cond_7
    return-void
.end method

.method private warn()V
    .locals 2

    .line 190
    sget-boolean v0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusNavManager"

    const-string v1, "current page maybe not a INavStatusAble"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public attach(Lcom/alibaba/ailabs/systemui/INavStatusAble;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->currentActRef:Ljava/lang/ref/WeakReference;

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->checkResumeInvoke([Ljava/lang/StackTraceElement;)V

    .line 83
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    instance-of v1, v1, Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->showStyle(Lcom/alibaba/ailabs/systemui/INavStatusAble;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->initView(Lcom/alibaba/ailabs/systemui/INavStatusAble;Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentLightAppId()I
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getCurrentPage()Lcom/alibaba/ailabs/systemui/INavStatusAble;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 341
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getCheckedItem()I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getCurrentPage()Lcom/alibaba/ailabs/systemui/INavStatusAble;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    instance-of v1, v0, Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;

    if-eqz v1, :cond_0

    .line 51
    check-cast v0, Lcom/alibaba/ailabs/systemui/StatusNavManager$NavBarEventListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getCurrentPage()Lcom/alibaba/ailabs/systemui/INavStatusAble;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    return-object v0

    :cond_0
    const-string v0, "StatusNavManager"

    const-string v1, "current page maybe not a INavStatusAble"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method hideSystemIcon()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isExpended()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mExpend:Z

    return v0
.end method

.method noEscape()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->noEscape()V

    :cond_0
    return-void
.end method

.method onlyEscape()V
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->onlyEscape()V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->register(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public register(Landroid/content/Context;ZZ)V
    .locals 0

    .line 274
    iput-boolean p2, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->childMode:Z

    .line 275
    iput-boolean p3, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->userSystemIcons:Z

    .line 276
    iget-boolean p2, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mHasRegister:Z

    if-eqz p2, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mAppContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 280
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mHasRegister:Z

    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 0

    .line 261
    iget-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mHasRegister:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 263
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->currentActRef:Ljava/lang/ref/WeakReference;

    :cond_0
    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mHasRegister:Z

    return-void
.end method

.method setTile(Ljava/lang/String;)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->warn()V

    :goto_0
    return-void
.end method

.method public showExpended(Z)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->showExpended(Z)V

    .line 220
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mExpend:Z

    :cond_0
    return-void
.end method

.method public showNav(I)V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 204
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->setBackVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 206
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->setHomeVisibility(I)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->showAppNavItem(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateBattery(ZI)V
    .locals 2

    .line 327
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mIsCharging:Z

    .line 328
    iput p2, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mBattery:I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBattery batteryPct:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusNavManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->updateBattery(ZI)V

    :cond_0
    return-void
.end method

.method public updateBluetooth(I)V
    .locals 1

    .line 319
    iput p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mBlueState:I

    .line 320
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->updateBlueTooth(I)V

    :cond_0
    return-void
.end method

.method public updateEyeMode(Z)V
    .locals 1

    .line 376
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mEyeMode:Z

    .line 377
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mEyeMode:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->updateEyeMode(Z)V

    :cond_0
    return-void
.end method

.method public updateMode(Z)V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->childMode:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 287
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->childMode:Z

    .line 288
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getCurrentPage()Lcom/alibaba/ailabs/systemui/INavStatusAble;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 290
    invoke-interface {p1}, Lcom/alibaba/ailabs/systemui/INavStatusAble;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->initView(Lcom/alibaba/ailabs/systemui/INavStatusAble;Landroid/view/ViewGroup;)V

    .line 292
    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mBlueState:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateBluetooth(I)V

    .line 293
    iget-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mIsCharging:Z

    iget v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mBattery:I

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateBattery(ZI)V

    .line 294
    iget-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mEyeMode:Z

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateEyeMode(Z)V

    .line 295
    iget-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mMoonMode:Z

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateMoonMode(Z)V

    .line 296
    iget p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mCurrentVolume:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateVolume(I)V

    .line 297
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mTime:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateTime(Ljava/lang/String;)V

    return-void
.end method

.method public updateMoonMode(Z)V
    .locals 1

    .line 384
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mMoonMode:Z

    .line 385
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mMoonMode:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->updateMoonMode(Z)V

    :cond_0
    return-void
.end method

.method public updateTime(Ljava/lang/String;)V
    .locals 1

    .line 346
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mTime:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->updateTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateVolume(I)V
    .locals 1

    .line 368
    iput p1, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mCurrentVolume:I

    .line 369
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 371
    iget v0, p0, Lcom/alibaba/ailabs/systemui/StatusNavManager;->mCurrentVolume:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->updateVolume(I)V

    :cond_0
    return-void
.end method

.method public updateWifi(ZI)V
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getStatusBarView()Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 303
    invoke-static {p2, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p2

    .line 304
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->updateWifi(ZI)V

    :cond_0
    return-void
.end method
