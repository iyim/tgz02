.class Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$4;
.super Ljava/lang/Object;
.source "FloatWindowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->showRecommendArea()V
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

    .line 147
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView$4;->this$0:Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->setRecommendState(Ljava/lang/String;)V

    return-void
.end method
