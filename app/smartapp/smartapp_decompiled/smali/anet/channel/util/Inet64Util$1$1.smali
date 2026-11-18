.class Lanet/channel/util/Inet64Util$1$1;
.super Ljava/lang/Object;
.source "Inet64Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/util/Inet64Util$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/util/Inet64Util$1;


# direct methods
.method constructor <init>(Lanet/channel/util/Inet64Util$1;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 232
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/Inet64Util;->access$000(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v1, v1, Lanet/channel/util/Inet64Util$1;->val$finalNetworkId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "awcn.Inet64Util"

    const-string/jumbo v1, "startIpStackDetect double check"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 236
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-static {}, Lanet/channel/util/Inet64Util;->access$100()I

    move-result v0

    .line 238
    iget-object v1, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v1, v1, Lanet/channel/util/Inet64Util$1;->val$stat:Lanet/channel/statist/NetTypeStat;

    iget v1, v1, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    if-eq v1, v0, :cond_1

    .line 239
    sget-object v1, Lanet/channel/util/Inet64Util;->ipStackMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v2, v2, Lanet/channel/util/Inet64Util$1;->val$finalNetworkId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v1, v1, Lanet/channel/util/Inet64Util$1;->val$stat:Lanet/channel/statist/NetTypeStat;

    iget-object v2, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v2, v2, Lanet/channel/util/Inet64Util$1;->val$stat:Lanet/channel/statist/NetTypeStat;

    iget v2, v2, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    iput v2, v1, Lanet/channel/statist/NetTypeStat;->lastIpStackType:I

    .line 241
    iget-object v1, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v1, v1, Lanet/channel/util/Inet64Util$1;->val$stat:Lanet/channel/statist/NetTypeStat;

    iput v0, v1, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 245
    :cond_2
    invoke-static {}, Lanet/channel/util/Inet64Util;->access$200()Lanet/channel/util/Nat64Prefix;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 247
    sget-object v1, Lanet/channel/util/Inet64Util;->nat64PrefixMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v2, v2, Lanet/channel/util/Inet64Util$1;->val$finalNetworkId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v1, v1, Lanet/channel/util/Inet64Util$1;->val$stat:Lanet/channel/statist/NetTypeStat;

    invoke-virtual {v0}, Lanet/channel/util/Nat64Prefix;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanet/channel/statist/NetTypeStat;->nat64Prefix:Ljava/lang/String;

    .line 251
    :cond_3
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/util/Inet64Util$1$1;->this$0:Lanet/channel/util/Inet64Util$1;

    iget-object v1, v1, Lanet/channel/util/Inet64Util$1;->val$stat:Lanet/channel/statist/NetTypeStat;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
