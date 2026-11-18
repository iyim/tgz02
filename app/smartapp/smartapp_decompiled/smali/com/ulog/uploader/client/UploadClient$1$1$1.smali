.class Lcom/ulog/uploader/client/UploadClient$1$1$1;
.super Ljava/lang/Object;
.source "UploadClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ulog/uploader/client/UploadClient$1$1;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ulog/uploader/client/UploadClient$1$1;


# direct methods
.method constructor <init>(Lcom/ulog/uploader/client/UploadClient$1$1;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient$1$1$1;->this$2:Lcom/ulog/uploader/client/UploadClient$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient$1$1$1;->this$2:Lcom/ulog/uploader/client/UploadClient$1$1;

    iget-object v0, v0, Lcom/ulog/uploader/client/UploadClient$1$1;->this$1:Lcom/ulog/uploader/client/UploadClient$1;

    iget-object v0, v0, Lcom/ulog/uploader/client/UploadClient$1;->this$0:Lcom/ulog/uploader/client/UploadClient;

    invoke-static {v0}, Lcom/ulog/uploader/client/UploadClient;->access$000(Lcom/ulog/uploader/client/UploadClient;)V

    return-void
.end method
