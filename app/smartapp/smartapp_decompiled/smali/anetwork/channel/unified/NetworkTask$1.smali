.class Lanetwork/channel/unified/NetworkTask$1;
.super Ljava/lang/Object;
.source "NetworkTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanetwork/channel/unified/NetworkTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/unified/NetworkTask;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/NetworkTask;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lanetwork/channel/unified/NetworkTask$1;->this$0:Lanetwork/channel/unified/NetworkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1;->this$0:Lanetwork/channel/unified/NetworkTask;

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {v0, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method
