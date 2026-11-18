.class Lcom/alibaba/mbg/unet/internal/UploadDataStream$3;
.super Ljava/lang/Object;
.source "UploadDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UploadDataStream;->destroyAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$3;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$3;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$500(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataProvider;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
