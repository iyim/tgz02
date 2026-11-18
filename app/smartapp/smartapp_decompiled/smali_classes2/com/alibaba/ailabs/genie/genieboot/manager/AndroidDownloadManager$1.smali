.class Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 95
    new-instance p2, Landroid/app/DownloadManager$Query;

    invoke-direct {p2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v0, 0x1

    .line 97
    new-array v1, v0, [J

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$000(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {p2, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/4 v1, 0x0

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$100(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Landroid/app/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "status"

    .line 102
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$200(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$200(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    move-result-object p2

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;->onFailed(Ljava/lang/Throwable;)V

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$500(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$200(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 116
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$200(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$300(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$400(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_3
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->access$500(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 136
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 132
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    .line 136
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_6

    .line 136
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 139
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :cond_6
    :goto_3
    throw p1
.end method
