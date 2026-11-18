.class Lcom/alibaba/ailabs/systemui/view/StatusBarView$4;
.super Ljava/lang/Object;
.source "StatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/systemui/view/StatusBarView;->closeExpended()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$4;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/StatusBarView$4;->this$0:Lcom/alibaba/ailabs/systemui/view/StatusBarView;

    invoke-static {v0}, Lcom/alibaba/ailabs/systemui/view/StatusBarView;->access$700(Lcom/alibaba/ailabs/systemui/view/StatusBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
