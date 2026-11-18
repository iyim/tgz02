.class Lcom/taobao/uikit/immersive/TBFragmentFrameLayout$1;
.super Ljava/lang/Object;
.source "TBFragmentFrameLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/taobao/uikit/immersive/TBFragmentFrameLayout$1;->this$0:Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x14

    if-lt p1, p2, :cond_0

    .line 38
    iget-object p1, p0, Lcom/taobao/uikit/immersive/TBFragmentFrameLayout$1;->this$0:Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;

    invoke-virtual {p1}, Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;->requestApplyInsets()V

    goto :goto_0

    .line 39
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    .line 40
    iget-object p1, p0, Lcom/taobao/uikit/immersive/TBFragmentFrameLayout$1;->this$0:Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;

    invoke-virtual {p1}, Lcom/taobao/uikit/immersive/TBFragmentFrameLayout;->requestFitSystemWindows()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
