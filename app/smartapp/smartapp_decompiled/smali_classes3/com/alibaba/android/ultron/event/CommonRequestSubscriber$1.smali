.class Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;
.super Ljava/lang/Object;
.source "CommonRequestSubscriber.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

.field final synthetic val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

.field final synthetic val$next:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$responseKey:Ljava/lang/String;

.field final synthetic val$subfilter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;Lcom/alibaba/android/ultron/event/base/UltronEvent;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    iput-object p2, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    iput-object p3, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$next:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$responseKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$subfilter:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 6

    const/4 p1, 0x1

    .line 126
    new-array p1, p1, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onError: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "CommonRequestSubscriber"

    invoke-static {p3, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->hideLoading()V

    .line 128
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->getMtopReturnData(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$next:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "fail"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$responseKey:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)V

    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 7

    const/4 p1, 0x1

    .line 110
    new-array p3, p1, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onSuccess: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const-string p4, "CommonRequestSubscriber"

    invoke-static {p4, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    iget-object p3, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-virtual {p3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object p3

    invoke-interface {p3}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->hideLoading()V

    .line 112
    iget-object p3, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    invoke-virtual {p3, p2}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->getMtopReturnData(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string p3, "data"

    .line 113
    invoke-virtual {v5, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    .line 115
    iget-object p3, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$subfilter:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    iget-object p3, p3, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$subfilter:Ljava/lang/String;

    invoke-static {p3, v1, v3}, Lcom/alibaba/android/ultron/engine/utils/UltronUtils;->isMeetCondition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 117
    new-array p1, p1, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subfilter\u6267\u884c\u5931\u8d25\uff0c\u8bf7\u6c42\u5224\u65ad\u4e3afail: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$subfilter:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    invoke-static {p4, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$next:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "fail"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$responseKey:Ljava/lang/String;

    move-object v3, p2

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)V

    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$next:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "success"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$responseKey:Ljava/lang/String;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)V

    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 6

    const/4 p1, 0x1

    .line 102
    new-array p1, p1, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onSystemError: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "CommonRequestSubscriber"

    invoke-static {p3, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$event:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->hideLoading()V

    .line 104
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->getMtopReturnData(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$next:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "fail"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;->val$responseKey:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)V

    return-void
.end method
