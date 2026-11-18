.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 252
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImagePageChangeListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImagePageChangeListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageScrolled(IFI)V

    .line 241
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImagePageChangeListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImagePageChangeListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    .line 244
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 213
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImagePageChangeListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getBigImagePageChangeListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;->onPageSelected(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$002(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;I)I

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$102(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowOriginButton(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$302(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;Z)Z

    .line 221
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$300(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$100(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;Ljava/lang/String;)Z

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$600(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$string;->indicator:I

    .line 229
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$700(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$800(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-static {p1, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->access$902(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;I)I

    :cond_2
    return-void
.end method
