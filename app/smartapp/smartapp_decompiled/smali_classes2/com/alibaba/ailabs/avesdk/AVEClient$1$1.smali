.class Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient$1;->callback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$1;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient$1;Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/avesdk/AVEClient$1;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$100(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;->this$1:Lcom/alibaba/ailabs/avesdk/AVEClient$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/avesdk/AVEClient$1;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$100(Lcom/alibaba/ailabs/avesdk/AVEClient;)Lcom/alibaba/ailabs/acamera/IACameraCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;->val$s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/acamera/IACameraCallback;->callback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
