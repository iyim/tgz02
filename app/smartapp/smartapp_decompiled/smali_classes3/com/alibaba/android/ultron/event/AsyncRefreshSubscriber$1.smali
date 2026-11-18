.class Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;
.super Ljava/lang/Object;
.source "AsyncRefreshSubscriber.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

.field final synthetic val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

.field final synthetic val$loadRenderKey:Ljava/lang/String;

.field final synthetic val$parseKey:Ljava/lang/String;

.field final synthetic val$targetComponents:Lcom/alibaba/fastjson/JSONArray;

.field final synthetic val$viewHolder:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iput-object p2, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$loadRenderKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$viewHolder:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    iput-object p4, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$targetComponents:Lcom/alibaba/fastjson/JSONArray;

    iput-object p5, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$parseKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3

    const/4 p1, 0x1

    .line 162
    new-array p3, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncRefresh onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "AsyncRefreshSubscriber"

    invoke-static {v0, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$loadRenderKey:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->SATAE_FAILED:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    iget-object v2, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$viewHolder:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-static {p3, v0, v1, v2, p2}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$100(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Ljava/lang/Object;)V

    .line 166
    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$targetComponents:Lcom/alibaba/fastjson/JSONArray;

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$parseKey:Ljava/lang/String;

    invoke-static {p3, p2, v0, v1, p1}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$200(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lmtopsdk/mtop/domain/MtopResponse;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Z)V

    .line 167
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    const/4 p2, 0x3

    iput p2, p1, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    .line 168
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object p2, p1, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    invoke-static {p1, p2, p3}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$300(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V

    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x1

    .line 152
    new-array p1, p1, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AsyncRefresh onSuccess: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p1, p4

    const-string p3, "AsyncRefreshSubscriber"

    invoke-static {p3, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$loadRenderKey:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->STATE_SUCCESS:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$viewHolder:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-static {p1, p3, v0, v1, p2}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$100(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Ljava/lang/Object;)V

    .line 155
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$targetComponents:Lcom/alibaba/fastjson/JSONArray;

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$parseKey:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, p4}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$200(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lmtopsdk/mtop/domain/MtopResponse;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Z)V

    .line 156
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    const/4 p2, 0x2

    iput p2, p1, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    .line 157
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object p2, p1, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    invoke-static {p1, p2, p3}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$300(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V

    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3

    const/4 p1, 0x1

    .line 142
    new-array p3, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncRefresh onSystemError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "AsyncRefreshSubscriber"

    invoke-static {v0, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$loadRenderKey:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->SATAE_FAILED:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    iget-object v2, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$viewHolder:Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-static {p3, v0, v1, v2, p2}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$100(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Ljava/lang/Object;)V

    .line 145
    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$targetComponents:Lcom/alibaba/fastjson/JSONArray;

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$parseKey:Ljava/lang/String;

    invoke-static {p3, p2, v0, v1, p1}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$200(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lmtopsdk/mtop/domain/MtopResponse;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Z)V

    .line 146
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    const/4 p2, 0x3

    iput p2, p1, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    .line 147
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    iget-object p2, p1, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    iget-object p3, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;->val$finalInfo:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    invoke-static {p1, p2, p3}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->access$300(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V

    return-void
.end method
