.class Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr$1;
.super Ljava/lang/Object;
.source "ConfigTimeStampMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr$1;->this$0:Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 27
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    new-instance v3, Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v1

    const-class v2, Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;

    invoke-virtual {v1, v2}, Lcom/alibaba/analytics/core/db/DBMgr;->clear(Ljava/lang/Class;)V

    .line 34
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/core/db/DBMgr;->insert(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "context"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string/jumbo v1, "storeTask.run()"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
