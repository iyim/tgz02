.class public Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;
.super Landroid/app/Application;
.source "GenieNavBarApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mActivityCreatedArray:Landroid/util/SparseBooleanArray;

.field private mActivityStartedArray:Landroid/util/SparseBooleanArray;

.field private mConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityCreatedArray:Landroid/util/SparseBooleanArray;

    .line 23
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityStartedArray:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private getContentView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v0, 0x1020002

    .line 122
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected config()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 44
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mConfigList:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityCreatedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0xc000000

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v2, -0x80000000

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mConfigList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 62
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 63
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;-><init>(Landroid/content/Context;)V

    .line 64
    nop

    nop

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBar;->setHostActivity(Landroid/app/Activity;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityCreatedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityCreatedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityStartedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityStartedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityCreatedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/widget/R$dimen;->genie_nav_bar_h:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 82
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mActivityStartedArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreate()V
    .locals 2

    .line 28
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 32
    nop

    nop

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->config()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/GenieNavBarApplication;->mConfigList:Ljava/util/List;

    return-void
.end method
