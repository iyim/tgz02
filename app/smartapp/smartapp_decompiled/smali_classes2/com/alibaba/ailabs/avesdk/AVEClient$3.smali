.class Lcom/alibaba/ailabs/avesdk/AVEClient$3;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$3;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$3;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$3;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1500(Lcom/alibaba/ailabs/avesdk/AVEClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->access$1600(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
