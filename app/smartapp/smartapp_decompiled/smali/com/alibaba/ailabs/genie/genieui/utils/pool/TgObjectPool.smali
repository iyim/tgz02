.class public Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;
.super Ljava/lang/Object;
.source "TgObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_IDLE:I = 0xa

.field public static final DEFAULT_MIN_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TgObjectPool"


# instance fields
.field private factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private maxIdle:I

.field private minIdle:I

.field private pool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;-><init>(Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory<",
            "TT;>;II)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gt p3, p2, :cond_0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    .line 53
    iput p2, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->maxIdle:I

    .line 54
    iput p3, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I

    .line 55
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    .line 56
    iget p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->addItems(I)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "invalid params"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addItems(I)V
    .locals 4

    .line 72
    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const/4 v1, 0x0

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->activateObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 78
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private deleteItems(I)V
    .locals 3

    .line 60
    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 65
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public borrowObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 150
    monitor-enter p0

    const/4 v0, 0x0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->activateObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->activateObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    :goto_0
    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->addItems(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 159
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemsNum()I
    .locals 1

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMaxIdle()I
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->maxIdle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinIdle()I
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->maxIdle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 181
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->passivateObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->factory:Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;->destroyObject(Ljava/lang/Object;)V

    .line 191
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setMaxIdle(I)V
    .locals 1

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I

    if-ge p1, v0, :cond_0

    .line 104
    iget p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x1

    .line 109
    :cond_1
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->maxIdle:I

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->maxIdle:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->deleteItems(I)V

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMinIdle(I)V
    .locals 1

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->maxIdle:I

    if-le p1, v0, :cond_0

    .line 122
    iget p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->maxIdle:I

    .line 124
    :cond_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I

    .line 125
    iget p1, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->minIdle:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/utils/pool/TgObjectPool;->addItems(I)V

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
