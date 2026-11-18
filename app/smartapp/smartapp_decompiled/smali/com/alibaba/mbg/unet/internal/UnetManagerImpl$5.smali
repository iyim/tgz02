.class Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$5;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->notifyActivityPauseOrDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$5;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getSdkManagerImpl()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeNotifyNetCacheBeforePauseOrDestroy(J)V

    return-void
.end method
