.class Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;
.super Ljava/lang/Object;
.source "MessageActivityP0.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$210(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)I

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$300(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->finish()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$400(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
