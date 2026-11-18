.class public Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;
.super Ljava/lang/Object;
.source "AutoOpenMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoOpenMgr-l"

.field private static final ourInstance:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;


# instance fields
.field handler:Landroid/os/Handler;

.field mAutoOpenTask:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    invoke-direct {v0}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->ourInstance:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;
    .locals 1

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->ourInstance:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    return-object v0
.end method


# virtual methods
.method public startOpenTask(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V
    .locals 3

    const-string v0, "AutoOpenMgr-l"

    const-string v1, "startOpenTask ..."

    .line 41
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->handler:Landroid/os/Handler;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->mAutoOpenTask:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;-><init>(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->mAutoOpenTask:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;->setBean(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->mAutoOpenTask:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "AutoOpenMgr@startOpenTask"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public stopOpenTask(Ljava/lang/String;)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopOpenTask ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoOpenMgr-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->mAutoOpenTask:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->mAutoOpenTask:Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr$AutoOpenTask;

    .line 63
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "AutoOpenMgr@stopOpenTask"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
