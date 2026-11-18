.class Lcom/ta/audid/device/AppUtdid$1;
.super Ljava/lang/Object;
.source "AppUtdid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/audid/device/AppUtdid;->uploadAppUtdid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/audid/device/AppUtdid;


# direct methods
.method constructor <init>(Lcom/ta/audid/device/AppUtdid;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ta/audid/device/AppUtdid$1;->this$0:Lcom/ta/audid/device/AppUtdid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x7530

    .line 173
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 176
    invoke-static {}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->getInstance()Lcom/ta/audid/filesync/UtdidBroadcastMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/audid/device/AppUtdid$1;->this$0:Lcom/ta/audid/device/AppUtdid;

    invoke-static {v1}, Lcom/ta/audid/device/AppUtdid;->access$000(Lcom/ta/audid/device/AppUtdid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ta/audid/filesync/UtdidBroadcastMgr;->sendBroadCast(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/ta/audid/device/AppUtdid$1;->this$0:Lcom/ta/audid/device/AppUtdid;

    invoke-static {v0}, Lcom/ta/audid/device/AppUtdid;->access$100(Lcom/ta/audid/device/AppUtdid;)V

    .line 179
    invoke-static {}, Lcom/ta/audid/upload/AppsResponse;->getInstance()Lcom/ta/audid/upload/AppsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/upload/AppsResponse;->requestAppList()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/ta/audid/device/AppUtdid$1;->this$0:Lcom/ta/audid/device/AppUtdid;

    invoke-static {v1}, Lcom/ta/audid/device/AppUtdid;->access$000(Lcom/ta/audid/device/AppUtdid;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/audid/store/UtdidContentBuilder;->buildUtdidFp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {}, Lcom/ta/audid/store/UtdidContentSqliteStore;->getInstance()Lcom/ta/audid/store/UtdidContentSqliteStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ta/audid/store/UtdidContentSqliteStore;->insertStringList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 186
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, ""

    invoke-static {v0, v1}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
