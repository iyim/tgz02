.class Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog$1;
.super Ljava/lang/Object;
.source "ShoppingProtocalDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->dismiss()V

    return-void
.end method
