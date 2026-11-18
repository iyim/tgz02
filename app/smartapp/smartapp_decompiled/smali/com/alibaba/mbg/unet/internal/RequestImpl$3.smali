.class Lcom/alibaba/mbg/unet/internal/RequestImpl$3;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;->followRedirect()V
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

    .line 449
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$3;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$3;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$1200(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V

    return-void
.end method
