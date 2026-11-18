.class Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$1;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)V

    return-void
.end method

.method private clickAdapterView(Landroid/widget/AdapterView;)V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 662
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 666
    iget-object v3, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$200(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-nez v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {p0, v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->clickAdapterView(Landroid/widget/AdapterView;)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$1000(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$1100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->clickAdapterView(Landroid/widget/AdapterView;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$PerformClickEvent;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$100(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_3
    :goto_0
    return-void
.end method
