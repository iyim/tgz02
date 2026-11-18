.class public final Lcom/alibaba/ailabs/genie/density/GenieDensityInstaller;
.super Ljava/lang/Object;
.source "GenieDensityInstaller.java"


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieDensityInstaller"

.field private static ourInstalled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static install(Landroid/app/Application;)V
    .locals 4
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    sget-boolean v0, Lcom/alibaba/ailabs/genie/density/GenieDensityInstaller;->ourInstalled:Z

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->start()V

    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lcom/alibaba/ailabs/genie/density/GenieDensityInstaller;->ourInstalled:Z

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    .line 52
    new-instance v1, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;-><init>(Lcom/alibaba/ailabs/genie/density/GenieDensity;II)V

    .line 54
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const-string p0, "install()"

    .line 56
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->report(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GenieDensityInstaller has already been installed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static install(Landroid/app/Application;II)V
    .locals 2
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    sget-boolean v0, Lcom/alibaba/ailabs/genie/density/GenieDensityInstaller;->ourInstalled:Z

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->start()V

    const/4 v0, 0x1

    .line 71
    sput-boolean v0, Lcom/alibaba/ailabs/genie/density/GenieDensityInstaller;->ourInstalled:Z

    .line 73
    new-instance v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;-><init>()V

    .line 74
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->init(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    .line 77
    new-instance v1, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;

    invoke-direct {v1, v0, p1, p2}, Lcom/alibaba/ailabs/genie/density/NormalActivityLifecycleCallbacks;-><init>(Lcom/alibaba/ailabs/genie/density/GenieDensity;II)V

    .line 79
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const-string p0, "install()"

    .line 81
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->report(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GenieDensityInstaller has already been installed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static installIfNeed(Landroid/app/Application;Ljava/util/List;)V
    .locals 3
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/density/MetaBean;",
            ">;)V"
        }
    .end annotation

    .line 93
    sget-boolean v0, Lcom/alibaba/ailabs/genie/density/GenieDensityInstaller;->ourInstalled:Z

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->start()V

    .line 99
    new-instance v0, Lcom/alibaba/ailabs/genie/density/GenieDensity;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;-><init>()V

    .line 100
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->init(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/genie/density/GenieDensity;->updateApplication()Z

    .line 103
    new-instance v1, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;

    .line 104
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/ailabs/genie/density/FilterActivityLifecycleCallbacks;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/density/GenieDensity;Ljava/util/List;)V

    .line 106
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const-string p0, "installIfNeed()"

    .line 108
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/density/log/GenieDensityTimer;->report(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GenieDensityInstaller has already been installed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
