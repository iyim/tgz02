.class Lcom/alibaba/mbg/unet/internal/RequestImpl$1;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;->start(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

.field final synthetic val$cb:Lcom/alibaba/mbg/unet/Request$Callback;

.field final synthetic val$e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl;Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;->val$e:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;->val$cb:Lcom/alibaba/mbg/unet/Request$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;->this$0:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;->val$e:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/RequestImpl$1;->val$cb:Lcom/alibaba/mbg/unet/Request$Callback;

    invoke-static {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->access$800(Lcom/alibaba/mbg/unet/internal/RequestImpl;Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V

    return-void
.end method
