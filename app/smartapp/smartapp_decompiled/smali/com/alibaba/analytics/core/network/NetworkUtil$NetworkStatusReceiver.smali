.class Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/network/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStatusReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/analytics/core/network/NetworkUtil$1;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/alibaba/analytics/core/network/NetworkUtil$NetworkStatusReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 296
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/analytics/core/network/NetworkUtil;->access$200()Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;->setContext(Landroid/content/Context;)Lcom/alibaba/analytics/core/network/NetworkUtil$NetWorkStatusChecker;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method
