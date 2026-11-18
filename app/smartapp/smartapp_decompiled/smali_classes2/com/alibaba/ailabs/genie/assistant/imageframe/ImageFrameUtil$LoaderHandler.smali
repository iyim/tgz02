.class public Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$LoaderHandler;
.super Landroid/os/Handler;
.source "ImageFrameUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;Landroid/os/Looper;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$LoaderHandler;->this$0:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    .line 349
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$LoaderHandler;->this$0:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->access$000(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;)V

    goto :goto_0

    .line 355
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil$LoaderHandler;->this$0:Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->access$100(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;)V

    :cond_1
    :goto_0
    return-void
.end method
