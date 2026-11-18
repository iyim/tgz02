.class Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;
.super Ljava/lang/Object;
.source "NetworkCallbackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/network/NetworkCallbackAdapter;->onHeader(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$response:Lmtopsdk/network/domain/Response;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/network/NetworkCallbackAdapter;Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iput-object p2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->val$response:Lmtopsdk/network/domain/Response;

    iput-object p3, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v0, v0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lmtopsdk/mtop/common/MtopHeaderEvent;

    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->val$response:Lmtopsdk/network/domain/Response;

    iget v1, v1, Lmtopsdk/network/domain/Response;->code:I

    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->val$response:Lmtopsdk/network/domain/Response;

    iget-object v2, v2, Lmtopsdk/network/domain/Response;->headers:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/common/MtopHeaderEvent;-><init>(ILjava/util/Map;)V

    .line 64
    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v1, v1, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v1, v1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopHeaderEvent;->seqNo:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v1, v1, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    iget-object v2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->val$context:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;->this$0:Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    iget-object v1, v1, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v1, v1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v2, "mtopsdk.NetworkCallbackAdapter"

    const-string v3, "onHeader failed."

    invoke-static {v2, v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
