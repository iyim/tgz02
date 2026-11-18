.class Lcom/ulog/uploader/client/UploadClient$2;
.super Ljava/lang/Object;
.source "UploadClient.java"

# interfaces
.implements Lcom/ulog/uploader/client/UploadTask$TaskListener;


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


# direct methods
.method constructor <init>(Lcom/ulog/uploader/client/UploadClient;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/ulog/uploader/client/UploadClient$2;->this$0:Lcom/ulog/uploader/client/UploadClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinish(Lcom/ulog/uploader/client/UploadTask;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/ulog/uploader/client/UploadClient$2;->this$0:Lcom/ulog/uploader/client/UploadClient;

    invoke-static {v0, p1}, Lcom/ulog/uploader/client/UploadClient;->access$200(Lcom/ulog/uploader/client/UploadClient;Lcom/ulog/uploader/client/UploadTask;)V

    return-void
.end method
