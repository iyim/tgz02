.class Lcom/ulog/uploader/client/UploadClient$3;
.super Ljava/lang/Object;
.source "UploadClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ulog/uploader/client/UploadClient;->uploadULogInternal(Ljava/lang/String;Ljava/util/Date;Lcom/ulog/uploader/callback/ULogUploadCallback;IILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ulog/uploader/client/UploadClient;

.field final synthetic val$task:Lcom/ulog/uploader/client/UploadTask;


# direct methods
.method constructor <init>(Lcom/ulog/uploader/client/UploadClient;Lcom/ulog/uploader/client/UploadTask;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient$3;->this$0:Lcom/ulog/uploader/client/UploadClient;

    iput-object p2, p0, Lcom/ulog/uploader/client/UploadClient$3;->val$task:Lcom/ulog/uploader/client/UploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient$3;->val$task:Lcom/ulog/uploader/client/UploadTask;

    invoke-virtual {v0}, Lcom/ulog/uploader/client/UploadTask;->doTask()V

    return-void
.end method
