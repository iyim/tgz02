.class Lanet/channel/strategy/StrategyInfoHolder$1;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/strategy/StrategyInfoHolder;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/strategy/StrategyInfoHolder;

.field final synthetic val$currentFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->this$0:Lanet/channel/strategy/StrategyInfoHolder;

    iput-object p2, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->val$currentFilename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    const-string v0, "awcn.StrategyInfoHolder"

    const-string/jumbo v1, "start loading strategy files"

    const/4 v2, 0x0

    .line 100
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    invoke-static {}, Lanet/channel/AwcnConfig;->isAsyncLoadStrategyEnable()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v3, "awcn.StrategyInfoHolder"

    const-string v6, "load strategy async"

    .line 104
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v4, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->val$currentFilename:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->this$0:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v6, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->val$currentFilename:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lanet/channel/strategy/StrategyInfoHolder;->loadFile(Ljava/lang/String;Z)V

    :cond_0
    const-string v3, "StrategyConfig"

    .line 111
    invoke-static {v3, v4}, Lanet/channel/strategy/StrategySerializeHelper;->restore(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyConfig;

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v3}, Lanet/channel/strategy/StrategyConfig;->checkInit()V

    .line 114
    iget-object v6, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->this$0:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v3, v6}, Lanet/channel/strategy/StrategyConfig;->setHolder(Lanet/channel/strategy/StrategyInfoHolder;)V

    .line 115
    iget-object v6, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->this$0:Lanet/channel/strategy/StrategyInfoHolder;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    iget-object v7, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->this$0:Lanet/channel/strategy/StrategyInfoHolder;

    iput-object v3, v7, Lanet/channel/strategy/StrategyInfoHolder;->strategyConfig:Lanet/channel/strategy/StrategyConfig;

    .line 117
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 122
    :cond_1
    :goto_0
    invoke-static {}, Lanet/channel/strategy/StrategySerializeHelper;->getSortedFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 126
    :goto_1
    array-length v8, v3

    const/4 v9, 0x2

    if-ge v6, v8, :cond_5

    if-ge v7, v9, :cond_5

    .line 127
    aget-object v8, v3, v6

    .line 128
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 133
    iget-object v9, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->val$currentFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "StrategyConfig"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 134
    iget-object v9, p0, Lanet/channel/strategy/StrategyInfoHolder$1;->this$0:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v9, v8, v2}, Lanet/channel/strategy/StrategyInfoHolder;->loadFile(Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const-string v3, "awcn.StrategyInfoHolder"

    const-string v6, "end loading strategy files"

    .line 138
    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "total cost"

    aput-object v8, v7, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v3, v6, v4, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method
