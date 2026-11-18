.class Lanetwork/channel/unified/UnifiedRequestTask$2;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanetwork/channel/unified/UnifiedRequestTask;->request()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/unified/UnifiedRequestTask;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/UnifiedRequestTask;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$2;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 131
    new-instance v0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;

    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask$2;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v2, v1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->getAwcnRequest()Lanet/channel/request/Request;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/unified/UnifiedRequestTask$2;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v3, v3, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;ILanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)V

    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask$2;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v1, v1, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->getAwcnRequest()Lanet/channel/request/Request;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/unified/UnifiedRequestTask$2;->this$0:Lanetwork/channel/unified/UnifiedRequestTask;

    iget-object v2, v2, Lanetwork/channel/unified/UnifiedRequestTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->proceed(Lanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)Ljava/util/concurrent/Future;

    return-void
.end method
