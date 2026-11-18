.class public Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;
.super Ljava/lang/Object;
.source "BindingXPropertyInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;


# instance fields
.field private final mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sInstance:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sUIHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 48
    sget-object v0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sInstance:Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;

    return-object v0
.end method


# virtual methods
.method public addInterceptor(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;)V
    .locals 1
    .param p1    # Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public clearCallbacks()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getInterceptors()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs performIntercept(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 74
    iget-object v0, v8, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v9, v8, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->sUIHandler:Landroid/os/Handler;

    new-instance v10, Lcom/alibaba/android/bindingx/core/WeakRunnable;

    new-instance v11, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$1;-><init>(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V

    invoke-direct {v10, v11}, Lcom/alibaba/android/bindingx/core/WeakRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeInterceptor(Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;)Z
    .locals 1
    .param p1    # Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor$IPropertyUpdateInterceptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/BindingXPropertyInterceptor;->mPropertyInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
