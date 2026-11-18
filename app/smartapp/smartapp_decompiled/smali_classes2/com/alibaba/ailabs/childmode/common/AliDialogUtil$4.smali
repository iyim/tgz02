.class Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$4;
.super Landroid/os/Handler;
.source "AliDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$4;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 237
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$4;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-static {v1, v0, p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$300(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;Ljava/lang/String;Z)V

    goto :goto_1

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil$4;->this$0:Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;->access$200(Lcom/alibaba/ailabs/childmode/common/AliDialogUtil;)V

    :goto_1
    return-void
.end method
