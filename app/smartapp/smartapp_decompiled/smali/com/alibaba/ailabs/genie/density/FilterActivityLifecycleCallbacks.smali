.class Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;
.super Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;
.source "FilterActivityLifecycleCallbacks.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "_Filter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/density/MetaBean;",
            ">;"
        }
    .end annotation
.end field

.field private ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

.field private ourGenieFactoryMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/density/GenieDensity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/ailabs/genie/density/GenieDensity;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/density/MetaBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    .line 34
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->mTargetList:Ljava/util/List;

    return-void
.end method

.method private static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 143
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 146
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v1, :cond_1

    .line 157
    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v2

    :catch_0
    return-object v0
.end method

.method private handleTarget(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/density/MetaBean;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->mTargetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    .line 112
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/density/MetaBean;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isMainProcess()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private requestLayout(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 127
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 130
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLayout() called with: target = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_Filter"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated() called with: activity = ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]. name = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "_Filter"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->handleTarget(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/density/MetaBean;

    move-result-object p2

    if-nez p2, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->isMainProcess()Z

    move-result p2

    if-nez p2, :cond_0

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    .line 52
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revert(Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->reset()V

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateWithMetaBean(Landroid/util/DisplayMetrics;Lcom/alibaba/ailabs/genie/density/MetaBean;)V

    .line 62
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;

    if-nez p2, :cond_2

    .line 64
    new-instance p2, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;-><init>(Landroid/app/Activity;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;->install(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;)V

    const-string p1, "FilterActivityLifecycleCallbacks onActivityCreated()"

    .line 70
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->report(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_Filter"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed() called with: activity = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]. name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_Filter"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/density/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->handleTarget(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/density/MetaBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revertApplication()V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->revert(Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->reset()V

    .line 91
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateWithMetaBean(Landroid/util/DisplayMetrics;Lcom/alibaba/ailabs/genie/density/MetaBean;)V

    const-string p1, "FilterActivityLifecycleCallbacks onActivityResumed()"

    .line 93
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->report(Ljava/lang/String;)V

    return-void
.end method
