.class Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;
.super Ljava/lang/Object;
.source "ImageViewerDialog.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$000(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v2}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$000(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v2}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$000(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    invoke-virtual {v2}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->getImageView()Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v2}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$100(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$100(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, p1, :cond_2

    .line 75
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$200(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$100(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$300(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$500(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$1;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$400(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
