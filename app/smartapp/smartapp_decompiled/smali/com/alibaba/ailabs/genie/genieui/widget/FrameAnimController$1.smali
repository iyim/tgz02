.class Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;
.super Ljava/lang/Object;
.source "FrameAnimController.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadSuccess(Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$100(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLoadSuccess: load bitmap but stop"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 51
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$302(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
