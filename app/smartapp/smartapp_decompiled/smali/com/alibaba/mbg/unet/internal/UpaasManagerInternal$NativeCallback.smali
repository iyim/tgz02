.class Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;
.super Ljava/lang/Object;
.source "UpaasManagerInternal.java"

# interfaces
.implements Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onLog(Ljava/lang/String;)V
    .locals 1

    .line 184
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$200()Lcom/alibaba/mbg/upaas/UpaasManager$Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$200()Lcom/alibaba/mbg/upaas/UpaasManager$Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/upaas/UpaasManager$Logger;->onLog(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onUpaasStateChange(I)V
    .locals 1

    .line 167
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$100()Lcom/alibaba/mbg/upaas/UpaasManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$2;-><init>(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;I)V

    .line 178
    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->postTaskToWorkThread(Ljava/lang/Runnable;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onVidFetch(Ljava/lang/String;)V
    .locals 1

    .line 144
    const-class v0, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$100()Lcom/alibaba/mbg/upaas/UpaasManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    new-instance p1, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$1;

    invoke-direct {p1, p0}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback$1;-><init>(Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal$NativeCallback;)V

    .line 158
    invoke-static {p1}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->postTaskToWorkThread(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$200()Lcom/alibaba/mbg/upaas/UpaasManager$Logger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 161
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/UpaasManagerInternal;->access$200()Lcom/alibaba/mbg/upaas/UpaasManager$Logger;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/mbg/upaas/UpaasManager$Logger;->onVidFetched()V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
