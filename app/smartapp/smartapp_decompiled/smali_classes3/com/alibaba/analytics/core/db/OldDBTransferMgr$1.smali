.class final Lcom/alibaba/analytics/core/db/OldDBTransferMgr$1;
.super Ljava/lang/Object;
.source "OldDBTransferMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/db/OldDBTransferMgr;->checkAndTransfer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dbfile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/analytics/core/db/OldDBTransferMgr$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/analytics/core/db/OldDBTransferMgr$1;->val$dbfile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 29
    new-instance v0, Lcom/alibaba/analytics/core/db/DBMgr;

    iget-object v1, p0, Lcom/alibaba/analytics/core/db/OldDBTransferMgr$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/alibaba/analytics/core/db/OldDBTransferMgr;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/analytics/core/db/DBMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :goto_0
    const-class v1, Lcom/alibaba/analytics/core/model/Log;

    const/4 v2, 0x0

    const/16 v3, 0x64

    const-string v4, "time"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/alibaba/analytics/core/db/DBMgr;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "delete old db file:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/analytics/core/db/OldDBTransferMgr$1;->val$dbfile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OldDBTransferMgr"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/analytics/core/db/OldDBTransferMgr$1;->val$dbfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/db/DBMgr;->delete(Ljava/util/List;)I

    .line 38
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/analytics/core/db/DBMgr;->insert(Ljava/util/List;)V

    goto :goto_0
.end method
