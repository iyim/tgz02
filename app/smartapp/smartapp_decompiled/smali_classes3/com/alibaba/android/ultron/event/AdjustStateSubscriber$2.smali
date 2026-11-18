.class Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;
.super Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;
.source "AdjustStateSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;

.field final synthetic val$instance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;->this$0:Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;

    iput-object p2, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;->val$instance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;->val$instance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataLoaderListener()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataLoadFailed(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void
.end method

.method public onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;->val$instance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataLoaderListener()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;->val$instance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataLoaderListener()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataLoadFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;)V

    :cond_0
    return-void
.end method

.method public onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;->val$instance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataLoaderListener()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;->val$instance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getDataLoaderListener()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    move-result-object p1

    :cond_0
    return-object p1
.end method
