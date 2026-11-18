.class Lcom/ulog/uploader/client/UploadClient$1;
.super Ljava/lang/Object;
.source "UploadClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ulog/uploader/client/UploadClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/ulog/uploader/client/IULogUploader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ulog/uploader/client/UploadClient;


# direct methods
.method constructor <init>(Lcom/ulog/uploader/client/UploadClient;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient$1;->this$0:Lcom/ulog/uploader/client/UploadClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/ulog/uploader/client/UploadClient$1$1;

    invoke-direct {v1, p0}, Lcom/ulog/uploader/client/UploadClient$1$1;-><init>(Lcom/ulog/uploader/client/UploadClient$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method
