.class Lcom/alibaba/android/ultron/vfw/core/ViewEngine$7;
.super Lcom/taobao/android/ultron/message/MessageChannel;
.source "ViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->setupMessageChannel(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field final synthetic val$idmComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Ljava/lang/String;Lcom/taobao/android/ultron/message/MessageManager;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$7;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iput-object p4, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$7;->val$idmComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-direct {p0, p2, p3}, Lcom/taobao/android/ultron/message/MessageChannel;-><init>(Ljava/lang/String;Lcom/taobao/android/ultron/message/MessageManager;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/Object;)V
    .locals 3

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$7;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$7;->val$idmComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-static {v0, v1, p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$1200(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/lang/Object;)V

    .line 1044
    invoke-super {p0, p1}, Lcom/taobao/android/ultron/message/MessageChannel;->onMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 1046
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "onMessage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "ViewEngine"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
