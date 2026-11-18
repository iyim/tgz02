.class Lcom/ulog/uploader/client/UploadClient$1$1;
.super Ljava/lang/Object;
.source "UploadClient.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ulog/uploader/client/UploadClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ulog/uploader/client/UploadClient$1;


# direct methods
.method constructor <init>(Lcom/ulog/uploader/client/UploadClient$1;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient$1$1;->this$1:Lcom/ulog/uploader/client/UploadClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient$1$1;->this$1:Lcom/ulog/uploader/client/UploadClient$1;

    iget-object v0, v0, Lcom/ulog/uploader/client/UploadClient$1;->this$0:Lcom/ulog/uploader/client/UploadClient;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadClient;->access$100(Lcom/ulog/uploader/client/UploadClient;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/ulog/uploader/client/UploadClient$1$1$1;

    invoke-direct {v1, p0}, Lcom/ulog/uploader/client/UploadClient$1$1$1;-><init>(Lcom/ulog/uploader/client/UploadClient$1$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
