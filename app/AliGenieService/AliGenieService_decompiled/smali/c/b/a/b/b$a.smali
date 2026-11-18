.class public Lc/b/a/b/b$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/b/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lc/b/a/b/b;


# direct methods
.method public constructor <init>(Lc/b/a/b/b;)V
    .locals 2

    iput-object p1, p0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/b/a/b/b$a;->a:J

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    .line 1
    sget-object v2, Lc/b/a/b/a$a;->a:Lc/b/a/b/a;

    .line 2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc/b/a/b/k/c;

    invoke-virtual {v2, v1}, Lc/b/a/b/a;->a(Lc/b/a/b/k/c;)V

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x9

    const-string v4, "I"

    const-string v5, "W"

    const-string v6, "IC"

    const-string v7, ""

    const-string v8, "log.tag"

    if-ne v2, v3, :cond_3

    const-string v1, "net connect get log.tag:"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "net connect after set log.tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 3
    iget-object v1, v1, Lc/b/a/b/d;->j:Lc/b/a/b/h/m;

    .line 4
    invoke-virtual {v1}, Lc/b/a/b/h/m;->a()Z

    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 5
    iget-object v1, v1, Lc/b/a/b/d;->k:Lc/b/a/b/h/a;

    .line 6
    invoke-virtual {v1}, Lc/b/a/b/h/a;->a()Z

    goto/16 :goto_3

    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    const-string v1, "1min get log.tag:"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1min after set log.tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 7
    iget-object v1, v1, Lc/b/a/b/d;->i:Lc/b/a/b/h/f;

    .line 8
    invoke-virtual {v1}, Lc/b/a/b/h/f;->a()Z

    goto/16 :goto_3

    :cond_5
    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    const-string v1, "2min get log.tag:"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2min after set log.tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 9
    iget-object v1, v1, Lc/b/a/b/d;->l:Lc/b/a/b/h/p;

    .line 10
    invoke-virtual {v1}, Lc/b/a/b/h/p;->a()Z

    goto/16 :goto_3

    :cond_7
    const/16 v3, 0x8

    const/16 v9, 0xa

    if-ne v2, v3, :cond_9

    const-string v1, "10min get log.tag:"

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10min after set log.tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 11
    iget-object v1, v1, Lc/b/a/b/d;->b:Landroid/os/Handler;

    .line 12
    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 13
    iget-object v1, v1, Lc/b/a/b/d;->m:Lc/b/a/b/h/e;

    .line 14
    invoke-virtual {v1}, Lc/b/a/b/h/e;->a()Z

    goto/16 :goto_3

    :cond_9
    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    goto/16 :goto_3

    :cond_a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lc/b/a/b/b$a;->a:J

    sub-long v11, v9, v11

    .line 15
    sget-wide v13, Lc/b/a/b/o/f;->a:J

    const-string v2, "sys.genie.heartbeat.seconds"

    invoke-static {v2, v13, v14}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    .line 16
    invoke-static {}, Lc/b/a/b/o/f;->a()Z

    move-result v2

    const/4 v15, 0x0

    if-eqz v2, :cond_b

    .line 17
    sput v1, Lc/b/a/b/o/g;->M:I

    goto :goto_0

    :cond_b
    sput v15, Lc/b/a/b/o/g;->M:I

    :goto_0
    cmp-long v2, v11, v13

    if-ltz v2, :cond_10

    .line 18
    iput-wide v9, v0, Lc/b/a/b/b$a;->a:J

    iget-object v2, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v2, v2, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 19
    iget-boolean v9, v2, Lc/b/a/b/d;->d:Z

    if-eqz v9, :cond_c

    move v9, v1

    goto :goto_1

    .line 20
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, 0x7e4

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11, v1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-lez v9, :cond_d

    iput-boolean v1, v2, Lc/b/a/b/d;->d:Z

    :cond_d
    iget-boolean v9, v2, Lc/b/a/b/d;->d:Z

    :goto_1
    if-nez v9, :cond_e

    goto :goto_2

    .line 22
    :cond_e
    sget-object v9, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 23
    invoke-virtual {v9}, Lc/b/a/b/o/h;->a()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v2, Lc/b/a/b/d;->g:Lc/b/a/b/h/l;

    invoke-virtual {v9}, Lc/b/a/b/h/l;->a()Z

    :cond_f
    iget v9, v2, Lc/b/a/b/d;->c:I

    add-int/2addr v9, v1

    iput v9, v2, Lc/b/a/b/d;->c:I

    if-lt v9, v1, :cond_10

    iget-object v1, v2, Lc/b/a/b/d;->h:Lcom/aligenie/ags/analytics/collector/TemperatureCollector;

    invoke-virtual {v1}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector;->a()Z

    iget-object v1, v2, Lc/b/a/b/d;->l:Lc/b/a/b/h/p;

    invoke-virtual {v1}, Lc/b/a/b/h/p;->a()Z

    iput v15, v2, Lc/b/a/b/d;->c:I

    .line 24
    :cond_10
    :goto_2
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemLogReader after set log.tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_12
    const/4 v1, 0x5

    if-ne v2, v1, :cond_13

    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 25
    iget-object v1, v1, Lc/b/a/b/d;->f:Ljava/lang/Thread;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_13
    if-ne v2, v9, :cond_14

    iget-object v1, v0, Lc/b/a/b/b$a;->b:Lc/b/a/b/b;

    iget-object v1, v1, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    .line 27
    iget-object v1, v1, Lc/b/a/b/d;->p:Lc/b/a/b/n/b;

    .line 28
    invoke-virtual {v1}, Lc/b/a/b/n/b;->a()V

    :cond_14
    :goto_3
    return-void
.end method
