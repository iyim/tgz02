.class Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;
.super Ljava/lang/Object;
.source "DataLoaderRequest.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->execute(Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

.field final synthetic val$taskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->val$taskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$2;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;Lcom/alibaba/android/ultron/vfw/instance/UltronError;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->access$000(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DataLoader finished step5"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderRequest"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->access$000(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1$1;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest;->mCallback:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;->onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    .line 53
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderRequest$1;->val$taskCallBack:Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;

    if-eqz p1, :cond_3

    .line 54
    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataRequestTask$TaskCallBack;->onFinish()V

    :cond_3
    :goto_1
    return-void
.end method
