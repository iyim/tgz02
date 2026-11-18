.class Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess;
.super Ljava/lang/Object;
.source "NativeBlurProcess.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/blur/BlurProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess$NativeTask;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 12

    .line 21
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 23
    sget v0, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->EXECUTOR_THREADS:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v0, :cond_0

    .line 28
    new-instance v10, Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess$NativeTask;

    float-to-int v11, p2

    const/4 v7, 0x1

    move-object v2, v10

    move-object v3, p1

    move v4, v11

    move v5, v0

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v10, Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess$NativeTask;

    const/4 v7, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/second/blur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    sget-object p2, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    sget-object p2, Lcom/alibaba/ailabs/genie/second/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1
.end method
