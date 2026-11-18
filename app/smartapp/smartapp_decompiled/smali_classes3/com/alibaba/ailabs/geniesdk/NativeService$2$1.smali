.class Lcom/alibaba/ailabs/geniesdk/NativeService$2$1;
.super Ljava/lang/Object;
.source "NativeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/NativeService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/geniesdk/NativeService$2;

.field final synthetic val$finalIsMute:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/NativeService$2;Z)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$2$1;->this$1:Lcom/alibaba/ailabs/geniesdk/NativeService$2;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$2$1;->val$finalIsMute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 421
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$2$1;->val$finalIsMute:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->enableWakeup(Z)V

    :cond_0
    return-void
.end method
