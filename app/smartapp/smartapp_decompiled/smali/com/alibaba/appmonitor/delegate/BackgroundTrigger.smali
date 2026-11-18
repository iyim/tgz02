.class public Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;
    }
.end annotation


# static fields
.field private static callbacks:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static init:Z = false

.field private static mFuture:Ljava/util/concurrent/ScheduledFuture;


# instance fields
.field private application:Landroid/app/Application;

.field private isAppOnForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->callbacks:Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->application:Landroid/app/Application;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->isAppOnForeground:Z

    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 28
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->init:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "init BackgroundTrigger"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;

    invoke-direct {v0, p0}, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;-><init>(Landroid/app/Application;)V

    .line 32
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object p0

    sget-object v1, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/alibaba/analytics/utils/TaskExecutor;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 p0, 0x1

    .line 33
    sput-boolean p0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->init:Z

    :cond_0
    return-void
.end method

.method public static registerCallback(Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->callbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/AppInfoUtil;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    .line 51
    iget-boolean v1, p0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->isAppOnForeground:Z

    if-eq v1, v0, :cond_4

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->isAppOnForeground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->updateSamplingSeed()V

    .line 55
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 56
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getForegroundStatisticsInterval()I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 60
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getBackgroundStatisticsInterval()I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    :cond_1
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->triggerUpload()V

    .line 64
    :cond_2
    :goto_2
    sget-object v2, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz v0, :cond_3

    .line 66
    sget-object v2, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;

    invoke-interface {v2}, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;->onForeground()V

    goto :goto_3

    .line 68
    :cond_3
    sget-object v2, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;

    invoke-interface {v2}, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;->onBackground()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
