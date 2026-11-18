.class Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$2;
.super Ljava/lang/Object;
.source "AvePopView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->access$200(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->access$000(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0x2711

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameUtil;->start(Lcom/alibaba/ailabs/genie/assistant/imageframe/ImageFrameView;ILjava/util/ArrayList;Z)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/AvePopView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
