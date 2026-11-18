.class public Lcom/alibaba/android/ultron/event/rollback/DefaultRollbackHandler;
.super Ljava/lang/Object;
.source "DefaultRollbackHandler.java"

# interfaces
.implements Lcom/alibaba/android/ultron/event/rollback/RollbackHandler;


# instance fields
.field private mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field private mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;


# direct methods
.method public constructor <init>(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/rollback/DefaultRollbackHandler;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 18
    iput-object p2, p0, Lcom/alibaba/android/ultron/event/rollback/DefaultRollbackHandler;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    if-eqz p1, :cond_0

    .line 20
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->record()V

    :cond_0
    return-void
.end method


# virtual methods
.method public rollback()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/rollback/DefaultRollbackHandler;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->rollBack()V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/rollback/DefaultRollbackHandler;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->refreshCurrentContainer()V

    :cond_1
    return-void
.end method
