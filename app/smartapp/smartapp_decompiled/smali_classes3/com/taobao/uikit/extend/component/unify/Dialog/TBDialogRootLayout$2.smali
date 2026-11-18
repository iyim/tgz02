.class Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;
.super Ljava/lang/Object;
.source "TBDialogRootLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

.field final synthetic val$setForBottom:Z

.field final synthetic val$setForTop:Z

.field final synthetic val$vg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$setForTop:Z

    iput-boolean p4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$setForBottom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .line 511
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->access$400(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;)[Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 512
    invoke-virtual {v4}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 517
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 518
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    nop

    nop

    iget-boolean v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$setForTop:Z

    iget-boolean v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$setForBottom:Z

    invoke-static {v1, v0, v3, v4, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->access$500(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/webkit/WebView;ZZZ)V

    goto :goto_2

    .line 520
    :cond_2
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    iget-boolean v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$setForTop:Z

    iget-boolean v4, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->val$setForBottom:Z

    invoke-static {v1, v0, v3, v4, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->access$600(Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;Landroid/view/ViewGroup;ZZZ)V

    .line 522
    :goto_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout$2;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->invalidate()V

    return-void
.end method
