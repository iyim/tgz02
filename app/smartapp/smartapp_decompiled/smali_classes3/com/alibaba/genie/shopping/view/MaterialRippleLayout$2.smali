.class Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$202(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Z)Z

    .line 300
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$202(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Z)Z

    .line 289
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$200(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$300(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$400(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Ljava/lang/Runnable;)V

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$2;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$500(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)V

    :cond_1
    return-void
.end method
