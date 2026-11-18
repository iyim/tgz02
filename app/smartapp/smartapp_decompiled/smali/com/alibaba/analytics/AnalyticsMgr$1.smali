.class final Lcom/alibaba/analytics/AnalyticsMgr$1;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/AnalyticsMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 p1, 0x2

    .line 271
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "this"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$000()Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "onServiceConnected"

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Service:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sget-object v2, Lcom/alibaba/analytics/AnalyticsMgr;->mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    if-ne v0, v2, :cond_0

    .line 273
    invoke-static {p2}, Lcom/alibaba/analytics/IAnalytics$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/analytics/IAnalytics;

    move-result-object p2

    sput-object p2, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    .line 274
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "iAnalytics"

    aput-object p2, p1, v1

    sget-object p2, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    aput-object p2, p1, v3

    const-string p2, "onServiceConnected"

    invoke-static {p2, p1}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 277
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$100()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 p1, 0x1

    .line 283
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[onServiceDisconnected]"

    aput-object v2, v0, v1

    const-string v1, "AnalyticsMgr"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$100()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-static {p1}, Lcom/alibaba/analytics/AnalyticsMgr;->access$202(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 286
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
