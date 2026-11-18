.class public Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;
.super Ljava/lang/Object;
.source "BackGroundTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager$InstanceHolder;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GenieUiBgTask"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager$InstanceHolder;->sInstance:Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/BackGroundTaskManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
