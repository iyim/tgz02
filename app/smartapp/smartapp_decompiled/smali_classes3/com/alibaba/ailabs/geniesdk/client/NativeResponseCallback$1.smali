.class Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;
.super Ljava/lang/Object;
.source "NativeResponseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->onResponseCallback(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

.field final synthetic val$code:I

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;IILjava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    iput p2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$sessionId:I

    iput p3, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$code:I

    iput-object p4, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->access$000(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->access$100(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->access$100(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$sessionId:I

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$code:I

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/ailabs/geniesdk/client/IResponseCallback;->onResponseCallback(IILjava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->access$200(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->access$200(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$sessionId:I

    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$code:I

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;->onResponseCallback(IILjava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->access$300(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "s"

    .line 68
    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$sessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "c"

    .line 69
    iget v2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$code:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "d"

    .line 72
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;->access$300(Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    invoke-interface {v1, v2, v0}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
