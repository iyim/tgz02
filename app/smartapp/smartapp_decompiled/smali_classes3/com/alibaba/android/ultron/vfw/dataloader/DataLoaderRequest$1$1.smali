.class Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;
.super Ljava/lang/Object;
.source "DataLoaderRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

.field final synthetic val$result:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;->val$result:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;->val$result:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;

    invoke-interface {v0, v1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;->onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->val$taskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;->this$1:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->val$taskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;->onFinish()V

    :cond_0
    return-void
.end method
