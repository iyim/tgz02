.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->loadOriginImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/String;ZIJJ)V
    .locals 0

    const-string p4, "url"

    if-eqz p2, :cond_0

    .line 465
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 466
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 467
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 468
    iput p1, p2, Landroid/os/Message;->what:I

    .line 469
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 472
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$900(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)I

    move-result p2

    if-ne p3, p2, :cond_1

    return-void

    .line 475
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$902(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;I)I

    .line 476
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 477
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 478
    invoke-virtual {p5, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "progress"

    .line 479
    invoke-virtual {p5, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 480
    iput p1, p2, Landroid/os/Message;->what:I

    .line 481
    iput-object p5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
