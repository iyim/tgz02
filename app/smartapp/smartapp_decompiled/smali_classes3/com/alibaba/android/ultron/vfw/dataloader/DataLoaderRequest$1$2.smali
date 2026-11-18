.class Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;
.super Ljava/lang/Object;
.source "DataLoaderRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

.field final synthetic val$ex:Lcom/alibaba/android/ultron/vfw/instance/UltronError;

.field final synthetic val$result:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;Lcom/alibaba/android/ultron/vfw/instance/UltronError;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->val$ex:Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    iput-object p3, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->val$result:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getRenderListener()Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->val$ex:Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    invoke-interface {v0, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance$RenderListener;->onRenderFailed(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->val$result:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->val$ex:Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;->onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->val$taskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->val$taskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;->onFinish()V

    :cond_2
    return-void
.end method
