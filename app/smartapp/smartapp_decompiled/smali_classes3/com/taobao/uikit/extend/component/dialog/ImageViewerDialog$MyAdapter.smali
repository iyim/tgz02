.class Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ImageViewerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 178
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$000(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$400(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$400(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$000(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->getImageView()Lcom/taobao/uikit/extend/feature/view/TZoomImageView;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v2}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$600(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-class v2, Lcom/taobao/uikit/feature/features/ImageSaveFeature;

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->findFeature(Ljava/lang/Class;)Lcom/taobao/uikit/feature/features/AbsFeature;

    move-result-object v2

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Lcom/taobao/uikit/feature/features/ImageSaveFeature;

    invoke-direct {v2}, Lcom/taobao/uikit/feature/features/ImageSaveFeature;-><init>()V

    .line 156
    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setLongClickable(Z)V

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v2}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$400(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setImageUrl(Ljava/lang/String;)V

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setTag(Ljava/lang/Object;)V

    .line 162
    new-instance v2, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter$1;

    invoke-direct {v2, p0}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter$1;-><init>(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;)V

    invoke-virtual {v1, v2}, Lcom/taobao/uikit/extend/feature/view/TZoomImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog$MyAdapter;->this$0:Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;

    invoke-static {v1}, Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;->access$000(Lcom/taobao/uikit/extend/component/dialog/ImageViewerDialog;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
