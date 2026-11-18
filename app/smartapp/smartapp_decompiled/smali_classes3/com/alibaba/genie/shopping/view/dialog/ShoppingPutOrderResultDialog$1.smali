.class Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog$1;
.super Ljava/lang/Object;
.source "ShoppingPutOrderResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog$1;->this$0:Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/dialog/ShoppingPutOrderResultDialog;->dismiss()V

    return-void
.end method
