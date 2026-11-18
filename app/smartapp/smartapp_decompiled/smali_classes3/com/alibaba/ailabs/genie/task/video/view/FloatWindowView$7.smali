.class Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$7;
.super Ljava/lang/Object;
.source "FloatWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->hideAllView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$7;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$7;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setVisibility(I)V

    return-void
.end method
