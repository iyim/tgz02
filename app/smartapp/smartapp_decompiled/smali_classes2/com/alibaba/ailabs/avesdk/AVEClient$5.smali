.class Lcom/alibaba/ailabs/avesdk/AVEClient$5;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/view/Surface;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$5;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$5;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$5;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$5;->val$surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;)Z

    return-void
.end method
