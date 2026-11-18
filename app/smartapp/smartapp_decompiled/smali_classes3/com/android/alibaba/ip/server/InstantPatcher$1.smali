.class Lcom/android/alibaba/ip/server/InstantPatcher$1;
.super Ljava/lang/Object;
.source "InstantPatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alibaba/ip/server/InstantPatcher;->applyPatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alibaba/ip/server/InstantPatcher;

.field final synthetic val$fileState:Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

.field final synthetic val$patchResult:Lcom/android/alibaba/ip/common/PatchResult;


# direct methods
.method constructor <init>(Lcom/android/alibaba/ip/server/InstantPatcher;Lcom/android/alibaba/ip/server/InstantPatcher$FileState;Lcom/android/alibaba/ip/common/PatchResult;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->this$0:Lcom/android/alibaba/ip/server/InstantPatcher;

    iput-object p2, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$fileState:Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    iput-object p3, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$patchResult:Lcom/android/alibaba/ip/common/PatchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$fileState:Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    iget-object v0, v0, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$fileState:Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    iget-object v0, v0, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->this$0:Lcom/android/alibaba/ip/server/InstantPatcher;

    iget-object v1, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$fileState:Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    iget-object v2, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$patchResult:Lcom/android/alibaba/ip/common/PatchResult;

    invoke-static {v0, v1, v2}, Lcom/android/alibaba/ip/server/InstantPatcher;->access$000(Lcom/android/alibaba/ip/server/InstantPatcher;Lcom/android/alibaba/ip/server/InstantPatcher$FileState;Lcom/android/alibaba/ip/common/PatchResult;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$patchResult:Lcom/android/alibaba/ip/common/PatchResult;

    iget v0, v0, Lcom/android/alibaba/ip/common/PatchResult;->resCode:I

    const-string v1, "InstantPatcher"

    if-nez v0, :cond_1

    const-string v0, "patch success"

    .line 167
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->this$0:Lcom/android/alibaba/ip/server/InstantPatcher;

    invoke-virtual {v0}, Lcom/android/alibaba/ip/server/InstantPatcher;->purge()V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patch failed and clear patch:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/alibaba/ip/server/InstantPatcher$1;->val$fileState:Lcom/android/alibaba/ip/server/InstantPatcher$FileState;

    iget-object v2, v2, Lcom/android/alibaba/ip/server/InstantPatcher$FileState;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
