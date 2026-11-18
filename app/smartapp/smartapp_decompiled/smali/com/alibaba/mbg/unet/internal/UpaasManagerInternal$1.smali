.class final Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;
.super Ljava/lang/Object;
.source "UpaasManagerInternal.java"

# interfaces
.implements Lcom/alibaba/mbg/upaas/RmbMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->setRmbMessageCallback(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/mbg/upaas/RmbMessageCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/upaas/RmbMessageCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;->val$callback:Lcom/alibaba/mbg/upaas/RmbMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 97
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1$1;-><init>(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->postTaskToWorkThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
