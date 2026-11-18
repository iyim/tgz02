.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$2;
.super Ljava/lang/Object;
.source "ImagePreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 213
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableClickClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 216
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImageClickListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImageClickListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$2;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;->onClick(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
