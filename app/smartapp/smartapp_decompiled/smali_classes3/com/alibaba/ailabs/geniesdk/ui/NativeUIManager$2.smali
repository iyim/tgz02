.class Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$2;
.super Ljava/lang/Object;
.source "NativeUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$2;->this$0:Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 173
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->updateUserData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
