.class Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;
.super Ljava/lang/Object;
.source "UpaasManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;->onReceivedData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$pushAttr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;->this$0:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;->val$pushAttr:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;->this$0:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;

    iget-object v0, v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;->val$callback:Lcom/alibaba/mbg/upaas/RmbMessageCallback;

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;->val$pushAttr:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/mbg/upaas/RmbMessageCallback;->onReceivedData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
