.class public Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;
.super Ljava/lang/Object;
.source "MtopProcessorManager.java"


# static fields
.field private static volatile sInstance:Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;


# instance fields
.field private mMtopProcessorCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->mMtopProcessorCallbackList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;
    .locals 2

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->sInstance:Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->sInstance:Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->sInstance:Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->sInstance:Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;

    return-object v0
.end method


# virtual methods
.method public addFirst(Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->mMtopProcessorCallbackList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addLast(Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->mMtopProcessorCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->mMtopProcessorCallbackList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addProcessor(Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->mMtopProcessorCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleAfterRequestProcessors(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;",
            "IZ",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    .line 68
    iget-object v1, v0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->mMtopProcessorCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 69
    invoke-interface/range {v3 .. v11}, Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;->afterRequestProcessor(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return v2
.end method

.method public handleBeforeRequestProcessors(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)Z
    .locals 3
    .param p1    # Lmtopsdk/mtop/domain/IMTOPDataObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;",
            "I)Z"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/MtopProcessorManager;->mMtopProcessorCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;

    .line 53
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;->beforeRequestProcessor(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v1
.end method
