.class Lcom/taobao/tao/log/upload/LogFileUploadManager$1;
.super Landroid/os/Handler;
.source "LogFileUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/log/upload/LogFileUploadManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;


# direct methods
.method constructor <init>(Lcom/taobao/tao/log/upload/LogFileUploadManager;Landroid/os/Looper;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$1;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$1;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {v0}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$200(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$1;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$300(Lcom/taobao/tao/log/upload/LogFileUploadManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$1;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$100(Lcom/taobao/tao/log/upload/LogFileUploadManager;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/taobao/tao/log/upload/LogFileUploadManager$1;->this$0:Lcom/taobao/tao/log/upload/LogFileUploadManager;

    invoke-static {p1}, Lcom/taobao/tao/log/upload/LogFileUploadManager;->access$000(Lcom/taobao/tao/log/upload/LogFileUploadManager;)V

    :goto_0
    return-void
.end method
