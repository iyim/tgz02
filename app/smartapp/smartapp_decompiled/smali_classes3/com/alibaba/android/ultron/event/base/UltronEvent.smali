.class public Lcom/alibaba/android/ultron/event/base/UltronEvent;
.super Ljava/lang/Object;
.source "UltronEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;
    }
.end annotation


# instance fields
.field protected mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field protected mContext:Landroid/content/Context;

.field protected mEventParams:Ljava/lang/Object;

.field protected mEventType:Ljava/lang/String;

.field protected mExtraDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mRollbackHandler:Lcom/alibaba/android/ultron/event/rollback/RollbackHandler;

.field protected mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

.field protected mTriggerArea:Ljava/lang/String;

.field protected mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mExtraDatas:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    return-void
.end method


# virtual methods
.method public ResetRuntimeContext()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$000(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$100(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getBizDXParams(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mExtraDatas:Ljava/util/Map;

    const-string v1, "bizParams"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEventParams()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mEventParams:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mExtraDatas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRuntimeContext()Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    return-object v0
.end method

.method public getRuntimeData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$000(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method public getRuntimeMtopData(Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$100(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmtopsdk/mtop/domain/MtopResponse;

    return-object p1
.end method

.method public getTriggerArea()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mTriggerArea:Ljava/lang/String;

    return-object v0
.end method

.method public getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    return-object v0
.end method

.method public mergeRuntimeContext(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$000(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$000(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$100(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$100(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRollbackHandler:Lcom/alibaba/android/ultron/event/rollback/RollbackHandler;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/alibaba/android/ultron/event/rollback/RollbackHandler;->rollback()V

    :cond_0
    return-void
.end method

.method public setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-object p0
.end method

.method setContext(Landroid/content/Context;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mEventParams:Ljava/lang/Object;

    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mEventType:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 1

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mExtraDatas:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setExtraData(Ljava/util/Map;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/android/ultron/event/base/UltronEvent;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mExtraDatas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public setRollbackListener(Lcom/alibaba/android/ultron/event/rollback/RollbackHandler;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRollbackHandler:Lcom/alibaba/android/ultron/event/rollback/RollbackHandler;

    return-void
.end method

.method public setRuntimeData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$000(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setRuntimeMtopData(Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mRuntimeContext:Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    invoke-static {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->access$100(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setTriggerArea(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mTriggerArea:Ljava/lang/String;

    return-object p0
.end method

.method setUltronInstance(Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    return-object p0
.end method
