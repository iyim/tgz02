.class Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;
.super Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;
.source "NormalActivityLifecycleCallbacks.java"


# instance fields
.field private metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

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
.method constructor <init>(Lcom/alibaba/ailabs/genie/density/GenieDensity;II)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    .line 22
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    .line 23
    new-instance p1, Lcom/alibaba/ailabs/genie/density/MetaBean;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/density/MetaBean;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

    .line 24
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/density/MetaBean;->setActivityName(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/density/MetaBean;->setAutoSize(I)V

    .line 26
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/density/MetaBean;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->reset()V

    .line 33
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication(Landroid/app/Activity;)Z

    .line 34
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateWithMetaBean(Landroid/util/DisplayMetrics;Lcom/alibaba/ailabs/genie/density/MetaBean;)V

    .line 36
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;

    if-nez p2, :cond_0

    .line 38
    new-instance p2, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;-><init>(Landroid/app/Activity;)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;->install(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/density/GenieLayoutFactory;)V

    const-string p1, "NormalActivityLifecycleCallbacks onActivityCreated()"

    .line 44
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->report(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->ourGenieFactoryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/density/SimpleActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->reset()V

    .line 53
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication(Landroid/app/Activity;)Z

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->ourGenieDensity:Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;->metaBean:Lcom/alibaba/ailabs/genie/density/MetaBean;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateWithMetaBean(Landroid/util/DisplayMetrics;Lcom/alibaba/ailabs/genie/density/MetaBean;)V

    const-string p1, "NormalActivityLifecycleCallbacks onActivityResumed()"

    .line 56
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->report(Ljava/lang/String;)V

    return-void
.end method
