.class Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;
.super Ljava/lang/Object;
.source "DataLoadManager.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataParseCallbackImpl"
.end annotation


# instance fields
.field context:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

.field dataParserRequest:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

.field listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

.field syncMainThread:Z

.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Z)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    .line 103
    iput-object p3, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->context:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    .line 104
    iput-boolean p4, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->syncMainThread:Z

    return-void
.end method


# virtual methods
.method public onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;
    .locals 4

    const-string v0, "dataLoaderParser task finished step3"

    .line 113
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoadManager"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->useDataLoadTaskClean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->currPendingTask:Ljava/util/Map;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->dataParserRequest:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->currPendingTask:Ljava/util/Map;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->dataParserRequest:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->currPendingTask:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5f53\u524d\u5df2\u6709\u65b0\u7684DataParse Task"

    .line 119
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;->onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->context:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    const-string v1, "DataParseResult"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->addExtraData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->context:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->listener:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;

    iget-boolean v3, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->syncMainThread:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;->access$000(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;Z)V

    return-object p1
.end method

.method public setDataParserRequest(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoadManager$DataParseCallbackImpl;->dataParserRequest:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserRequest;

    return-void
.end method
