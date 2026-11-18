.class Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;
.super Ljava/lang/Object;
.source "TBMaterialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;

.field final synthetic val$fScrollIndex:I


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;

    iput p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;->val$fScrollIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 120
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;->this$1:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1;->this$0:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$1$1;->val$fScrollIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
