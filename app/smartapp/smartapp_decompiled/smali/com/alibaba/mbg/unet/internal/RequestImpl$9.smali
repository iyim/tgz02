.class Lcom/alibaba/mbg/unet/internal/RequestImpl$9;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;->onCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 0

    .line 1587
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$9;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1591
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$9;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$500(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/Request$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$9;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$9;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$400(Lcom/alibaba/mbg/unet/internal/RequestImpl;)Lcom/alibaba/mbg/unet/internal/ResponseImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/Request$Callback;->onCanceled(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
