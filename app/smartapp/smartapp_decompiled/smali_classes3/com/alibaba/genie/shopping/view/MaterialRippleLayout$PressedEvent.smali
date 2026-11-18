.class final Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PressedEvent"
.end annotation


# instance fields
.field private final event:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Landroid/view/MotionEvent;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->event:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$1202(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Z)Z

    .line 682
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 683
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 684
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 685
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$300(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PressedEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$1300(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)V

    :cond_0
    return-void
.end method
