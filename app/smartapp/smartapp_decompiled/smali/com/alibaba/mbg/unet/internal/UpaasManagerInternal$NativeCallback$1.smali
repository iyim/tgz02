.class Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$1;
.super Ljava/lang/Object;
.source "UpaasManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;->onVidFetch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$1;->this$0:Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    :try_start_0
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$100()Lcom/alibaba/mbg/upaas/UpaasManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/mbg/upaas/UpaasManager$Callback;->onVidFetched()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
