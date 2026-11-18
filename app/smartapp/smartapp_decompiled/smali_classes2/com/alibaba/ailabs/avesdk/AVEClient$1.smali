.class Lcom/alibaba/ailabs/avesdk/AVEClient$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "AVEClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$000(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$1;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$000(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/avesdk/AVEClient$1$1;-><init>(Lcom/alibaba/ailabs/avesdk/AVEClient$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
