.class public Lcom/alibaba/android/ultron/event/rollback/MultiComponentRollbackHandler;
.super Ljava/lang/Object;
.source "MultiComponentRollbackHandler.java"

# interfaces
.implements Lcom/alibaba/android/ultron/event/rollback/RollbackHandler;


# instance fields
.field mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/rollback/MultiComponentRollbackHandler;->mComponents:Ljava/util/List;

    return-void
.end method

.method private rollbackData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-nez v0, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->rollBack()V

    goto :goto_0

    :cond_2
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public recordData()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/rollback/MultiComponentRollbackHandler;->mComponents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-nez v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->record()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public rollback()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/rollback/MultiComponentRollbackHandler;->mComponents:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/event/rollback/MultiComponentRollbackHandler;->rollbackData(Ljava/util/List;)V

    return-void
.end method
