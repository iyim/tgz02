.class Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;
.super Ljava/lang/Object;
.source "TBMaterialDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->checkIfListInitScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    if-ne v0, v1, :cond_6

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    if-gez v0, :cond_2

    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;

    iget v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$Builder;->selectedIndex:I

    goto :goto_1

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 108
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-ge v1, v0, :cond_6

    .line 111
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v3, v3, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    .line 113
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    const/4 v0, 0x0

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_2
    return-void
.end method
