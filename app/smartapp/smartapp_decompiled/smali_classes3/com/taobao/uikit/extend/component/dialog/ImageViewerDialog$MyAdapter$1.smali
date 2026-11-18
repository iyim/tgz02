.class Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter$1;
.super Ljava/lang/Object;
.source "ImageViewerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter$1;->this$1:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter$1;->this$1:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;

    iget-object p1, p1, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->dismiss()V

    return-void
.end method
