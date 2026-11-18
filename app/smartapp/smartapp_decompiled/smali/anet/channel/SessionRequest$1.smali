.class Lanet/channel/SessionRequest$1;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Lanet/channel/entity/EventCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/SessionRequest;->registerEvent(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/SessionRequest;

.field final synthetic val$connCb:Lanet/channel/SessionRequest$IConnCb;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Lanet/channel/SessionRequest$IConnCb;J)V
    .locals 0

    .line 500
    iput-object p1, p0, Lanet/channel/SessionRequest$1;->this$0:Lanet/channel/SessionRequest;

    iput-object p2, p0, Lanet/channel/SessionRequest$1;->val$connCb:Lanet/channel/SessionRequest$IConnCb;

    iput-wide p3, p0, Lanet/channel/SessionRequest$1;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;ILanet/channel/entity/Event;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move-object/from16 v1, p3

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 506
    :cond_1
    iget v4, v1, Lanet/channel/entity/Event;->errorCode:I

    move v6, v4

    :goto_0
    if-nez v1, :cond_2

    const-string v4, ""

    goto :goto_1

    .line 507
    :cond_2
    iget-object v4, v1, Lanet/channel/entity/Event;->errorDetail:Ljava/lang/String;

    :goto_1
    const-string v8, "Event"

    const/4 v10, 0x3

    const-string v11, "EventType"

    const/4 v12, 0x1

    const-string v13, "Session"

    const/4 v14, 0x6

    const-string v15, "awcn.SessionRequest"

    const/4 v7, 0x2

    if-eq v5, v7, :cond_7

    const/16 v9, 0x100

    if-eq v5, v9, :cond_5

    const/16 v4, 0x200

    if-eq v5, v4, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_4

    .line 510
    iget-object v9, v2, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    new-array v4, v14, [Ljava/lang/Object;

    aput-object v13, v4, v3

    aput-object v2, v4, v12

    aput-object v11, v4, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x4

    aput-object v8, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    const/4 v1, 0x0

    invoke-static {v15, v1, v9, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    iget-object v4, v0, Lanet/channel/SessionRequest$1;->this$0:Lanet/channel/SessionRequest;

    invoke-static {v4, v2, v3, v1}, Lanet/channel/SessionRequest;->access$800(Lanet/channel/SessionRequest;Lanet/channel/Session;ILjava/lang/String;)V

    .line 512
    iget-object v1, v0, Lanet/channel/SessionRequest$1;->val$connCb:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v3, v0, Lanet/channel/SessionRequest$1;->val$start:J

    invoke-interface {v1, v2, v3, v4}, Lanet/channel/SessionRequest$IConnCb;->onSuccess(Lanet/channel/Session;J)V

    goto/16 :goto_5

    :cond_5
    if-eqz v2, :cond_6

    .line 524
    iget-object v9, v2, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v3

    aput-object v2, v14, v12

    aput-object v11, v14, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v10

    const/4 v3, 0x4

    aput-object v8, v14, v3

    const/4 v3, 0x5

    aput-object v1, v14, v3

    const/4 v1, 0x0

    invoke-static {v15, v1, v9, v14}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    iget-object v1, v0, Lanet/channel/SessionRequest$1;->this$0:Lanet/channel/SessionRequest;

    invoke-static {v1, v2, v6, v4}, Lanet/channel/SessionRequest;->access$800(Lanet/channel/SessionRequest;Lanet/channel/Session;ILjava/lang/String;)V

    .line 526
    iget-object v1, v0, Lanet/channel/SessionRequest$1;->val$connCb:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v3, v0, Lanet/channel/SessionRequest$1;->val$start:J

    move-object/from16 v2, p1

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Lanet/channel/SessionRequest$IConnCb;->onFailed(Lanet/channel/Session;JII)V

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    .line 515
    iget-object v9, v2, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v3

    aput-object v2, v14, v12

    aput-object v11, v14, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v10

    const/4 v3, 0x4

    aput-object v8, v14, v3

    const/4 v3, 0x5

    aput-object v1, v14, v3

    const/4 v1, 0x0

    invoke-static {v15, v1, v9, v14}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    iget-object v1, v0, Lanet/channel/SessionRequest$1;->this$0:Lanet/channel/SessionRequest;

    invoke-static {v1, v2, v6, v4}, Lanet/channel/SessionRequest;->access$800(Lanet/channel/SessionRequest;Lanet/channel/Session;ILjava/lang/String;)V

    .line 517
    iget-object v1, v0, Lanet/channel/SessionRequest$1;->this$0:Lanet/channel/SessionRequest;

    invoke-static {v1}, Lanet/channel/SessionRequest;->access$100(Lanet/channel/SessionRequest;)Lanet/channel/SessionPool;

    move-result-object v1

    iget-object v3, v0, Lanet/channel/SessionRequest$1;->this$0:Lanet/channel/SessionRequest;

    invoke-virtual {v1, v3, v2}, Lanet/channel/SessionPool;->containsValue(Lanet/channel/SessionRequest;Lanet/channel/Session;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 518
    iget-object v1, v0, Lanet/channel/SessionRequest$1;->val$connCb:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v3, v0, Lanet/channel/SessionRequest$1;->val$start:J

    invoke-interface {v1, v2, v3, v4, v5}, Lanet/channel/SessionRequest$IConnCb;->onDisConnect(Lanet/channel/Session;JI)V

    goto :goto_5

    .line 520
    :cond_9
    iget-object v1, v0, Lanet/channel/SessionRequest$1;->val$connCb:Lanet/channel/SessionRequest$IConnCb;

    iget-wide v3, v0, Lanet/channel/SessionRequest$1;->val$start:J

    move-object/from16 v2, p1

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Lanet/channel/SessionRequest$IConnCb;->onFailed(Lanet/channel/Session;JII)V

    :goto_5
    return-void
.end method
