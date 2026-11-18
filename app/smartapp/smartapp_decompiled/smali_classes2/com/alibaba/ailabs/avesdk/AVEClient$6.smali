.class Lcom/alibaba/ailabs/avesdk/AVEClient$6;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;Landroid/view/Surface;I)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$6;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$6;->val$surface:Landroid/view/Surface;

    iput p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$6;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$6;->val$surface:Landroid/view/Surface;

    iget v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$6;->val$type:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;I)Z

    return-void
.end method
