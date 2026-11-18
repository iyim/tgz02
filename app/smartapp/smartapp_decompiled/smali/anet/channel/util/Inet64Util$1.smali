.class final Lanet/channel/util/Inet64Util$1;
.super Ljava/lang/Object;
.source "Inet64Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/util/Inet64Util;->startIpStackDetect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalNetworkId:Ljava/lang/String;

.field final synthetic val$stat:Lanet/channel/statist/NetTypeStat;


# direct methods
.method constructor <init>(Ljava/lang/String;Lanet/channel/statist/NetTypeStat;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lanet/channel/util/Inet64Util$1;->val$finalNetworkId:Ljava/lang/String;

    iput-object p2, p0, Lanet/channel/util/Inet64Util$1;->val$stat:Lanet/channel/statist/NetTypeStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 228
    new-instance v0, Lanet/channel/util/Inet64Util$1$1;

    invoke-direct {v0, p0}, Lanet/channel/util/Inet64Util$1$1;-><init>(Lanet/channel/util/Inet64Util$1;)V

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    invoke-static {v0, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
