.class Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$2;
.super Ljava/lang/Object;
.source "UpaasManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;->onUpaasStateChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;I)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$2;->this$0:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;

    iput p2, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    :try_start_0
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$100()Lcom/alibaba/mbg/upaas/UpaasManager$Callback;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$2;->val$state:I

    invoke-interface {v0, v1}, Lcom/alibaba/mbg/upaas/UpaasManager$Callback;->onUpaasStateChange(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
