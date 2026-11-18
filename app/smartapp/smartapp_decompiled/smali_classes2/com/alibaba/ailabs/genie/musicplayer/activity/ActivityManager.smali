.class public Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static sInstance:Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;


# instance fields
.field private mMainActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mTMEMainActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->sInstance:Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->map:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;
    .locals 1

    .line 59
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->sInstance:Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAllActivity()V
    .locals 5

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllActivity-mapSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->map:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearAllActivity-activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    instance-of v3, v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEMainActivity;

    if-nez v3, :cond_0

    .line 33
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishMainActivity()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->mMainActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public finishPlayListActivity()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->map:Ljava/util/Map;

    const-string v1, "PlayListActivity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishTMEMainActivity()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getTMEMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->mTMEMainActivityWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->mMainActivityWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTMEMainActivity()Landroid/app/Activity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->mTMEMainActivityWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setMainActivity(Landroid/app/Activity;)V
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->mMainActivityWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTMEMainActivity(Landroid/app/Activity;)V
    .locals 1

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->mTMEMainActivityWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
