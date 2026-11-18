.class Lcom/uc/rmbsdk/export/RmbDataHandler$4;
.super Ljava/lang/Object;
.source "RmbDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/rmbsdk/export/RmbDataHandler;->trySync(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

.field final synthetic val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

.field final synthetic val$targetQueueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uc/rmbsdk/export/RmbDataHandler;Lcom/uc/rmbsdk/export/RmbBizInfo;Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iput-object p3, p0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$targetQueueId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    .line 367
    iget-object v1, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v1, v1, Lcom/uc/rmbsdk/export/RmbBizInfo;->queueIds:Ljava/util/ArrayList;

    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 369
    iget-object v2, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v2, v2, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    iget-object v3, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v3, v3, Lcom/uc/rmbsdk/export/RmbBizInfo;->channelId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->meta(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    array-length v3, v2

    if-lez v3, :cond_0

    .line 371
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    iget-object v3, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$targetQueueId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    iget-object v1, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$targetQueueId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 380
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 385
    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v4, v4, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v4, v4, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v14, v4

    goto :goto_2

    :cond_2
    const-wide/16 v14, -0x1

    :goto_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 393
    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v4, v4, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 394
    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v4, v4, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v18, v4

    goto :goto_4

    :cond_3
    const-wide/16 v18, -0x1

    .line 396
    :goto_4
    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v4, v4, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    iget-object v5, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v5, v5, Lcom/uc/rmbsdk/export/RmbBizInfo;->channelId:Ljava/lang/String;

    iget-object v6, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v7, v6, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    move-object v6, v2

    move-wide/from16 v8, v18

    invoke-static/range {v4 .. v9}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->pull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/uc/rmbsdk/export/RmbSyncInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 398
    iget-wide v4, v8, Lcom/uc/rmbsdk/export/RmbSyncInfo;->seq:J

    cmp-long v6, v4, v18

    if-lez v6, :cond_4

    .line 399
    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-wide v5, v8, Lcom/uc/rmbsdk/export/RmbSyncInfo;->seq:J

    invoke-virtual {v4, v2, v5, v6}, Lcom/uc/rmbsdk/export/RmbBizInfo;->updateAckInfo(Ljava/lang/String;J)V

    .line 401
    :cond_4
    iget-object v4, v8, Lcom/uc/rmbsdk/export/RmbSyncInfo;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;

    add-int/lit8 v16, v16, 0x1

    .line 405
    iget-wide v6, v5, Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;->seq:J

    cmp-long v9, v6, v18

    if-gtz v9, :cond_5

    goto :goto_5

    .line 407
    :cond_5
    iget-object v6, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->this$0:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-static {v6}, Lcom/uc/rmbsdk/export/RmbDataHandler;->access$100(Lcom/uc/rmbsdk/export/RmbDataHandler;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;

    invoke-direct {v7, v0, v5}, Lcom/uc/rmbsdk/export/RmbDataHandler$4$1;-><init>(Lcom/uc/rmbsdk/export/RmbDataHandler$4;Lcom/uc/rmbsdk/export/RmbSyncInfo$SyncMessage;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 417
    :cond_6
    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v4, v4, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    iget-object v5, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v5, v5, Lcom/uc/rmbsdk/export/RmbBizInfo;->channelId:Ljava/lang/String;

    iget-object v6, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v7, v6, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    iget-wide v12, v8, Lcom/uc/rmbsdk/export/RmbSyncInfo;->seq:J

    move-object v6, v2

    move-object/from16 v20, v1

    move-object v1, v8

    move-wide v8, v12

    invoke-static/range {v4 .. v9}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->ack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 418
    iget-boolean v1, v1, Lcom/uc/rmbsdk/export/RmbSyncInfo;->hasMore:Z

    move/from16 v17, v1

    goto :goto_6

    :cond_7
    move-object/from16 v20, v1

    :goto_6
    if-nez v17, :cond_9

    .line 422
    iget-object v1, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v1, v1, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v1, v1, Lcom/uc/rmbsdk/export/RmbBizInfo;->ackInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-wide/from16 v18, v12

    goto :goto_7

    :cond_8
    const-wide/16 v18, -0x1

    .line 423
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 424
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 425
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cost_time"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pull_count"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "msg_count"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "start_seq"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "end_seq"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v3, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v3, v3, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    iget-object v4, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v4, v4, Lcom/uc/rmbsdk/export/RmbBizInfo;->channelId:Ljava/lang/String;

    iget-object v5, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iget-object v5, v5, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {v3, v4, v2, v5, v1}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->statSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object/from16 v1, v20

    goto/16 :goto_1

    :cond_9
    move-object/from16 v1, v20

    goto/16 :goto_3

    .line 432
    :cond_a
    iget-object v1, v0, Lcom/uc/rmbsdk/export/RmbDataHandler$4;->val$info:Lcom/uc/rmbsdk/export/RmbBizInfo;

    iput-boolean v3, v1, Lcom/uc/rmbsdk/export/RmbBizInfo;->isSyncRunning:Z

    return-void
.end method
