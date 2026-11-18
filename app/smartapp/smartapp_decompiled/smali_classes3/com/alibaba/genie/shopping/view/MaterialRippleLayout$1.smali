.class Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$1;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
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

    .line 205
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$1;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$1;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
