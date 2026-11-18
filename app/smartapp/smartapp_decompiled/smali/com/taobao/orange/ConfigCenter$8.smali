.class Lcom/taobao/orange/ConfigCenter$8;
.super Ljava/lang/Object;
.source "ConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/ConfigCenter;->rematchNamespace(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/ConfigCenter;

.field final synthetic val$candidateKeySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/taobao/orange/ConfigCenter;Ljava/util/Set;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iput-object p2, p0, Lcom/taobao/orange/ConfigCenter$8;->val$candidateKeySet:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 889
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    monitor-enter v0

    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$8;->val$candidateKeySet:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$8;->val$candidateKeySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    iget-object v1, v1, Lcom/taobao/orange/cache/IndexCache;->candidateNamespace:Ljava/util/Map;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    iget-object v1, v1, Lcom/taobao/orange/cache/IndexCache;->candidateNamespace:Ljava/util/Map;

    .line 891
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$8;->val$candidateKeySet:Ljava/util/Set;

    iget-object v3, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v3, v3, Lcom/taobao/orange/ConfigCenter;->failCandidateSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 899
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->failCandidateSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x1

    .line 900
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ConfigCenter"

    const-string/jumbo v4, "rematchNamespace"

    .line 901
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "<<<<<<<<<<<<<< START >>>>>>>>>>>>>>"

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    :cond_1
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    const-string v3, "ConfigCenter"

    const-string/jumbo v5, "rematchNamespace"

    .line 904
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "candidateKeys"

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/taobao/orange/ConfigCenter$8;->val$candidateKeySet:Ljava/util/Set;

    aput-object v7, v6, v1

    invoke-static {v3, v5, v6}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 907
    iget-object v5, p0, Lcom/taobao/orange/ConfigCenter$8;->val$candidateKeySet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 908
    iget-object v7, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v7, v7, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    iget-object v7, v7, Lcom/taobao/orange/cache/IndexCache;->candidateNamespace:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_3

    .line 910
    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 913
    :cond_4
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ConfigCenter"

    const-string/jumbo v6, "rematchNamespace"

    .line 914
    new-array v7, v4, [Ljava/lang/Object;

    const-string/jumbo v8, "specialNamespaces"

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    invoke-static {v5, v6, v7}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 917
    iget-object v6, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v6, v6, Lcom/taobao/orange/ConfigCenter;->mConfigCache:Lcom/taobao/orange/cache/ConfigCache;

    invoke-virtual {v6}, Lcom/taobao/orange/cache/ConfigCache;->getConfigMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "ConfigCenter"

    const-string/jumbo v7, "rematchNamespace break as not used DEFAULT"

    .line 918
    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "namespace"

    aput-object v9, v8, v2

    aput-object v5, v8, v1

    invoke-static {v6, v7, v8}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 921
    :cond_6
    iget-object v6, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v7, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v7, v7, Lcom/taobao/orange/ConfigCenter;->mIndexCache:Lcom/taobao/orange/cache/IndexCache;

    invoke-virtual {v7, v5}, Lcom/taobao/orange/cache/IndexCache;->getNameSpace(Ljava/lang/String;)Lcom/taobao/orange/model/NameSpaceDO;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/taobao/orange/ConfigCenter;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V

    goto :goto_1

    .line 923
    :cond_7
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "ConfigCenter"

    const-string/jumbo v4, "rematchNamespace"

    .line 924
    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "<<<<<<<<<<<<<< END >>>>>>>>>>>>>>"

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    :cond_8
    monitor-exit v0

    return-void

    :cond_9
    :goto_2
    const/4 v1, 0x3

    .line 892
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "ConfigCenter"

    const-string/jumbo v3, "rematchNamespace fail"

    .line 893
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    :cond_a
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$8;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->failCandidateSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/taobao/orange/ConfigCenter$8;->val$candidateKeySet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 896
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 926
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
