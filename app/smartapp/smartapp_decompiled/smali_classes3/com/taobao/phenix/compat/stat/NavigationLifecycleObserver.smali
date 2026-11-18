.class public Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;
.super Ljava/lang/Object;
.source "NavigationLifecycleObserver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;


# static fields
.field private static final sNavigationLifecycleObserver:Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;


# instance fields
.field private mCurrentUrl:Ljava/lang/String;

.field private mCurrentWindowName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;

    invoke-direct {v0}, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;-><init>()V

    sput-object v0, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->sNavigationLifecycleObserver:Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;
    .locals 1

    .line 15
    sget-object v0, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->sNavigationLifecycleObserver:Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;

    return-object v0
.end method


# virtual methods
.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWindowName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->mCurrentWindowName:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->mCurrentWindowName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/compat/stat/NavigationLifecycleObserver;->mCurrentUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
